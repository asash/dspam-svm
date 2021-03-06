#!/usr/bin/perl

# $Id: strings.pl,v 1.00 2009/08/18 00:41:12 sbajic Exp $
# DSPAM
# COPYRIGHT (C) DSPAM PROJECT 2002-2009
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 2
# of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

$LANG{'empty'}				= "&#1055;&#1091;&#1089;&#1090;&#1086;";
$LANG{'admin_suite'}			= "&#1040;&#1076;&#1084;&#1080;&#1085;&#1080;&#1089;&#1090;&#1088;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077;";
$LANG{'alert_name'}			= "&#1053;&#1072;&#1079;&#1074;&#1072;&#1085;&#1080;&#1077; &#1087;&#1088;&#1077;&#1076;&#1091;&#1087;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103;";
$LANG{'remove_alert'}			= "&#1059;&#1076;&#1072;&#1083;&#1080;&#1090;&#1100;";
$LANG{'user_form'}			= "&#1057;&#1090;&#1072;&#1090;&#1080;&#1089;&#1090;&#1080;&#1095;&#1077;&#1089;&#1082;&#1080;&#1081; &#1089;&#1087;&#1072;&#1084;-&#1092;&#1080;&#1083;&#1100;&#1090;&#1088; &#1076;&#1083;&#1103;";
$LANG{'user_form_submit'}		= "&#1048;&#1079;&#1084;&#1077;&#1085;&#1080;&#1090;&#1100;";

$LANG{'option_disable_filtering'}	= "&#1054;&#1090;&#1082;&#1083;&#1102;&#1095;&#1080;&#1090;&#1100; &#1092;&#1080;&#1083;&#1100;&#1090;&#1088;";
$LANG{'option_enable_filtering'}	= "&#1042;&#1082;&#1083;&#1102;&#1095;&#1080;&#1090;&#1100; &#1092;&#1080;&#1083;&#1100;&#1090;&#1088;";

$LANG{'quarantine_rating'}		= "&#1056;&#1077;&#1081;&#1090;&#1080;&#1085;&#1075;";
$LANG{'quarantine_date'}		= "&#1044;&#1072;&#1090;&#1072;";
$LANG{'quarantine_from'}		= "&#1054;&#1090;&#1087;&#1088;&#1072;&#1074;&#1080;&#1090;&#1077;&#1083;&#1100;";
$LANG{'quarantine_subject'}		= "&#1058;&#1077;&#1084;&#1072;";

$LANG{'history_show'}			= "&#1055;&#1086;&#1082;&#1072;&#1079;&#1072;&#1090;&#1100;";
$LANG{'history_show_all'}		= "&#1074;&#1089;&#1077;";
$LANG{'history_show_spam'}		= "&#1089;&#1087;&#1072;&#1084;";
$LANG{'history_show_innocent'}		= "&#1093;&#1086;&#1088;&#1086;&#1096;&#1080;&#1077;";
$LANG{'history_show_whitelisted'}	= "&#1074; &#1073;&#1077;&#1083;&#1086;&#1084; &#1089;&#1087;&#1080;&#1089;&#1082;&#1077;";
$LANG{'history_retrain_as_spam'}	= "&#1089;&#1087;&#1072;&#1084;";
$LANG{'history_retrain_as_innocent'}	= "&#1093;&#1086;&#1088;&#1086;&#1096;&#1077;&#1077;";
$LANG{'history_retrain_as'}		= "&#1050;&#1072;&#1082;";
$LANG{'history_retrain_undo'}		= "&#1054;&#1090;&#1084;&#1077;&#1085;&#1072;";
$LANG{'history_retrained'}		= "&#1055;&#1077;&#1088;&#1077;&#1091;&#1095;&#1077;&#1085;&#1086;";
$LANG{'history_label_resend'}		= "&#1055;&#1086;&#1074;&#1090;&#1086;&#1088;&#1085;&#1086;";
$LANG{'history_label_whitelist'}	= "&#1042; &#1073;&#1077;&#1083;&#1086;&#1084; &#1089;&#1087;&#1080;&#1089;&#1082;&#1077;";
$LANG{'history_label_spam'}		= "&#1057;&#1087;&#1072;&#1084;";
$LANG{'history_label_innocent'}		= "&#1061;&#1086;&#1088;&#1086;&#1096;&#1077;&#1077;";
$LANG{'history_label_miss'}		= "&#1055;&#1088;&#1086;&#1087;&#1091;&#1097;&#1077;&#1085;&#1086;";
$LANG{'history_label_virus'}		= "&#1042;&#1080;&#1088;&#1091;&#1089;";
$LANG{'history_label_RBL'}		= "RBL";
$LANG{'history_label_block'}		= "&#1047;&#1072;&#1073;&#1083;&#1086;&#1082;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1086;";
$LANG{'history_label_corpus'}		= "&#1055;&#1086;&#1076;&#1073;&#1086;&#1088;&#1082;&#1072;";
$LANG{'history_label_unknown'}		= "&#1053;&#1045;&#1048;&#1047;&#1042;";
$LANG{'history_label_error'}		= "&#1054;&#1096;&#1080;&#1073;&#1082;&#1072;";

$LANG{'error_no_historic'}		= "&#1053;&#1077;&#1090; &#1076;&#1072;&#1085;&#1085;&#1099;&#1093; &#1087;&#1086; &#1080;&#1089;&#1090;&#1086;&#1088;&#1080;&#1080; &#1087;&#1080;&#1089;&#1077;&#1084;.";
$LANG{'error_cannot_open_log'}		= "&#1053;&#1077;&#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086; &#1086;&#1090;&#1082;&#1088;&#1099;&#1090;&#1100; &#1078;&#1091;&#1088;&#1085;&#1072;&#1083;&#1100;&#1085;&#1099;&#1081; &#1092;&#1072;&#1081;&#1083;";
$LANG{'error_no_identity'}		= "&#1057;&#1080;&#1089;&#1090;&#1077;&#1084;&#1085;&#1072;&#1103; &#1086;&#1096;&#1080;&#1073;&#1082;&#1072;. &#1053;&#1077;&#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086; &#1086;&#1087;&#1088;&#1077;&#1076;&#1077;&#1083;&#1080;&#1090;&#1100; &#1087;&#1086;&#1083;&#1100;&#1079;&#1086;&#1074;&#1072;&#1090;&#1077;&#1083;&#1103;.";
$LANG{'error_invalid_command'}		= "&#1053;&#1077;&#1087;&#1088;&#1072;&#1074;&#1080;&#1083;&#1100;&#1085;&#1072;&#1103; &#1082;&#1086;&#1084;&#1072;&#1085;&#1076;&#1072;";
$LANG{'error_cannot_write_prefs'}	= "&#1053;&#1077;&#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086; &#1079;&#1072;&#1087;&#1080;&#1089;&#1072;&#1090;&#1100; &#1085;&#1072;&#1089;&#1090;&#1088;&#1086;&#1081;&#1082;&#1080;";
$LANG{'error_no_sigid'}			= "&#1053;&#1077; &#1091;&#1082;&#1072;&#1079;&#1072;&#1085; ID &#1087;&#1080;&#1089;&#1100;&#1084;&#1072;";
$LANG{'error_no_alert_specified'}	= "&#1053;&#1077; &#1091;&#1082;&#1072;&#1079;&#1072;&#1085;&#1086; &#1087;&#1088;&#1077;&#1076;&#1091;&#1087;&#1088;&#1077;&#1078;&#1076;&#1077;&#1085;&#1080;&#1103;.";
$LANG{'error_message_part1'}		= "&#1055;&#1088;&#1080; &#1086;&#1073;&#1088;&#1072;&#1073;&#1086;&#1090;&#1082;&#1077; &#1042;&#1072;&#1096;&#1077;&#1075;&#1086; &#1079;&#1072;&#1087;&#1088;&#1086;&#1089;&#1072; &#1074;&#1086;&#1079;&#1085;&#1080;&#1082;&#1083;&#1072; &#1089;&#1083;&#1077;&#1076;&#1091;&#1102;&#1097;&#1072;&#1103; &#1086;&#1096;&#1080;&#1073;&#1082;&#1072;:";
$LANG{'error_message_part2'}		= "&#1045;&#1089;&#1083;&#1080; &#1087;&#1088;&#1086;&#1073;&#1083;&#1077;&#1084;&#1072; &#1089;&#1086;&#1093;&#1088;&#1072;&#1085;&#1103;&#1077;&#1090;&#1089;&#1103;, &#1086;&#1073;&#1088;&#1072;&#1090;&#1080;&#1090;&#1077;&#1089;&#1100;, &#1087;&#1086;&#1078;&#1072;&#1083;&#1091;&#1081;&#1089;&#1090;&#1072;, &#1082; &#1072;&#1076;&#1084;&#1080;&#1085;&#1080;&#1089;&#1090;&#1088;&#1072;&#1090;&#1086;&#1088;&#1091;";
$LANG{'error_filesystem_scale'}		= "&#1053;&#1077;&#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086; &#1086;&#1087;&#1088;&#1077;&#1076;&#1077;&#1083;&#1080;&#1090;&#1100; &#1084;&#1072;&#1089;&#1096;&#1090;&#1072;&#1073;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077; &#1092;&#1072;&#1081;&#1083;&#1086;&#1074;&#1086;&#1081; &#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1099;";
$LANG{'error_load_default_prefs'}	= "&#1053;&#1077;&#1074;&#1086;&#1079;&#1084;&#1086;&#1078;&#1085;&#1086; &#1079;&#1072;&#1075;&#1088;&#1091;&#1079;&#1080;&#1090;&#1100; &#1085;&#1072;&#1089;&#1090;&#1088;&#1086;&#1081;&#1082;&#1080; &#1087;&#1086; &#1091;&#1084;&#1086;&#1083;&#1095;&#1072;&#1085;&#1080;&#1102;";
$LANG{'error_access_denied'}		= "&#1044;&#1086;&#1089;&#1090;&#1091;&#1087; &#1079;&#1072;&#1082;&#1088;&#1099;&#1090;";

$LANG{'graph_legend_nb_messages'}	= "&#1050;&#1086;&#1083;&#1080;&#1095;&#1077;&#1089;&#1090;&#1074;&#1086; &#1087;&#1080;&#1089;&#1077;&#1084;";
$LANG{'graph_legend_spam'}		= "&#1057;&#1087;&#1072;&#1084;";
$LANG{'graph_legend_good'}		= "&#1061;&#1086;&#1088;&#1086;&#1096;&#1080;&#1077;";
$LANG{'graph_legend_inoculations'}	= "&#1048;&#1085;&#1098;&#1077;&#1082;&#1094;&#1080;&#1080;";
$LANG{'graph_legend_corpusfeds'}	= "&#1055;&#1086;&#1076;&#1073;&#1086;&#1088;&#1082;&#1080;";
$LANG{'graph_legend_virus'}		= "&#1042;&#1080;&#1088;&#1091;&#1089;";
$LANG{'graph_legend_RBL'}		= "&#1042; &#1095;&#1077;&#1088;&#1085;&#1086;&#1084; &#1089;&#1087;&#1080;&#1089;&#1082;&#1077; (RBL)";
$LANG{'graph_legend_blocklisted'}	= "&#1047;&#1072;&#1073;&#1083;&#1086;&#1082;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1086;";
$LANG{'graph_legend_whitelisted'}	= "&#1042; &#1073;&#1077;&#1083;&#1086;&#1084; &#1089;&#1087;&#1080;&#1089;&#1082;&#1077;";
$LANG{'graph_legend_nonspam'}		= "&#1053;&#1077; &#1089;&#1087;&#1072;&#1084;";
$LANG{'graph_legend_spam_misses'}	= "&#1055;&#1088;&#1086;&#1087;&#1091;&#1097;&#1077;&#1085;&#1086; &#1089;&#1087;&#1072;&#1084;&#1072;";
$LANG{'graph_legend_falsepositives'}	= "&#1051;&#1086;&#1078;&#1085;&#1099;&#1077; &#1089;&#1088;&#1072;&#1073;&#1072;&#1090;&#1099;&#1074;&#1072;&#1085;&#1080;&#1103;";

1;
