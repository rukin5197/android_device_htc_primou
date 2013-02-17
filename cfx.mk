# Inherit AOSP device configuration for primou.
$(call inherit-product, device/htc/primou/device.mk)

# Inherit some common CFX stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CFX stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

PRODUCT_NAME := cfx_primou
PRODUCT_RELEASE_NAME := primou
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primou
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primou BUILD_FINGERPRINT=htc_europe/htc/primou:4.2.2/JDQ39/330937:user/user-debug PRIVATE_BUILD_DESC="4.2.2 JDQ39 330937 user-debug"
