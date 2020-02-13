#!/sbin/sh

ui_print ""
ui_print "***********************************************************"
ui_print "*                                                         *"
ui_print "*         YouTube Vanced Magisk Version Installer         *"
ui_print "*                                                         *"
ui_print "*                                                         *"
ui_print "*---------------------------------------------------------*"
ui_print "*                                                         *"
ui_print "*  Make sure to have Signature Verification disabled *"
ui_print "*                                                         *"
ui_print "***********************************************************"

ui_print "- Detected $ARCH system"
ui_print "- Extracting libraries for $ARCH..."
unzip -o "$ZIPFILE" -d $TMPDIR >&2
cp -R $TMPDIR/libs/$ARCH $MODPATH/system/app/YouTube/lib

ui_print "- Installing Vanced APKs..."
script_install

ui_print "- Done"
ui_print "- Vanced has been installed Successfully"