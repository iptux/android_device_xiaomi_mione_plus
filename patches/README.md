# patches needed to build a flashable ROM for xiaomi mione

* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `less_LatinIME_dictionaries.patch`: make ROM smaller
* `less_pico_language.patch`: make ROM smaller
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione
  ,
  this patch revert commit https://github.com/CyanogenMod/android_system_netd/commit/7e9eb7b48345af69283afa7ca58d3be0a329931b
  and https://github.com/CyanogenMod/android_frameworks_base/commit/90542758d4fef2e5ff8badaf3b40c2a227fbfc47


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.

