# Check for target product
ifeq (pa_su640,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Camera-fix
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=lgp930

# Inherit CM device configuration
$(call inherit-product, device/lge/su640/cm.mk)

PRODUCT_NAME := pa_su640

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
