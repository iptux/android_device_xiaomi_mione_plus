# mione_bcm43xx.mk
# bcm43xx config for mione device
#
# Author: Alex.wang
# Create: 2013-04-06 17:54


# common bcm43xx
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# old mione device have bcm4329 chip (M1, M1CU, M1C1, M1youth)
WIFI_DRIVER_MODULE_NAME := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP  := "/system/etc/firmware/fw_bcm4329_apsta.bin"

# new mione device have bcm4330 chip (M1S, M1Syouth)
WIFI_DRIVER_MODULE_NAME_DHD := bcmdhd
WIFI_DRIVER_MODULE_PATH_DHD := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_ARG_DHD  := "firmware_path=/system/etc/firmware/fw_bcmdhd.bin nvram_path=/system/etc/firmware/4330nvram.txt"
WIFI_DRIVER_FW_PATH_STA_DHD := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP_DHD  := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# flag for xiaomi
BOARD_USE_XIAOMI_MIONE_WIFI := true

PRODUCT_PACKAGES += \
    libnetcmdiface

