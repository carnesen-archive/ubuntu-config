#!/bin/bash

if [ -z "${1}" ]; then
 	echo "Usage: ${0} <x>"
 	echo "Formats /dev/xvd<x>"
 	exit 1
fi

drive_letter=${1}

lsblk --output NAME,FSTYPE | grep xvd${drive_letter}1 | grep ext4
if [ $? -eq 0 ]; then
	echo "xvd${drive_letter} is already formatted"
else
	parted -s /dev/xvd${drive_letter} mklabel MSDOS
	parted -s /dev/xvd${drive_letter} mkpart primary 2048s 100%
	mkfs.ext4 /dev/xvd${drive_letter}1
fi
