LOCAL_PATH := $(call my-dir)
LOCAL_FIRMWARES := RT2860STA/RT2860STA.dat
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/dellmini_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/dellmini_defconfig

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/BetterTerm312pro_x86.apk:system/app/BetterTermPro_x86.apk \
    $(LOCAL_PATH)/proprietary/libExec.so:system/lib/libExec.so

include $(GENERIC_X86_ANDROID_MK)
