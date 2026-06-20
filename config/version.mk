MINUS_DATE_YEAR := $(shell date -u +%Y)
MINUS_DATE_MONTH := $(shell date -u +%m)
MINUS_DATE_DAY := $(shell date -u +%d)
MINUS_BUILD_DATE := $(MINUS_DATE_YEAR)$(MINUS_DATE_MONTH)$(MINUS_DATE_DAY)
MINUS_PLATFORM_VERSION := 17.0
MINUS_VERSION := $(MINUS_BUILD)-$(MINUS_PLATFORM_VERSION)-$(MINUS_BUILD_DATE)
MINUS_VERSION_PROP := Cirno

PRODUCT_SYSTEM_PROPERTIES += \
    ro.minus.build.date=$(BUILD_DATE) \
    ro.minus.fingerprint=$(ROM_FINGERPRINT) \
    ro.minus.version=$(MINUS_VERSION_PROP) \
    ro.minus.device=$(MINUS_BUILD) \
    ro.modversion=$(MINUS_VERSION)