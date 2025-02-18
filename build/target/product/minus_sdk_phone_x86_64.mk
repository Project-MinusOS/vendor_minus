$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)
$(call inherit-product, vendor/minus/config/common_full_phone.mk)

include device/generic/goldfish/board/kernel/x86_64.mk

# Always build modules from source
PRODUCT_MODULE_BUILD_FROM_SOURCE := true

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

# Overrides
PRODUCT_NAME := minus_sdk_phone_x86_64
PRODUCT_MODEL := MinusOS Android SDK built for x86_64

PRODUCT_SDK_ADDON_NAME := minus
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := $(LOCAL_PATH)/source.properties

# Increase Partition size: 8G+8M
BOARD_SUPER_PARTITION_SIZE ?= 8598323200
BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE ?= 8589934592

# Packaging sdk_addon target
PRODUCT_SDK_ADDON_COPY_FILES += \
    device/generic/goldfish/data/etc/advancedFeatures.ini:images/x86_64/advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:images/x86_64/encryptionkey.img \
    $(EMULATOR_KERNEL_FILE):images/x86_64/kernel-ranchu