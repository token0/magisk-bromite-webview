# Check if WebViewStub exists
if [ -f $UNITY/system/app/WebViewStub ]; then
   ui_print "   Incompatible WebViewStub folder found, aborting installation"
   abort
else
   ui_print "   WebViewStub folder not found, proceeding with standard installation"
fi

# Standard installation
if $IS64BIT; then
    ui_print "   Installing arm64 webview"
    cp_ch $TMPDIR/arm64_SystemWebView.apk $UNITY/system/app/webview/webview.apk
else
    ui_print "   Installing arm webview"
    cp_ch $TMPDIR/arm_SystemWebView.apk $UNITY/system/app/webview/webview.apk
fi    