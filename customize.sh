#!/sbin/sh

ui_print ""
ui_print "***********************************************************"
ui_print "*                                                         *"
ui_print "*         YouTube Vanced Magisk Version Installer         *"
ui_print "*                               $MODVER                   *"
ui_print "*                                                         *"
ui_print "*---------------------------------------------------------*"
ui_print "*                                                         *"
ui_print "*        This module will install Youtube Vanced          *"
ui_print "*                                                         *"
ui_print "***********************************************************"

if [ $IS64BIT ]; then
  echo "**************************************************************"
  echo "*       This module is for old 'legacy' arm systems          *"
  echo "*    Please consider using 'Default' arm64 version instead   *"
  echo "**************************************************************"
fi

REPLACE="
/system/app/YouTube
"

ui_print "- Extracting module files..."
script_install

ui_print "- Setting Permissions"
set_perm_recursive $MODPATH/system/app/YouTube/base.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/config-en.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.am.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ar.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.armeabi-v7a.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.bg.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.bn.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.bs.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ca.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.cs.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.da.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.de.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.el.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.es.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.et.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.eu.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.fa.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.fi.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.fr.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.gl.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.gu.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.hi.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.hr.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.hu.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.hy.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.in.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.is.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.it.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.iw.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ja.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ka.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.kk.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.km.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.kn.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ko.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.lo.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.lt.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.lv.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.mdpi.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.mk.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ml.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.mn.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.mr.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ms.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.my.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.nb.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ne.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.nl.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.pa.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.pl.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.pt.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ro.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ru.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.si.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sk.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sl.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sq.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sr.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sv.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.sw.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ta.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.te.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.th.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.tl.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.tr.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.uk.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.ur.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.vi.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.zh.apk 0 0 0755 0644
set_perm_recursive $MODPATH/system/app/YouTube/split_config.zu.apk 0 0 0755 0644

ui_print "- Done"
ui_print "- Vanced has been installed Successfully"