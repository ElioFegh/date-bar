ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = datebar

datebar_FILES = Tweak.x
datebar_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += datebar
include $(THEOS_MAKE_PATH)/aggregate.mk
