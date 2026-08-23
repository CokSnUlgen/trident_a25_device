# Inherit device configuration
$(call inherit-product, device/trident/a25/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Lineage common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Vendor inheritance
$(call inherit-product, vendor/trident/a25/a25-vendor.mk)

# Device metadata
PRODUCT_NAME := lineage_a25
PRODUCT_DEVICE := a25
PRODUCT_BRAND := Trident
PRODUCT_MODEL := A25
PRODUCT_MANUFACTURER := Trident

PRODUCT_SHIPPING_API_LEVEL := 30

# Build fingerprints (To match with stock ROM values)
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="g1970upt_v2_a25_oj_r-user 11 RP1A.200720.011 release-keys"

# Disable VINTF checks
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
PRODUCT_ENFORCE_VINTF_MANIFEST := false
