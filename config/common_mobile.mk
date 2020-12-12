# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/minus/config/common.mk)

# Include AOSP audio files
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage14.mk)
include vendor/minus/config/aosp_audio.mk

# Include Lineage audio files
include vendor/minus/config/minus_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
    
# TextClassifier
PRODUCT_PACKAGES += \
    libtextclassifier_annotator_en_model \
    libtextclassifier_annotator_universal_model \
    libtextclassifier_actions_suggestions_universal_model \
    libtextclassifier_lang_id_model