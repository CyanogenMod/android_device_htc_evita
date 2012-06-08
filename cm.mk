# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := evita

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/evita/device_evita.mk)

# Device naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := cm_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.0.3/IML74K/54373.1:user/release-keys PRIVATE_BUILD_DESC="1.73.502.1 CL54373 release-keys" BUILD_NUMBER=47741
