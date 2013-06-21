# Inherit AOSP device configuration for primou.
$(call inherit-product, device/htc/primou/device.mk)

# Inherit some common EV stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common EV stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := cm_primou
PRODUCT_RELEASE_NAME := primou
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primou
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primou BUILD_FINGERPRINT=htc_europe/htc/primou:4.2.2/JDQ39/330937:user/user-debug PRIVATE_BUILD_DESC="4.2.2 JDQ39 330937 user-debug"
