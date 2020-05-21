# OpenGApps
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
GAPPS_VARIANT := nano

GAPPS_FORCE_PACKAGE_OVERRIDES := true

WITH_DEXPREOPT := true

ifndef OPENGAPPS_TYPE
    OPENGAPPS_TYPE := STABLE
endif
ifeq ($(OPENGAPPS_TYPE), ALPHA)
    GAPPS_PRODUCT_PACKAGES += \
        PrebuiltBugle
else
    GAPPS_PRODUCT_PACKAGES += \
        CalculatorGooglePrebuilt \
        CalendarGooglePrebuilt \
        DigitalWellbeing \
        GoogleCalendarSyncAdapter \
        LatinImeGoogle \
        Photos \
        PrebuiltBugle \
        PrebuiltGmail
endif

PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
