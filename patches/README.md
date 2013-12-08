# patches needed to build a flashable ROM for xiaomi mione

* `audio-caf-build-error.patch`: fix a build error in hardware/qcom/audio-caf/
* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `fix-android.process.media-crash.patch`: fix android.process.media crash on some SD card
* `fix-settings-fc.patch`: fix Settings force close
* `no_selinux.patch`: we don't have selinux
* `xiaomi_mione_camera.patch`: needed by mione's camera HAL
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione
* `wext_combo_scan.patch`: use combo scan for wext wifi driver
* `cm-11.0_softap.patch`: use softap in cm-11.0
  ,
  this patch revert commit https://github.com/CyanogenMod/android_system_netd/commit/7e9eb7b48345af69283afa7ca58d3be0a329931b
  and https://github.com/CyanogenMod/android_frameworks_base/commit/90542758d4fef2e5ff8badaf3b40c2a227fbfc47


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.


generate patches
----------------

run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path

