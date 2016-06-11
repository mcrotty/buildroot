############################################
# rinad-plugins                            #
############################################

RINAD_PLUGINS_VERSION = pristine-1.5

#RINAD_PLUGINS_SITE = https://github.com/IRATI/stack.git
#RINAD_PLUGINS_SITE_METHOD = git

RINAD_PLUGINS_SITE = output/build/fakelinuxdep-pristine-1.5
RINAD_PLUGINS_SITE_METHOD = local

RINAD_PLUGINS_INSTALL_STAGING = YES
RINAD_PLUGINS_INSTALL_TARGET = YES
RINAD_PLUGINS_DEPENDENCIES = host-pkgconf linux
RINAD_PLUGINS_LICENSE = LGPL

RINAD_PLUGINS_MODULE_SUBDIRS = plugins/cherish-urgency plugins/cong_avoidance plugins/lfa plugins/multipath plugins/red

$(eval $(kernel-module))
$(eval $(generic-package))
