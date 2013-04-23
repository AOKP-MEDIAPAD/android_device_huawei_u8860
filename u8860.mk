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

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# init
PRODUCT_COPY_FILES += \
    device/huawei/u8860/root/init.qcom.sh:root/init.qcom.sh
# modules
PRODUCT_COPY_FILES += \
    device/huawei/u8860/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/huawei/u8860/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
	device/huawei/u8860/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
	device/huawei/u8860/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/huawei/u8860/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/huawei/u8860/modules/qce.ko:system/lib/modules/qce.ko \
	device/huawei/u8860/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
	device/huawei/u8860/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
	device/huawei/u8860/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
	device/huawei/u8860/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
	device/huawei/u8860/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
	device/huawei/u8860/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
	device/huawei/u8860/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
	device/huawei/u8860/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
	device/huawei/u8860/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
	device/huawei/u8860/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
	device/huawei/u8860/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
	device/huawei/u8860/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/huawei/u8860/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	device/huawei/u8860/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	device/huawei/u8860/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
	device/huawei/u8860/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
	device/huawei/u8860/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko
	
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := huawei_u8860
PRODUCT_DEVICE := u8860
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := HUAWEI U8860
