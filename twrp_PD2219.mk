#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := PD2219
PRODUCT_NAME := omni_PD2219
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2219A
PRODUCT_MANUFACTURER := vivo

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Extra required packages
PRODUCT_PACKAGES += \
    libion

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd