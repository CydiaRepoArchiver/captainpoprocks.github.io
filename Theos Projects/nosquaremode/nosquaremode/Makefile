include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NoSquareMode
NoSquareMode_FILES = nosquaremodeRootListController.m
NoSquareMode_INSTALL_PATH = /Library/PreferenceBundles
NoSquareMode_FRAMEWORKS = UIKit
NoSquareMode_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NoSquareMode.plist$(ECHO_END)
