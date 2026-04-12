#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/spaced/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_spaced
PRODUCT_DEVICE := spaced
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3286

PRODUCT_GMS_CLIENTID_BASE := android-realme

BUILD_FINGERPRINT := realme/RMX3286/RE54B4L1:13/SP1A.210812.016/R.1c05817+2a8bc:user/release-keys

# Camera information (50MP Main + 2MP Macro + 2MP Depth)
AXION_CAMERA_REAR_INFO := 50,2,2
# Front Camera is 16MP
AXION_CAMERA_FRONT_INFO := 16

# Maintainer name
AXION_MAINTAINER := DΞΞZNUTZ

# Processor name (Helio G96)
AXION_PROCESSOR := MediaTek_Helio_G96

# Charging
BYPASS_CHARGE_SUPPORTED := true
# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH := /sys/class/power_supply/battery/input_suspend
# Path for level path in case device does not support charge toggle
BYPASS_CHARGE_LEVEL_PATH := /sys/devices/platform/google,charger/charge_stop_level

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# High Brightness Mode (HBM)
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# doze flags
TARGET_NEEDS_DOZE_FIX := true
# doze gestures
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := true

# Set to true ONLY if device RAM is 4GB or less
TARGET_IS_LOW_RAM := true

# refresh rate list
TARGET_SUPPORTED_REFRESH_RATES := 60,75,90,120

TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

# Sign Keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/lineage-priv/keys/releasekey
-include vendor/lineage-priv/keys/keys.mk
