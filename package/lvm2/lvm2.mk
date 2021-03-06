################################################################################
#
# lvm2
#
################################################################################

LVM2_VERSION = 2.02.159
LVM2_SOURCE = LVM2.$(LVM2_VERSION).tgz
LVM2_SITE = ftp://sources.redhat.com/pub/lvm2/releases
LVM2_INSTALL_STAGING = YES
LVM2_LICENSE = GPLv2, LGPLv2.1
LVM2_LICENSE_FILES = COPYING COPYING.LIB

# Make sure that binaries and libraries are installed with write
# permissions for the owner.
LVM2_CONF_OPTS += \
	--enable-write_install \
	--enable-pkgconfig \
	--enable-cmdlib \
	--enable-dmeventd

# LVM2 uses autoconf, but not automake, and the build system does not
# take into account the CC passed at configure time.
LVM2_MAKE_ENV = CC="$(TARGET_CC)"

ifeq ($(BR2_PACKAGE_READLINE),y)
LVM2_DEPENDENCIES += readline
else
# v2.02.44: disable readline usage, or binaries are linked against provider
# of "tgetent" (=> ncurses) even if it's not used..
LVM2_CONF_OPTS += --disable-readline
endif

ifeq ($(BR2_PACKAGE_LVM2_STANDARD_INSTALL),)
LVM2_MAKE_OPTS = device-mapper
LVM2_INSTALL_STAGING_OPTS = DESTDIR=$(STAGING_DIR) install_device-mapper
LVM2_INSTALL_TARGET_OPTS = DESTDIR=$(TARGET_DIR) install_device-mapper
endif

ifeq ($(BR2_PACKAGE_LVM2_APP_LIBRARY),y)
LVM2_CONF_OPTS += --enable-applib
else
LVM2_CONF_OPTS += --disable-applib
endif

ifeq ($(BR2_arc)$(BR2_m68k),y)
LVM2_CONF_ENV += ac_cv_flag_HAVE_PIE=no
endif

$(eval $(autotools-package))
