#!/bin/sh
#
# Description: Script to apply patch
#

defaults()
{
    patchfile="qemu-dm-wraper.patch"
    # path for v7.0
    destfile="/usr/libexec/xenopsd/qemu-dm-wrapper"
}

do_patch()
{
    if [ -f ${destfile} ]; then
	patch -p0 $destfile < $patchfile
    else
	echo "ERROR: Destination file ${destfile} does not exist"
	exit 1
    fi
}



defaults

do_patch
