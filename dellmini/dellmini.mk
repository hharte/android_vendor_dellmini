PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

# How this product is called in the build system
PRODUCT_NAME := dellmini

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := dell
PRODUCT_DEVICE := dellmini

# include vendor/google/passion/device_passion.mk

# The user-visible product name
PRODUCT_MODEL := Dell Mini
PRODUCT_MANUFACTURER := Dell

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage2.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES

# This is a high DPI device, so add the hdpi pseudo-locale
# PRODUCT_LOCALES += hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html
