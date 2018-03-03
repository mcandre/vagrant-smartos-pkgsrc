.PHONY: clean-vm clean-boxes clean-vagrant-metadata

all: test

test: test-boot test-install

test-boot:
	vagrant up

test-install:
	vagrant ssh -c "jq --version"

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-boxes clean-vagrant-metadata
