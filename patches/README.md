# patches needed to build a flashable ROM for xiaomi mione

* `audio-caf-build-error.patch`: fix a build error in hardware/qcom/audio-caf/
* `cpu1_governor.patch`: support CPU governor setting on cpu1
* `fix-settings-fc.patch`: fix Settings force close
* `no_selinux.patch`: we don't have selinux
* `media-video-recording.patch`: this patch make video recording working. (Team-Hydra will fix this soon)
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione


apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.


generate patches
----------------

run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path

