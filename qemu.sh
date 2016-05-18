#!/bin/sh

qrun -o stdio -m 90 --kernel irati-bzImage --initramfs output/images/rootfs.cpio
