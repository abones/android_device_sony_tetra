## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tetra

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sony/tetra/device_tetra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tetra
PRODUCT_NAME := cm_tetra
PRODUCT_BRAND := sony
PRODUCT_MODEL := tetra
PRODUCT_MANUFACTURER := sony
