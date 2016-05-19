############################################
# librina				   #
############################################

LIBRINA_VERSION = master
LIBRINA_SITE = https://github.com/IRATI/stack.git
LIBRINA_SITE_METHOD = git
LIBRINA_INSTALL_STAGING = YES
LIBRINA_INSTALL_TARGET = YES
LIBRINA_DEPENDENCIES = libnl host-pkgconf openssl protobuf linux
LIBRINA_LICENSE = LGPL
LIBRINA_SUBDIR = librina
LIBRINA_AUTORECONF = YES
LIBRINA_AUTORECONF_OPTS = -i -f -Wall
LIBRINA_CONF_OPTS = --disable-java-bindings --enable-debug --with-sysheaders=/home/vmaffione/git/nxw/buildroot/output/build/linux-custom/usr/include

$(eval $(autotools-package))
