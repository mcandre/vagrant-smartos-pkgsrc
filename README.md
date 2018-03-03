# vagrant-smartos-pkgsrc: a Vagrant box with SmartOS + pkgsrc

# DISCLAIMER

Currently broken due to Vagrant dropping installation media discs on export.

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-smartos-pkgsrc

# EXAMPLE

```console
$ cd test
$ vagrant up
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-smartos-pkgsrc.box
```
