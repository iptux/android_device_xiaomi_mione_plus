# patches needed to build a flashable ROM for xiaomi mione

* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `less_LatinIME_dictionaries.patch`: make ROM smaller
* `less_pico_language.patch`: make ROM smaller
* `xiaomi_mione_camera.patch`: needed by mione's camera HAL
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.

