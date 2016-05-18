#!/bin/sh

ssh -p 20090 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o IdentityFile=irati_rsa root@localhost
