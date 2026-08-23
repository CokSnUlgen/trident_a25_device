 DEVICE_PATH := device/trident/a25

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/fstab.mt6771:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt6771

# Inherit from those products tokenize
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlays (
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.xml

# MediaTek Common Packages
PRODUCT_PACKAGES += \
    libgui_vendor \
    vndservicemanager

# VINTF Manifest
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
PRODUCT_ENFORCE_VINTF_MANIFEST := false
DEVICE_MANIFEST_FILE := device/trident/a25/configs/manifest.xml
DEVICE_MATRIX_FILE := vendor/trident/a25/proprietary/vendor/etc/vintf/compatibility_matrix.xml
