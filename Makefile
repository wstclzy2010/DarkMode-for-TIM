DEBUG = 0

ARCHS = arm64
export THEOS_DEVICE_IP = 127.0.0.1
export THEOS_DEVICE_PORT = 8888
#TARGET = iphone:13


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TIMHookLite

TIMHookLite_FILES = Tweak.xm
#TIMHookLite_FRAMEWORKS = UIKit Foundation
TIMHookLite_CFLAGS = -fobjc-arc

# TARGET_CC = /Users/paigu/Hikari.xctoolchain/usr/bin/clang-8
# TARGET_CXX = /Users/paigu/Hikari.xctoolchain/usr/bin/clang-8
# TARGET_LD = /Users/paigu/Hikari.xctoolchain/usr/bin/clang-8
# _THEOS_TARGET_CFLAGS += -mllvm -enable-allobf
# _THEOS_TARGET_CXXFLAGS += -mllvm -enable-allobf

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 TIM"
