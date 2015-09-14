# packer-makevbox
packer builders for base64 Vagrant boxes with Debian, CentOS, or Ubuntu

# Usage
	HELP MENU
	Makes a base64 vagrant image with debian, centos, or ubuntu
	Versions:
	    Debian 8.2
	    CentOS 7.1
	    Ubuntu 15.04
	
    Usage:
	    make {debian|centos|ubuntu}[debug]
    
    Add to Vagrant:
	    vagrant box add my-box ../packer-makevbox/builds/vagrant/packer-base64-{debian|centos|ubuntu}.box
    

# Credits
based upon packer-debian: https://github.com/joshuacox/packer-debian.git
