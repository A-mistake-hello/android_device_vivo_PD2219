#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2219 device
$(call inherit-product, device/vivo/PD2219/device.mk)

PRODUCT_DEVICE := PD2219
PRODUCT_NAME := omni_PD2219
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2219A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

# Extra required packages
PRODUCT_PACKAGES += \
    libion
    
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
