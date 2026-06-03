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

# Maintainer Name
INFINITY_MAINTAINER := "DΞΞZNUTZ" 

# Whether the device supports Fingerprint On Display
TARGET_HAS_UDFPS := false

# Whether Including Google Apps
WITH_GAPPS := true

>>>>>>> f243668 (spaced: lineage-23.2 device tree):lineage_spaced.mk
# Include Dolby Atmos
$(call inherit-product, hardware/dolby/dolby.mk)

# GMS (Google Mobile Services)
WITH_GMS := true

# Telephony
TARGET_SUPPORTS_GOOGLE_TELEPHONY := false

# Fingerprint (Realme 8i has side-mounted FPS, disable UDFPS unless you are implementing custom framework hooks)
TARGET_CUSTOM_UDFPS := false

# Display Engines (Disabled due to MTK stability issues)
USE_REALITY_ENGINE := false

# Rendering Optimizations
SURFACE_FLINGER_BOOST := true

# SurfaceFlinger Refresh Rates
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,120)
