############################################
# librina				   #
############################################

LIBRINA_VERSION = pristine-1.5

#LIBRINA_SITE = https://github.com/IRATI/stack.git
#LIBRINA_SITE_METHOD = git
#LIBRINA_SUBDIR = librina

LIBRINA_SITE = output/build/fakelinuxdep-pristine-1.5/librina
LIBRINA_SITE_METHOD = local

LIBRINA_INSTALL_STAGING = YES
LIBRINA_INSTALL_TARGET = YES
LIBRINA_DEPENDENCIES = fakelinuxdep libnl host-pkgconf openssl protobuf linux
LIBRINA_LICENSE = LGPL
LIBRINA_AUTORECONF = YES
LIBRINA_AUTORECONF_OPTS = -i -f -Wall
LIBRINA_CONF_OPTS = --disable-java-bindings --enable-debug --with-sysheaders=${LINUX_DIR}/usr/include

$(eval $(autotools-package))
