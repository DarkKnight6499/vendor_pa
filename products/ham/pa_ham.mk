# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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


# Inherit from those products. Most specific first. 
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) 
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

 
# Include ParanoidAndroid common configuration 
TARGET_BOOT_ANIMATION_RES := 1080 

# Most advanced platform features, first.
TARGET_WANTS_EXTENDED_DPM_PLATFORM := true

 
# Inherit from our common CAF device tree. 
include device/qcom/common/common.mk 

# Inherit from ham device
$(call inherit-product, device/zuk/ham/ham.mk)

# Inherit some common Paranoid stuff.
include vendor/pa/main.mk 

PRODUCT_NAME := pa_ham
PRODUCT_DEVICE := ham
PRODUCT_MANUFACTURER := ZUK
PRODUCT_MODEL := ZUK Z1

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BRAND := ZUK
TARGET_VENDOR := zuk
TARGET_VENDOR_PRODUCT_NAME := ham
TARGET_VENDOR_DEVICE_NAME := Z1
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Z1 PRODUCT_NAME=ham

TARGET_UNOFFICIAL_BUILD_ID := OrdenKrieger

