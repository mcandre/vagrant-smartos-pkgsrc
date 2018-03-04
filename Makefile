BOX=vagrant-smartos-pkgsrc.box

.PHONY: clean-boxes clean-vagrant-metadata

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vagrant-metadata

$(BOX): clean-boxes export.Vagrantfile
	vagrant package --output $(BOX) --vagrantfile export.Vagrantfile

install-box-virtualbox: $(BOX)
	vagrant box add --force --name mcandre/vagrant-smartos-pkgsrc $(BOX)
