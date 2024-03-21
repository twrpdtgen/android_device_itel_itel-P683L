#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from itel-P683L device
$(call inherit-product, device/itel/itel-P683L/device.mk)

PRODUCT_DEVICE := itel-P683L
PRODUCT_NAME := omni_itel-P683L
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel P683L
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P683L-user 13 TP1A.220624.014 156 release-keys"

BUILD_FINGERPRINT := Itel/P683L-GL/itel-P683L:13/TP1A.220624.014/GL-230619V612:user/release-keys
