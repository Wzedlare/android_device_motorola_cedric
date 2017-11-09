#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/motorola/cedric/overlay

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8937 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    libshim_adsp \
    tinymix

# Audio Configurations
PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8996/configs/msm8937/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    device/motorola/cedric/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/motorola/cedric/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    device/motorola/cedric/audio/audio_ext_spkr.conf:system/etc/audio_ext_spkr.conf \
    device/motorola/cedric/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/motorola/cedric/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    device/motorola/cedric/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/motorola/cedric/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/motorola/cedric/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_sku2.xml:system/etc/mixer_paths_qrd_sku2.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    device/motorola/cedric/audio/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    device/motorola/cedric/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    device/motorola/cedric/audio/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    device/motorola/cedric/audio/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    device/motorola/cedric/audio/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    device/motorola/cedric/audio/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    device/motorola/cedric/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/motorola/cedric/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    device/motorola/cedric/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    device/motorola/cedric/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    device/motorola/cedric/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937 \
    libbson \
    libshim_camera \
    Snap

# Camera Configurations
PRODUCT_COPY_FILES += \
    device/motorola/cedric/configs/camera/msm8937_mot_camera.xml:system/etc/camera/msm8937_mot_camera.xml \
    device/motorola/cedric/configs/camera/mot_ov5695_chromatix.xml:system/etc/camera/mot_ov5695_chromatix.xml \
    device/motorola/cedric/configs/camera/mot_imx258_chromatix.xml:system/etc/camera/mot_imx258_chromatix.xml

# CMActions
PRODUCT_PACKAGES += \
    CMActions

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8937 \
    copybit.msm8937 \
    liboverlay \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    libtinyxml

# DRM
PRODUCT_PACKAGES += \
    libprotobuf-cpp-lite

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem
PRODUCT_PACKAGES += \
    fs_config_files

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# Fingerprint IDC
PRODUCT_COPY_FILES += \
    device/motorola/cedric/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS Configurations
PRODUCT_COPY_FILES += \
    device/motorola/cedric/gps/etc/flp.conf:system/etc/flp.conf \
    device/motorola/cedric/gps/etc/gps.conf:system/etc/gps.conf \
    device/motorola/cedric/gps/etc/izat.conf:system/etc/izat.conf \
    device/motorola/cedric/gps/etc/lowi.conf:system/etc/lowi.conf \
    device/motorola/cedric/gps/etc/sap.conf:system/etc/sap.conf \
    device/motorola/cedric/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# IMS
PRODUCT_PACKAGES += \
    libshim_ims

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRSC
PRODUCT_COPY_FILES += \
    device/motorola/cedric/configs/sec_config:system/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    device/motorola/cedric/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/motorola/cedric/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/motorola/cedric/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    device/motorola/cedric/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/motorola/cedric/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    device/motorola/cedric/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Media Configurations
PRODUCT_COPY_FILES += \
    device/motorola/cedric/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/motorola/cedric/configs/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
    device/motorola/cedric/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/motorola/cedric/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/cedric/configs/media_profiles_8956.xml:system/etc/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8937

# Ramdisk
PRODUCT_PACKAGES += \
    init.mmi.touch.sh \
    init.qcom.ril.sh \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    wlan_carrier_bin.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi.boot.sh \
    init.mmi.laser.sh \
    init.mmi.rc \
    init.mmi.usb.rc \
    init.oem.hw.sh \
    init.qcom.rc \
    ueventd.qcom.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2 \
    libshim_ril

# Sensor Configurations
PRODUCT_COPY_FILES += \
    device/motorola/cedric/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    device/motorola/cedric/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

# Thermal
PRODUCT_COPY_FILES += \
    device/motorola/cedric/configs/thermal-engine-cedric.conf:system/etc/thermal-engine-cedric.conf

# Wifi
PRODUCT_PACKAGES += \
    wifi_symlinks \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    tcpdump \
    wcnss_service

# Wifi Configurations
PRODUCT_COPY_FILES += \
    kernel/motorola/msm8937/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/motorola/cedric/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# ANT+
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

PRODUCT_PACKAGES += \
	AntHalService \
	antradio_app \
	com.dsi.ant.antradio_library \
	libantradio

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_GMS_CLIENTID_BASE := android-motorola
