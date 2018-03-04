.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-install

test-boot:
	vagrant up

test-install:
	vagrant up
	vagrant ssh -c "jq --version"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
