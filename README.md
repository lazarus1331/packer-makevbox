# packer-makevbox:chef+docker
packer builders for base64 Vagrant boxes with Debian, CentOS, or Ubuntu. Includes Ansible, Chef, and Docker.

# Usage
	HELP MENU
	Makes a base64 vagrant image with debian, centos, or ubuntu
    Also installs Ansible, Chef, Docker
	Versions:
	    Debian 8.2
	    CentOS 7.1
	    Ubuntu 15.04
	
    Usage:
	    make {debian|centos|ubuntu}[debug]
    
    Add to Vagrant:
	    vagrant box add my-box ../packer-makevbox/builds/vagrant/packer-{debian|centos|ubuntu}64-ACD.box
    

# Credits
based upon packer-debian: https://github.com/joshuacox/packer-debian.git
