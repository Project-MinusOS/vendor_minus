# Inherit mobile full common MinusOS
$(call inherit-product, vendor/minus/config/common_mobile_full.mk)

# Inherit tablet common MinusOS
$(call inherit-product, vendor/minus/config/tablet.mk)

$(call inherit-product, vendor/minus/config/telephony.mk)
