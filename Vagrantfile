# -*- coding: utf-8 -*-
# -*- mode: ruby -*-
# vi: set ft=ruby :


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    if Vagrant.has_plugin? "copy_my_conf"
        config.vm.provision :copy_my_conf do |copy_conf|
            copy_conf.ssh
        end
    end

    config.vm.provider "virtualbox" do |v|
        v.gui = true
        v.memory = 2048
    end

    config.vm.provider "vmware_fusion" do |v|
        v.gui = true
        v.vmx["memsize"] = "2048"
    end

    config.vm.define "trusty" do |c|
        c.vm.box = "box-cutter/ubuntu1404-desktop"
    end
end
