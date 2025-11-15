# Inherit common Minus stuff
$(call inherit-product, vendor/minus/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Apps
PRODUCT_PACKAGES += \
    Camelot \
    ViaBrowser \
    Gboard
    
# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar

PRODUCT_HOST_PACKAGES += \
    zstd
