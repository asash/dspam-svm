/* $Id: config_api.c,v 1.1 2004/12/03 01:30:32 jonz Exp $ */

/*
 DSPAM
 COPYRIGHT (C) 2002-2004 NETWORK DWEEBS CORPORATION

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/

#ifdef HAVE_CONFIG_H
#include <auto-config.h>
#endif

#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#ifdef HAVE_STRINGS_H
#include <strings.h>
#endif
#include <string.h>

#include "config_api.h"
#include "config_shared.h"
#include "read_config.h"
#include "config.h"
#include "error.h"
#include "language.h"
#include "libdspam.h"
#include "pref.h"
#include "util.h"

int set_libdspam_attributes(DSPAM_CTX *CTX) {
  attribute_t *t;
  int i, ret = 0;
  char *profile;

  t = _ds_find_attribute(agent_config, "IgnoreHeader");
  while(t != NULL) {
    ret += dspam_addattribute(CTX, t->key, t->value);
    t = t->next;
  }

  profile = _ds_read_attribute(agent_config, "DefaultProfile");

  for(i=0;agent_config[i];i++) {
    t = agent_config[i];

    while(t) {

      if (!strncasecmp(t->key, "MySQL", 5) ||
          !strncasecmp(t->key, "PgSQL", 5) ||
          !strncasecmp(t->key, "Ora", 3)   ||
          !strncasecmp(t->key, "SQLite", 6) ||
          !strcasecmp(t->key, "LocalMX"))
      {

        if (profile == NULL || profile[0] == 0)
        {
          ret += dspam_addattribute(CTX, t->key, t->value);
        }
        else if (strchr(t->key, '.'))
        {

          if (!strcasecmp((strchr(t->key, '.')+1), profile)) {
            char *x = strdup(t->key);
            char *y = strchr(x, '.');
            y[0] = 0;

            ret += dspam_addattribute(CTX, x, t->value);
            free(x);
          }
        }
      }
      t = t->next;
    }
  }

  ret += configure_algorithms(CTX);
  return ret;
}
