# patches needed to build a flashable ROM for xiaomi mione

* `com.android.phone_FC_on_hang_up.patch`: see [commit][]
* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `less_LatinIME_dictionaries.patch`: make ROM smaller
* `less_pico_language.patch`: make ROM smaller
* `xiaomi_mione_camera.patch`: needed by mione's camera HAL
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.

[commit]: <https://github.com/iptux/android_device_xiaomi_mione_plus/commit/37f8c065ca72ad7f302f631b2b44d9f2562216f9#commitcomment-3014856>

