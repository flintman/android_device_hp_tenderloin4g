#
# Copyright (C) 2011 The Evervolv Project
# Copyright (C) 2011 The CyanogenMod Project
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

# Proprietary stuff.
$(call inherit-product-if-exists, vendor/hp/tenderloin/tenderloin-vendor.mk)

# This is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.

PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/init.tenderloin.rc:root/init.tenderloin.rc \
    device/hp/tenderloin4g/fstab.tenderloin:root/fstab.tenderloin

DEVICE_PACKAGE_OVERLAYS += device/hp/tenderloin4g/overlay

# Recovery
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/recovery/sbin/ts_srv:recovery/root/sbin/ts_srv \
	device/hp/tenderloin4g/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# Custom init files.
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/init.tenderloin.usb.rc:root/init.tenderloin.usb.rc \
    device/hp/tenderloin4g/ueventd.tenderloin.rc:root/ueventd.tenderloin.rc

PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/hp/tenderloin4g/prebuilt/lvm/lvm.conf:root/lvm/lvm.conf \
    device/hp/tenderloin4g/makemulti.sh:makemulti.sh \
    device/hp/tenderloin4g/prebuilt/boot/moboot.splash.Evervolv.tga:moboot.splash.Evervolv.tga \
    device/hp/tenderloin4g/prebuilt/boot/moboot.default:moboot.default

# Add touchcreen configuration file
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/HPTouchpad.idc:system/usr/idc/HPTouchpad.idc

# Bluetooth
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/bluetooth/bt_vendor.conf:/system/etc/bluetooth/bt_vendor.conf \
    device/hp/tenderloin4g/bluetooth/bluecore6.psr:/system/etc/bluetooth/bluecore6.psr

# Dualboot Magic
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/moboot_control.sh:system/bin/moboot_control.sh

# media minor check boot script
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/prebuilt/etc/init.d/10check_media_minor:system/etc/init.d/10check_media_minor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/hp/tenderloin4g/prebuilt/usr/keylayout/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl

#Wifi Firmware
# from kernel.org
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/data.patch.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/athwlan.bin.z77 \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.WB31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw2.0/otp.bin.z77 \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.SD32.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/endpointping.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/endpointping.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/data.patch.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.WB31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.SD32.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/otp.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/otp.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/fw-3.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/data.patch.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/data.patch.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/athwlan.bin.z77 \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.WB31.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.WB31.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/otp.bin.z77:/system/etc/firmware/ath6k/AR6003/hw1.0/otp.bin.z77 \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.SD32.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6002/eeprom.data:/system/etc/firmware/ath6k/AR6002/eeprom.data \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6002/data.patch.hw2_0.bin:/system/etc/firmware/ath6k/AR6002/data.patch.hw2_0.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6002/athwlan.bin.z77:/system/etc/firmware/ath6k/AR6002/athwlan.bin.z77 \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6002/eeprom.bin:/system/etc/firmware/ath6k/AR6002/eeprom.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/LICENSE.atheros_firmware:/system/etc/firmware/ath6k/LICENSE.atheros_firmware \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.0/bdata.CUSTOM.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.CUSTOM.bin \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw1.0/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw1.0/bdata.CUSTOM.bin

# Wifi Firmware
# Temporary hack for ATH6KL
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/prebuilt/wifi/ath6k/AR6003/hw2.1.1/bdata.SD32.bin:/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This is a tablet.
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := xlarge mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# QCOM Hal
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    hwcomposer.msm8660 \
    gralloc.msm8660 \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libQcomUI

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc

# Camera
PRODUCT_PACKAGES += \
    camera.msm8660

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.tenderloin \
    libsrec_jni

# Audio xml Files
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/hp/tenderloin4g/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/hp/tenderloin4g/configs/media_codecs.xml:system/etc/media_codecs.xml 

# Audio Policy Configuration
PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/configs/audio_policy.conf:system/etc/audio_policy.conf

# Sensors, misc
PRODUCT_PACKAGES += \
    librs_jni \
    wpa_supplicant.conf \
    libnetcmdiface \
    libmllite \
    libmlplatform \
    sensors.tenderloin \
    lights.tenderloin \
    memtrack.msm8660 \
    ts_srv \
    ts_srv_set \
    dosfsck \
    serial \
    com.android.future.usb.accessory \
    rebootcmd

# MBM
PRODUCT_PACKAGES += \
    gps.tenderloin \
    MbmService \
    libmbm-ril \
    Mms

PRODUCT_COPY_FILES += \
    device/hp/tenderloin4g/aldtf.sh:system/xbin/aldtf.sh \
    device/hp/tenderloin4g/xmesg:system/bin/xmesg \
    device/hp/tenderloin4g/pollerr.sh:system/bin/pollerr.sh \
    device/hp/tenderloin4g/gps.conf:system/etc/gps.conf

PRODUCT_PACKAGES += \
	make_ext4fs

# Property overrides.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.com.google.networklocation=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
