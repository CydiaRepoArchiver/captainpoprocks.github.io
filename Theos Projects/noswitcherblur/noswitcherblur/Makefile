include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NoSwitcherBlur
NoSwitcherBlur_FILES = NoSwitcherBlurRootListController.m
NoSwitcherBlur_INSTALL_PATH = /Library/PreferenceBundles
NoSwitcherBlur_FRAMEWORKS = UIKit
NoSwitcherBlur_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NoSwitcherBlur.plist$(ECHO_END)
