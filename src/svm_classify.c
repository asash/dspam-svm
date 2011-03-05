#include "svm_classify.h"
#include "svm.h"
#include <stdio.h>

char * _home_filename(DSPAM_CTX * CTX, const char * filename)
{
    size_t home_len = strlen(CTX->home);
    char * full_filename = (char *)malloc(strlen(filename) + home_len + 2);
    strcpy(full_filename, CTX->home);
    full_filename[home_len] = '/';
    strcpy(full_filename  + home_len*(sizeof(char)) + 1, filename);
    return full_filename;
}

FILE * _open_file_in_home(DSPAM_CTX * CTX, const char * filename, const char * access)
{
    char *full_filename = _home_filename(CTX, filename);
    FILE * file = fopen(full_filename, access);
    free (full_filename);
    return file;
}

void _ds_svm_learn(DSPAM_CTX * CTX, ds_diction_t diction)
{
    FILE * model_file = _open_file_in_home(CTX, "raw_model", "a");
    if (CTX->classification == DSR_ISSPAM)
    {
        fprintf(model_file, "Spam ");
    }
    else if (CTX->classification == DSR_ISINNOCENT)
    {
        fprintf(model_file, "Innocent ");
    }
    fprintf(model_file, "%s ", CTX->username);
    ds_cursor_t cursor  = ds_diction_cursor(diction);
    ds_term_t term;
    while (term = ds_diction_next(cursor))
    {
        fprintf(model_file, "%llu:%llu ", term->key, term->frequency);
    }
    fprintf(model_file, "\n");
    fclose(model_file);
}

void _ds_svm_classify(DSPAM_CTX * CTX, ds_diction_t diction)
{
    FILE * model_index_file = _open_file_in_home(CTX, "model_index", "r");
    int users_count;
    fscanf(model_index_file, "%d\n", &users_count);
    int  uid = 0;
    int i;
    for (i = 0; i < users_count; ++i)
    {
        char username[32];
        int current_uid;
        fscanf(model_index_file, "%s %d\n", username, &current_uid);
        if (! strcmp(CTX->username, username))
        {
            uid = current_uid;
        }
    }
    LOGDEBUG("asash: found uid: %d", uid);
    int dimention;
    fscanf(model_index_file, "%d\n", &dimention);
    LOGDEBUG("asash: dimention is %u", dimention);
    struct svm_node* vector =
        (struct svm_node *) malloc((users_count+dimention) * sizeof (struct svm_node));
    vector[users_count + dimention].index = -1;
    vector[0].index = 0;
    vector[0].value = 1;
    LOGDEBUG("asash: wtf! %d %f", vector[0].index, vector[0].value);
   for (i = 0; i < users_count; ++i)
    {
        vector[i].index = i;
        if(i == uid)
        {
            vector[i].value = 1;
        }
        else
        {
            vector[i].value = 0;
        }
    }
    int j=0;
    for (j = 0; j <dimention; ++j)
    {
        vector[users_count + j].index = users_count + j;
        ds_key_t key;
        fscanf(model_index_file, "%llu\n", &key);
        ds_term_t term = ds_diction_find(diction, key);
        int freq = 0;
        while(term && term->key == key){
            freq += term->frequency;
            term = term->next;
        }
        vector[users_count + j].value = freq;
        if (freq > 0)
            LOGDEBUG("asash: inserted %llu: %d, %d, %f", key, freq, vector[users_count +j].index, vector[users_count +j].value);
    }
    fclose(model_index_file);
    for(i = 0; i < users_count + dimention +1 ; ++i)
    {
        LOGDEBUG("asash: index-value %d:%f", vector[i].index, vector[i].value);
    }
    char * model_filename = _home_filename(CTX, "model");
    struct svm_model * model = svm_load_model(model_filename);
/*    int nr_class = svm_get_nr_class(model);*/
    /*LOGDEBUG("asash: model contains %d classes", nr_class);*/
    free(model_filename);
  /*  double * prob_estimates;*/
    /*prob_estimates = (double *) malloc(nr_class*sizeof(double));*/
    double prob = svm_predict(model, vector);
    free(vector);
    LOGDEBUG("asash: svm prediction is %f", prob);
    CTX->probability = prob;
    if (CTX->probability >= 0.7)
    {
        CTX->result = DSR_ISSPAM;
    }
    else
    {
        CTX->result = DSR_ISINNOCENT;
    }
}

int ds_svm_operate(DSPAM_CTX * CTX, ds_diction_t diction)
{
    if (CTX->classification == DSR_ISSPAM || CTX->classification == DSR_ISINNOCENT)
    {
        _ds_svm_learn(CTX, diction);
    }
    else
    {
        _ds_svm_classify(CTX, diction);
    }

    return CTX->result;
}
