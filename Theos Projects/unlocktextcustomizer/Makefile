ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UnlockTextCustomizer
UnlockTextCustomizer_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += unlocktextcustomizer
include $(THEOS_MAKE_PATH)/aggregate.mk
