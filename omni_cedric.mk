# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/cedric/full_cedric.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# for specific
$(call inherit-product, vendor/motorola/cedric/cedric-vendor.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cedric
PRODUCT_NAME := omni_cedric
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
