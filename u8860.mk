# Copyright (C) 2011 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)
$(call inherit-product, device/huawei/msm7x30-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay

# Extra
#PRODUCT_PACKAGES += \
#    DisplayFix

PRODUCT_PACKAGES += \
     Flashlight


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/lib/hw/audio.primary.msm7x30.so:system/lib/hw/audio.primary.msm7x30.so \
    device/huawei/u8860/prebuilt/lib/hw/audio_policy.msm7x30.so:system/lib/hw/audio_policy.msm7x30.so	

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/lib/libcamera_client.so:system/lib/libcamera_client.so \
    device/huawei/u8860/prebuilt/lib/libcamera_metadata.so:system/lib/libcamera_metadata.so \
	device/huawei/u8860/prebuilt/lib/libcameraservice.so:system/lib/libcameraservice.so \
	
# Kernel
PRODUCT_COPY_FILES += \
    device/huawei/u8860/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf
	
#Goo.im
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=zyr3x \
    ro.goo.board=u8860 \
    ro.goo.rom=AOKPMR1u8860 \
    ro.goo.version=$(shell date +%Y%m%d)

# init
PRODUCT_COPY_FILES += \
    device/huawei/u8860/root/init.qcom.sh:root/init.qcom.sh
	
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := huawei_u8860
PRODUCT_DEVICE := u8860
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := HUAWEI U8860
