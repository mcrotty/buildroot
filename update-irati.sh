#!/bin/bash

# trigger new download
rm dl/fakelinuxdep*

# clean IRATI software build
make fakelinuxdep-dirclean
make linux-dirclean
make librina-dirclean
make rinad-dirclean
make rina-tools-dirclean

# Recompile IRATI software. Modify package/fakelinuxdep/fakelinuxdep.mk to
# speed-up download by using local repo
make
