# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mione_plus

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# old audio files
include frameworks/base/data/sounds/OldAudio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Ring_Digital_02.ogg \
    ro.config.notification_sound=F1_New_SMS.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg

PRODUCT_PACKAGES += \
  Mms

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione_plus/mione_plus.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mione_plus
PRODUCT_NAME := cm_mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI-ONE Plus
PRODUCT_MANUFACTURER := Xiaomi

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_DISPLAY_ID=JZO54K \
	BUILD_FINGERPRINT="Xiaomi/mione_plus/mione_plus:4.1.2/JZO54K/299849:user/release-keys" \
	PRIVATE_BUILD_DESC="mione_plus-user 4.1.2 JZO54K 299849 release-keys" \
	BUILD_NUMBER=299849
