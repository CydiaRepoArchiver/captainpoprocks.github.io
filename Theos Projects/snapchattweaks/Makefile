ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SnapchatTweaks
SnapchatTweaks_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 com.toyopagroup.picaboo”
SUBPROJECTS += snapchattweaks
include $(THEOS_MAKE_PATH)/aggregate.mk
