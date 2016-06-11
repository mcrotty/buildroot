############################################
# fakelinuxdep                             #
############################################

# Use a version which includes 4.1.24 kernel, since it
# can be compiled with gcc6
FAKELINUXDEP_VERSION = pristine-1.5

FAKELINUXDEP_SITE = https://github.com/IRATI/stack.git

# Enable this one to fast download from a local repo
#FAKELINUXDEP_SITE = file:///home/vmaffione/git/nxw/irati

FAKELINUXDEP_SITE_METHOD = git
FAKELINUXDEP_INSTALL_STAGING = YES
FAKELINUXDEP_INSTALL_TARGET = YES
FAKELINUXDEP_DEPENDENCIES =
FAKELINUXDEP_LICENSE = LGPL
FAKELINUXDEP_SUBDIR = fakelinuxdep
FAKELINUXDEP_AUTORECONF = YES
FAKELINUXDEP_AUTORECONF_OPTS = -i -f -Wall

$(eval $(autotools-package))
