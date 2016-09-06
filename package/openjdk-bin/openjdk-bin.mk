
OPENJDK_BIN_VERSION:=8u102-b14.1-2
OPENJDK_BIN_SITE:=nowhere
OPENJDK_BIN_SOURCE:=openjdk-8-jre-headless_$(OPENJDK_BIN_VERSION)_amd64.tar.gz
define OPENJDK_BIN_BUILD_CMDS
	( \
		set -e && \
		cd $(@D) && \
		for d in *.deb; do \
			dpkg-deb -x "$$d" fs; \
		done; \
	)
endef
define OPENJDK_BIN_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib/jvm
	cp -alf $(@D)/fs/usr/lib/jvm/. $(TARGET_DIR)/usr/lib/jvm
	rm -f $(TARGET_DIR)/usr/bin/java
	ln -s ../lib/jvm/java-8-openjdk-amd64/jre/bin/java \
		$(TARGET_DIR)/usr/bin/java
endef
define OPENJDK_BIN_CLEAN_CMDS
	rm -rf $(@D)/fs
endef
$(eval $(generic-package))
