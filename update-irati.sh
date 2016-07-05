#!/bin/bash

cp IRATI_BUILDROOT_CONFIG .config

# trigger new download
rm dl/fakelinuxdep*

# clean IRATI software build
make fakelinuxdep-dirclean
make linux-dirclean
make librina-dirclean
make rinad-dirclean
make rinad-plugins-dirclean
make rina-tools-dirclean

# Recompile IRATI software. Modify package/fakelinuxdep/fakelinuxdep.mk to
# speed-up download by using local repo
make

# Now you should copy the images to the demonstrator location
#cp output/images/* ~/git/vmaffione/nxw/irati-tests/buildroot
