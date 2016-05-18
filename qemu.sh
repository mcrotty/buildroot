#!/bin/sh

qrun -o stdio -m 90 --kernel output/images/bzImage --initramfs output/images/rootfs.cpio
