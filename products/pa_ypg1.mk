# Check for target product
ifeq (pa_ypg1,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/ypg1/cm.mk)

PRODUCT_NAME := pa_ypg1

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif
