#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL shamu devices, and
# are also specific to shamu devices
#
# Everything in this directory will become public


PRODUCT_COPY_FILES += \
    device/moto/shamu/init.shamu.rc:root/init.shamu.rc \
    device/moto/shamu/init.shamu.power.rc:root/init.shamu.power.rc \
    device/moto/shamu/init.shamu.usb.rc:root/init.shamu.usb.rc \
    device/moto/shamu/fstab.shamu:root/fstab.shamu \
    device/moto/shamu/ueventd.shamu.rc:root/ueventd.shamu.rc

# Vendor Interface Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/vendor/manifest.xml

# Input device files for shamu
PRODUCT_COPY_FILES += \
    device/moto/shamu/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/moto/shamu/apq8084-taiko-tfa9890_stereo_co_Button_Jack.kl:system/usr/keylayout/apq8084-taiko-tfa9890_stereo_co_Button_Jack.kl \
	device/moto/shamu/atmel_mxt_ts.idc:system/usr/idc/atmel_mxt_ts.idc

PRODUCT_COPY_FILES += \
    device/moto/shamu/audio_policy.conf:system/etc/audio_policy.conf \
    device/moto/shamu/audio_effects.conf:system/etc/audio_effects.conf

PRODUCT_COPY_FILES += \
    device/moto/shamu/media_profiles.xml:system/etc/media_profiles.xml \
    device/moto/shamu/media_codecs.xml:system/etc/media_codecs.xml \
    device/moto/shamu/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

PRODUCT_COPY_FILES += \
    device/moto/shamu/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/moto/shamu/audio_platform_info.xml:system/etc/audio_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# For GPS
PRODUCT_COPY_FILES += \
    device/moto/shamu/sec_config:system/etc/sec_config

# Touch firmware updater
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.mmi.touch.sh:system/bin/init.mmi.touch.sh

# Add WiFi Firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4356/device-bcm.mk)

# WiFi cal NVRAM file
PRODUCT_COPY_FILES += \
    device/moto/shamu/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# BT FW
PRODUCT_COPY_FILES += \
    device/moto/shamu/bluetooth/BCM4356A2_001.003.015.0077.0214_ORC.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4354A2.hcd

# Bluetooth HAL
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# For SPN display
PRODUCT_COPY_FILES += \
    device/moto/shamu/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_CHARACTERISTICS := nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/moto/shamu/overlay

PRODUCT_PACKAGES := \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += atmel.fw.apq8084

# OEM Package for RIL
PRODUCT_PACKAGES += \
    qmi_motext_hook

# RIL
PRODUCT_PACKAGES += \
    libxml2

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

PRODUCT_PACKAGES += \
    gralloc.msm8084 \
    hwcomposer.msm8084 \
    memtrack.msm8084 \
    libqdutils \
    libqdMetaData

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Sensor HAL
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

# Default OMX service to non-Treble
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

PRODUCT_PACKAGES += \
    audio.primary.msm8084 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.monitorRotation=true

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors

#CAMERA
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    camera.msm8084 \
    mm-jpeg-interface-test \
    mm-qcamera-app

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    lights.shamu \
    android.hardware.light@2.0-impl

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# for launcher layout
PRODUCT_PACKAGES += \
    ShamuLayout

PRODUCT_PACKAGES += \
    bdAddrLoader

PRODUCT_PACKAGES += \
    keystore.msm8084

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.no_wait_for_card=1 \
    persist.radio.data_no_toggle=1

# never dexopt the MotoSignature
$(call add-product-dex-preopt-module-config,MotoSignatureApp,disable)

#Reduce IMS logging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ims.disableDebugLogs=1 \
    persist.ims.disableADBLogs=2 \
    persist.ims.disableDebugLogs=0 \
    persist.ims.disableQXDMLogs=0 \
    persist.ims.disableIMSLogs=1 \
    persist.camera.hal.debug.mask=7 \
    persist.camera.ISP.debug.mask=0 \
    persist.camera.pproc.debug.mask=7 \
    persist.camera.stats.debug.mask=0 \
    persist.camera.imglib.logs=1 \
    persist.camera.mct.debug.mask=1 \
    persist.camera.sensor.debug=0 \
    vidc.debug.level=1

#Disable QC Oem Hook
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.oem_socket=false

#Support for graceful UICC Vltg supply deact
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qcril_uim_vcc_feature=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_cdma_sub=0

# LTE, CDMA, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=10 \
    telephony.lteOnCdmaDevice=1

# SIM based FSG loading & MCFG activation
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.fsg_reload_on=1 \
    persist.radio.mcfg_enabled=1

# Camera configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.camera.ois.disable=0

# GPS configuration
PRODUCT_COPY_FILES += \
    device/moto/shamu/gps.conf:system/etc/gps.conf

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_ds_api \
    libloc_core \
    libizat_core \
    libgeofence \
    libgps.utils \
    gps.msm8084 \
    flp.msm8084 \
    liblbs_core \
    flp.conf

# Memtrack HAL
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag \
    android.hardware.nfc@1.0-impl

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:system/etc/permissions/android.hardware.nfc.hcef.xml \
    device/moto/shamu/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/moto/shamu/nfc/libnfc-brcm-20795a10.conf:system/etc/libnfc-brcm-20795a10.conf

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.du.updater=shamu

# Modem debugger
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
ifeq (,$(filter aosp_shamu, $(TARGET_PRODUCT)))
PRODUCT_PACKAGES += \
    QXDMLoggerV2
endif # aosp_shamu

# Disable modem ramdumps
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rdump.on=0

PRODUCT_COPY_FILES += \
    device/moto/shamu/init.shamu.diag.rc.userdebug:root/init.shamu.diag.rc
else
PRODUCT_COPY_FILES += \
    device/moto/shamu/init.shamu.diag.rc.user:root/init.shamu.diag.rc
endif

# Enable for volte call
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true

PRODUCT_PROPERTY_OVERRIDES += \
   ro.hwui.texture_cache_size=72 \
   ro.hwui.layer_cache_size=48 \
   ro.hwui.r_buffer_cache_size=8 \
   ro.hwui.path_cache_size=32 \
   ro.hwui.gradient_cache_size=1 \
   ro.hwui.drop_shadow_cache_size=6 \
   ro.hwui.texture_cache_flushrate=0.4 \
   ro.hwui.text_small_cache_width=1024 \
   ro.hwui.text_small_cache_height=1024 \
   ro.hwui.text_large_cache_width=2048 \
   ro.hwui.text_large_cache_height=1024


PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.heapgrowthlimit=256m

# In userdebug, add minidebug info the the boot image and the system server to support
# diagnosing native crashes.
ifneq (,$(filter userdebug, $(TARGET_BUILD_VARIANT)))
    # Boot image.
    PRODUCT_DEX_PREOPT_BOOT_FLAGS += --generate-mini-debug-info
    # System server and some of its services.
    # Note: we cannot use PRODUCT_SYSTEM_SERVER_JARS, as it has not been expanded at this point.
    $(call add-product-dex-preopt-module-config,services,--generate-mini-debug-info)
    $(call add-product-dex-preopt-module-config,wifi-service,--generate-mini-debug-info)
endif

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x84/msm8x84.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8x84/msm8x84-gpu-vendor.mk)

# setup dm-verity configs.
#PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/msm_sdcc.1/by-name/system
#$(call inherit-product, build/target/product/verity.mk)

# setup scheduler tunable
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=2

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.shamu \
    thermal.shamu \
    android.hardware.thermal@1.0-impl

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
   fs_config_files

PRODUCT_PROPERTY_OVERRIDES += \
   ro.frp.pst=/dev/block/platform/msm_sdcc.1/by-name/frp

# Delegation for OEM customization
PRODUCT_OEM_PROPERTIES := \
    ro.config.ringtone \
    ro.config.notification_sound \
    ro.config.alarm_alert \
    ro.config.wallpaper \
    ro.config.wallpaper_component \
    ro.oem.* \
    oem.*

# Copy the qcril.db file from qcril to system. Useful to get the radio tech family for the camped operator
PRODUCT_COPY_FILES += \
    device/moto/shamu/qcril.db:system/etc/ril/qcril.db

# Reduce client buffer size for fast audio output tracks
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1

# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.period_size=192

# Set correct voice call audio property values
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=6 \
    persist.audio.dualmic.config=endfire \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicecomm=false \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# ro.product.first_api_level indicates the first api level the device has commercially launched on.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=21

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
