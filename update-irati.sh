#!/bin/bash

# trigger new download
rm dl/fakelinuxdep*

# clean IRATI software build
make fakelinuxdep-dirclean
make linux-dirclean
make librina-dirclean
make rinad-dirclean
make rina-tools-dirclean

# recompile IRATI software
make
