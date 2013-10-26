# patches needed to build a flashable ROM for xiaomi mione

* `audio-caf-build-error.patch`: fix a build error in hardware/qcom/audio-caf/
* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `smaller_rom.patch`: make ROM smaller
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.

