ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoSwitcherBlur
NoSwitcherBlur_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += noswitcherblur
include $(THEOS_MAKE_PATH)/aggregate.mk
