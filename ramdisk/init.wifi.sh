wifi_module=`cat /sys/wifi_properties/wifi_module`
case "$wifi_module" in
               "wifi_module=4330")
        setprop ro.kernel.wifi_module 4330
esac
