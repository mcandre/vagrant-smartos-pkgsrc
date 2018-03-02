# vagrant-smartos-pkgsrc: a Vagrant box with SmartOS + pkgsrc

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-smartos-pkgsrc

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "pfexec pkgin -y update && pfexec pkgin -y install jq && jq --version"
jq-1.5-1-g940132e-dirty
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
