include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = UnlockTextCustomizer
UnlockTextCustomizer_FILES = UnlockTextCustomizerRootListController.m
UnlockTextCustomizer_INSTALL_PATH = /Library/PreferenceBundles
UnlockTextCustomizer_FRAMEWORKS = UIKit
UnlockTextCustomizer_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/UnlockTextCustomizer.plist$(ECHO_END)
