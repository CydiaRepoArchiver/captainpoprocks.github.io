include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SnapchatTweaks
SnapchatTweaks_FILES = SnapchatTweaksRootListController.m
SnapchatTweaks_INSTALL_PATH = /Library/PreferenceBundles
SnapchatTweaks_FRAMEWORKS = UIKit
SnapchatTweaks_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SnapchatTweaks.plist$(ECHO_END)
