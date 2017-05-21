$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sony/tetra/tetra-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/tetra/overlay

LOCAL_PATH := device/sony/tetra

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

# etc/permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
        frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Proprietary etc/permissions
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/permissions/clockwork-system.xml:system/etc/permissions/clockwork-system.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/com.google.android.wearable.xml:system/etc/permissions/com.google.android.wearable.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/com.sonymobile.watch.xml:system/etc/permissions/com.sonymobile.watch.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/gps.xml:system/etc/permissions/gps.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/watch_features.xml:system/etc/permissions/watch_features.xml \
        $(LOCAL_PATH)/proprietary/etc/permissions/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml

# Proprietary etc/wifi
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
        $(LOCAL_PATH)/proprietary/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
        $(LOCAL_PATH)/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        $(LOCAL_PATH)/proprietary/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Proprietary etc
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/etc/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
        $(LOCAL_PATH)/proprietary/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
        $(LOCAL_PATH)/proprietary/etc/gps/gps.conf:system/etc/gps/gps.conf \
        $(LOCAL_PATH)/proprietary/etc/asound.conf:system/etc/asound.conf \
        $(LOCAL_PATH)/proprietary/etc/debug_menu.json:system/etc/debug_menu.json \
        $(LOCAL_PATH)/proprietary/etc/install-recovery.sh:system/etc/install-recovery.sh \
        $(LOCAL_PATH)/proprietary/etc/resolv.conf:system/etc/resolv.conf \
        $(LOCAL_PATH)/proprietary/etc/sensors.conf:system/etc/sensors.conf \
        $(LOCAL_PATH)/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Proprietary system/fonts
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/fonts/SST-Bold.ttf:system/fonts/SST-Bold.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-BoldItalic.ttf:system/fonts/SST-BoldItalic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Condensed.ttf:system/fonts/SST-Condensed.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-CondensedBd.ttf:system/fonts/SST-CondensedBd.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Heavy.ttf:system/fonts/SST-Heavy.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-HeavyItalic.ttf:system/fonts/SST-HeavyItalic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Italic.ttf:system/fonts/SST-Italic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Light.ttf:system/fonts/SST-Light.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-LightItalic.ttf:system/fonts/SST-LightItalic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Medium.ttf:system/fonts/SST-Medium.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-MediumItalic.ttf:system/fonts/SST-MediumItalic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-Roman.ttf:system/fonts/SST-Roman.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-UltraLight.ttf:system/fonts/SST-UltraLight.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SST-UltraLightItalic.ttf:system/fonts/SST-UltraLightItalic.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SSTTypewriter-Bd.ttf:system/fonts/SSTTypewriter-Bd.ttf \
        $(LOCAL_PATH)/proprietary/fonts/SSTTypewriter-Rg.ttf:system/fonts/SSTTypewriter-Rg.ttf

# Proprietary system/framework
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/framework/clockwork-system.jar:system/framework/clockwork-system.jar \
        $(LOCAL_PATH)/proprietary/framework/com.google.android.wearable.jar:system/framework/com.google.android.wearable.jar
#        $(LOCAL_PATH)/proprietary/framework/nullwebview.jar:system/framework/nullwebview.jar

# Proprietary system/sony
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_01.png:system/sony/chargemon/data/charging_animation_01.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_02.png:system/sony/chargemon/data/charging_animation_02.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_03.png:system/sony/chargemon/data/charging_animation_03.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_04.png:system/sony/chargemon/data/charging_animation_04.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_05.png:system/sony/chargemon/data/charging_animation_05.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_06.png:system/sony/chargemon/data/charging_animation_06.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/charging_animation_07.png:system/sony/chargemon/data/charging_animation_07.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_01.png:system/sony/chargemon/data/non-charging_animation_01.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_02.png:system/sony/chargemon/data/non-charging_animation_02.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_03.png:system/sony/chargemon/data/non-charging_animation_03.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_04.png:system/sony/chargemon/data/non-charging_animation_04.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_05.png:system/sony/chargemon/data/non-charging_animation_05.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_06.png:system/sony/chargemon/data/non-charging_animation_06.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/non-charging_animation_07.png:system/sony/chargemon/data/non-charging_animation_07.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/0.png:system/sony/chargemon/data/watchface_0/0.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/1.png:system/sony/chargemon/data/watchface_0/1.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/2.png:system/sony/chargemon/data/watchface_0/2.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/3.png:system/sony/chargemon/data/watchface_0/3.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/4.png:system/sony/chargemon/data/watchface_0/4.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/5.png:system/sony/chargemon/data/watchface_0/5.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/6.png:system/sony/chargemon/data/watchface_0/6.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/7.png:system/sony/chargemon/data/watchface_0/7.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/8.png:system/sony/chargemon/data/watchface_0/8.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/9.png:system/sony/chargemon/data/watchface_0/9.png \
        $(LOCAL_PATH)/proprietary/sony/chargemon/data/watchface_0/colon.png:system/sony/chargemon/data/watchface_0/colon.png

# Proprietary system/usr
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/usr/idc/synaptics_dsx.idc:system/usr/idc/synaptics_dsx.idc \
        $(LOCAL_PATH)/proprietary/usr/keylayout/bcmpmu_on.kcm:system/usr/keylayout/bcmpmu_on.kcm \
        $(LOCAL_PATH)/proprietary/usr/keylayout/bcmpmu_on.kl:system/usr/keylayout/bcmpmu_on.kl \
        $(LOCAL_PATH)/proprietary/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

# Proprietary vendor
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/vendor/firmware/BCM43341B0_002.001.014.0122.0181.hcd:system/vendor/firmware/BCM43341B0_002.001.014.0122.0181.hcd \
        $(LOCAL_PATH)/proprietary/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
        $(LOCAL_PATH)/proprietary/vendor/lib/libbt-vendor.so:system/vendor/lib/libbt-vendor.so

# Proprietary system/bin
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/bin/capi2test:system/bin/capi2test \
        $(LOCAL_PATH)/proprietary/bin/chargemon:system/bin/chargemon \
        $(LOCAL_PATH)/proprietary/bin/ClockworkProxy:system/bin/ClockworkProxy \
        $(LOCAL_PATH)/proprietary/bin/find-device:system/bin/find-device \
        $(LOCAL_PATH)/proprietary/bin/glgps:system/bin/glgps \
        $(LOCAL_PATH)/proprietary/bin/install-recovery.sh:system/bin/install-recovery.sh \
        $(LOCAL_PATH)/proprietary/bin/key_sleep_vibrate_service:system/bin/key_sleep_vibrate_service \
        $(LOCAL_PATH)/proprietary/bin/T2tNdefWrite:system/bin/T2tNdefWrite \
        $(LOCAL_PATH)/proprietary/bin/taimport:system/bin/taimport
#        $(LOCAL_PATH)/proprietary/bin/setup_fs:system/bin/setup_fs \

# Proprietart system/xbin
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/xbin/misctatest:system/xbin/misctatest \
        $(LOCAL_PATH)/proprietary/xbin/tatest:system/xbin/tatest

# Proprietary system/lib
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/lib/libcapi2.so:system/lib/libcapi2.so \
        $(LOCAL_PATH)/proprietary/lib/libclockwork_home_jni.so:system/lib/libclockwork_home_jni.so \
        $(LOCAL_PATH)/proprietary/lib/libclockwork_micro_hotword_jni.so:system/lib/libclockwork_micro_hotword_jni.so \
        $(LOCAL_PATH)/proprietary/lib/libclockwork_proxy_jni.so:system/lib/libclockwork_proxy_jni.so

# NFC Packages
PRODUCT_PACKAGES += \
        nfc_nci.bcm2079x.default \
        NfcNci \
        NfcSettings \
        Tag \
        com.android.nfc_extras

# NFC Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        $(LOCAL_PATH)/nfc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf

# Extra packages
PRODUCT_PACKAGES += \
        nullwebview \
        setup_fs

# Ramdisk packages
PRODUCT_PACKAGES += \
        fstab.tetra \
        fstab.swap.tetra \
        init.tetra.rc \
        init.common.rc \
        init.tetra.usb.rc \
        init.tetra.debug.rc \
        init.common.debug.rc \
        init.common.usb.rc \
        init.debug.sonyextras.rc \
        init.recovery.tetra.rc \
        ueventd.tetra.rc \
        tad_static \
        wait4tad_static

# HAL
#PRODUCT_PACKAGES += \
#        gralloc.default \
#        gralloc.bcm_java \
#        hwcomposer.bcm_java \
#        keystore.default

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_tetra
PRODUCT_DEVICE := tetra
