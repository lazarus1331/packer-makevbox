#!/bin/bash -eux
yum install -y epel-release
yum install -y puppet

# Set puppetmaster if environment variable is set
if [ $PUPPET_MASTER ]; then
    /bin/sed -i '/main/a server = $PUPPET_MASTER' /etc/puppet/puppet.conf;
    /etc/init.d/puppet reload;
fi
