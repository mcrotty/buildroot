############################################
# openjdk                                  #
############################################

OPENJDK_VERSION = b132-03_mar_2014
OPENJDK_SOURCE = openjdk-8-src-$(OPENJDK_VERSION).zip
OPENJDK_SITE = http://www.java.net/download/openjdk/jdk8/promoted/b132
#OPENJDK_SITE_METHOD = http

#OPENJDK_INSTALL_STAGING = YES
OPENJDK_INSTALL_TARGET = YES
OPENJDK_DEPENDENCIES = freetype host-pkgconf
OPENJDK_LICENSE = GPL

define OPENJDK_EXTRACT_CMDS
	$(UNZIP) $(DL_DIR)/$(OPENJDK_SOURCE) -d $(@D)
endef

define OPENJDK_CONFIGURE_CMDS
	cd $(@D)/openjdk && chmod +x configure && ./configure
endef

define OPENJDK_BUILD_CMDS
	make -C $(@D)/openjdk DEBUG_BINARIES=true JOBS=1 LOG=trace all
endef

define OPENJDK_INSTALL_CMDS
	make -C $(@D)/openjdk install
endef

$(eval $(generic-package))
