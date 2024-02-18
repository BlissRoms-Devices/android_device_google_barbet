#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common bliss stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/barbet/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := bliss_barbet

# Gapps
TARGET_STOCK_GAPPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=barbet \
    PRIVATE_BUILD_DESC="barbet-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)