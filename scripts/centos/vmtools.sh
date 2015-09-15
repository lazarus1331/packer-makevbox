#!/bin/bash -eux

yum install -y gcc kernel-devel kernel-headers dkms make bzip2 perl

# why is this hack needed?
ln -s /usr/src/kernels/`ls /usr/src/kernels/` /usr/src/kernels/`uname -r`

KERN_DIR=/usr/src/kernels/`uname -r`
export -p KERN_DIR

mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
sh /tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rmdir /tmp/vbox
rm /home/vagrant/*.iso
