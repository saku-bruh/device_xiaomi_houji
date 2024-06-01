#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from houji device.
$(call inherit-product, device/xiaomi/houji/device.mk)

# Environment Flags
IS_PHONE := true

# Boot Animation
TARGET_SCREEN_HEIGHT := 2670
TARGET_SCREEN_WIDTH := 1200
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Device Identifiers
PRODUCT_DEVICE := houji
PRODUCT_NAME := lineage_houji
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23127PN0CG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="houji_global-user 14 UKQ1.230804.001 V816.0.6.0.UNCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/houji_global/houji:14/UKQ1.230804.001/V816.0.6.0.UNCMIXM:user/release-keys