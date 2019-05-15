ARCHS = armv7 arm64 arm64e
# BUNDLE_NAME = defaults
# defaults_INSTALL_PATH = /Library/Application Support/DopeSettings


include $(THEOS)/makefiles/common.mk
# include ~/theos/makefiles/bundle.mk


TWEAK_NAME = DopeSettings
DopeSettings_FILES = Tweak.xm
DopeSettings_FRAMEWORKS = UIKit


include $(THEOS)/makefiles/common.mk

after-install::
	install.exec "rm -f /private/var/mobile/Library/Preferences/xyz.xninja.dopesettings.plist"
