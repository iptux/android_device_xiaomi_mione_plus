# patches needed to build a flashable ROM for xiaomi mione

* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione

apply patches
-------------

Just run script `./applypatch.sh`.
After patches applied, don't run this script again.


generate patches
----------------

run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path
