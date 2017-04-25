include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = cameracustomizer
cameracustomizer_FILES = cameracustomizerRootListController.m
cameracustomizer_INSTALL_PATH = /Library/PreferenceBundles
cameracustomizer_FRAMEWORKS = UIKit
cameracustomizer_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cameracustomizer.plist$(ECHO_END)
