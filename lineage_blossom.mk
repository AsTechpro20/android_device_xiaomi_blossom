#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common RisingOS-15 stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# RisingOS-15 stuffs.
RISING_MAINTAINER="AsTechpro20"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="MediaTek 6765" \
    RisingMaintainer="AsTechpro20"
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true
scr_resolution := 720

PRODUCT_NAME := lineage_blossom
PRODUCT_DEVICE := blossom
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi