all: help

help:
	@echo ""
	@echo "  HELP MENU"
	@echo "  Makes a base64 vagrant image with debian, centos, or ubuntu"
	@echo "  Versions:"
	@echo "    Debian 8.2"
	@echo "    CentOS 7.1"
	@echo "    Ubuntu 14.04"
	@echo ""
	@echo "  Usage:"
	@echo "    make {debian|centos|ubuntu}[debug]"
	@echo ""
	@echo "  Add to Vagrant:"
	@echo "    vagrant box add my-box ../packer-makevbox/builds/vagrant/packer-base64-{debian|centos|ubuntu}.box"
	@echo ""

debian: builddebian beep

debiandebug: builddebian-debug beep

centos: buildcentos beep

centosdebug: buildcentos-debug beep

ubuntu: buildubuntu beep

ubuntudebug: buildubuntu-debug beep

builddebian:
	/usr/bin/time -v packer build debian-base64.json

builddebian-debug:
	/usr/bin/time -v packer build -debug -var "headless=false" debian-base64.json

buildcentos:
	/usr/bin/time -v packer build centos-base64.json

buildcentos-debug:
	/usr/bin/time -v packer build -debug -var "headless=false" centos-base64.json

buildubuntu:
	/usr/bin/time -v packer build ubuntu-base64.json

buildubuntu-debug:
	/usr/bin/time -v packer build -debug -var "headless=false" ubuntu-base64.json

beep:
	@echo "beep"
	@aplay /usr/share/sounds/alsa/Front_Center.wav

clean:
	/bin/rm -frv builds/*
	/bin/rm -frv packer_cache/*
