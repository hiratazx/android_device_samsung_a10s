#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a10s

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_EXTRA_VNDK_VERSIONS := 30

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio.common-util.vendor \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@6.0 \
    android.hardware.audio.common@6.0-util.vendor \
    android.hardware.audio.effect@6.0-util.vendor \
    android.hardware.audio.effect@6.0 \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio@6.0 \
    android.hardware.audio@6.0-impl \
    android.hardware.audio@6.0-util.vendor \
    android.hardware.bluetooth.audio-impl \
    android.hardware.bluetooth.audio@2.0 \
    android.hardware.bluetooth.audio@2.1 \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libtinycompress \
    libtinyxml \
    libaudiofoundation \
    libaudiofoundation.vendor

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Bluetooth
PRODUCT_PACKAGES += \
    audio.sysbta.default \
    android.hardware.bluetooth.audio-service-system \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth@1.1.vendor

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration.xml \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration_7_0.xml

# APNs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.mt6765.rc \
    init.recovery.mt6762.rc

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl.custom \
    fastbootd

# WLAN
PRODUCT_PACKAGES += \
    android.hardware.wifi.hostapd@1.0.vendor \
    android.hardware.wifi.hostapd@1.1.vendor \
    android.hardware.wifi.hostapd@1.2.vendor \
    android.hardware.wifi.supplicant@1.0.vendor \
    android.hardware.wifi.supplicant@1.1.vendor \
    android.hardware.wifi.supplicant@1.2.vendor \
    android.hardware.wifi.supplicant@1.3.vendor \
    android.hardware.wifi@1.0.vendor:32 \
    android.system.wifi.keystore@1.0.vendor \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service-lazy.suzuhime

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.ims.xml \
	$(DEVICE_PATH)/biometrics/wosface.hardware.biometrics.face@1.0-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/30/etc/init/wosface.hardware.biometrics.face@1.0-service.rc \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0.vendor \
    android.hardware.camera.device@1.0.vendor \
    android.hardware.camera.device@3.2.vendor \
    android.hardware.camera.device@3.3.vendor \
    android.hardware.camera.device@3.4.vendor \
    android.hardware.camera.device@3.5.vendor \
    android.hardware.camera.device@3.6.vendor \
    android.hardware.camera.provider@2.4.vendor \
    android.hardware.camera.provider@2.5.vendor \
    android.hardware.camera.provider@2.6.vendor \
    libutils-v30 \
    libutils-v32

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0.vendor \
    android.hardware.thermal@2.0.vendor \
    android.hardware.thermal@1.0-impl

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-mediatek:32 \
    android.hardware.power-V1-ndk.vendor \
    android.hardware.power@1.0.vendor \
    android.hardware.power@1.1.vendor \
    android.hardware.power@1.2.vendor \
    android.hardware.power@1.3.vendor

# Power configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/power/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0.vendor \
    android.hardware.drm@1.1.vendor \
    android.hardware.drm@1.2.vendor \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm@1.4.vendor \
    libmockdrmcryptoplugin \
    libdrm.vendor

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.composer@2.1-resources \
    android.hardware.graphics.composer@2.1-resources.vendor \
    android.hardware.graphics.common-V2-ndk.vendor:32 \
    android.hardware.graphics.common-V2-ndk_platform.vendor:32 \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0-impl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.suzuhime

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic \
    android.hardware.usb@1.0.vendor

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0.vendor \
    android.hardware.keymaster@4.0.vendor \
    libkeymaster4.vendor \
    libkeymaster4support.vendor \
    libkeymaster_messages.vendor \
    libkeymaster_portable.vendor \
    libpuresoftkeymasterdevice.vendor \
    libsoft_attestation_cert.vendor

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0 \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0.vendor \
    libsensorndkbridge

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss.measurement_corrections@1.0.vendor \
    android.hardware.gnss.measurement_corrections@1.1.vendor \
    android.hardware.gnss.visibility_control@1.0.vendor \
    android.hardware.gnss@1.0.vendor \
    android.hardware.gnss@1.1.vendor \
    android.hardware.gnss@2.0.vendor \
    android.hardware.gnss@2.1.vendor

# LPM
PRODUCT_PACKAGES += \
    libsuspend 

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_PACKAGES += \
    SystemUIOverlay_JDM_A10s \
    FrameworksResOverlay_JDM_A10s

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6765 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6762.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    init.recovery.mt6762.rc \
    init.recovery.mt6765.rc \
    init.recovery.samsung.rc \

# Screen density
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Shims
PRODUCT_PACKAGES += \
    libshim_audio \
    libshim_beanpod

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/mediatek \
    $(LOCAL_PATH)

# Wi-Fi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/public.libraries.vendor.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# [HACK] AOSP Recovery touch blobs (ramdisk)
PRODUCT_COPY_FILES += \
    vendor/samsung/a10s/proprietary/vendor/firmware/Himax_firmware.bin:recovery/root/vendor/firmware/Himax_firmware.bin \
    vendor/samsung/a10s/proprietary/vendor/firmware/chipone-tddi.bin:recovery/root/vendor/firmware/chipone-tddi.bin \
    vendor/samsung/a10s/proprietary/vendor/firmware/mp_ili9882n_boe.ini:recovery/root/vendor/firmware/mp_ili9882n_boe.ini \
    vendor/samsung/a10s/proprietary/vendor/firmware/mp_ls_ili9882n_boe.ini:recovery/root/vendor/firmware/mp_ls_ili9882n_boe.ini \

# Inherit the proprietary files
# $(call inherit-product, vendor/samsung/a10s/a10s-vendor.mk)
