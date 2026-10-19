PRODUCT_VERSION_MAJOR = 17
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
CR_VERSION := 13.0

# Internal version
LINEAGE_VERSION := crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(CR_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := v$(CR_VERSION)-$(shell date +%Y%m%d)

# Keep numeric API/version properties unchanged for updater compatibility.
ifeq ($(CRDROID_PERSONAL_BUILD),true)
LINEAGE_VERSION := $(LINEAGE_VERSION)-UNOFFICIAL-$(CRDROID_PERSONAL_MAINTAINER)
LINEAGE_DISPLAY_VERSION := $(LINEAGE_DISPLAY_VERSION)-UNOFFICIAL-$(CRDROID_PERSONAL_MAINTAINER)
endif

# LineageOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.crdroid.build.version=$(CR_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
