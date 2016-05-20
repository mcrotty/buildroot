############################################
# fakelinuxdep                             #
############################################

# Use a version which includes 4.1.24 kernel, since it
# can be compiled with gcc6
FAKELINUXDEP_VERSION = cb5d65c001ad9ee037991630849174146edc9169
FAKELINUXDEP_SITE = https://github.com/IRATI/stack.git
FAKELINUXDEP_SITE_METHOD = git
FAKELINUXDEP_INSTALL_STAGING = YES
FAKELINUXDEP_INSTALL_TARGET = YES
FAKELINUXDEP_DEPENDENCIES =
FAKELINUXDEP_LICENSE = LGPL
FAKELINUXDEP_SUBDIR = fakelinuxdep
FAKELINUXDEP_AUTORECONF = YES
FAKELINUXDEP_AUTORECONF_OPTS = -i -f -Wall

$(eval $(autotools-package))
