#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, device/motorola/cedric/full_cedric.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# for specific
$(call inherit-product, vendor/motorola/cedric/cedric-vendor.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cedric
PRODUCT_NAME := lineage_cedric
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

# Fingerprint for cedric (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/cedric/cedric:7.0/NPP25.137-33/31:user/release-keys \
    PRIVATE_BUILD_DESC="cedric-7.0/NPP25.137-33/31:user/release-keys" \
    PRODUCT_NAME="Moto G5"
