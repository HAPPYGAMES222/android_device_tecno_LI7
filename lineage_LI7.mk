#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from LI7 device
$(call inherit-product, device/tecno/LI7/device.mk)

BOARD_VENDOR := Tecno
PRODUCT_NAME := lineage_LI7
PRODUCT_DEVICE := LI7
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno LI7

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_tecno_dolby-user 14 UP1A.231005.007 632491 release-keys" \
    PRODUCT_NAME=LI7-OP

BUILD_FINGERPRINT := TECNO/LI7-OP/TECNO-LI7:14/UP1A.231005.007/240610V967:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
