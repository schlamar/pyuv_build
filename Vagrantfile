# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "x64" do |x64|
    x64.vm.box = "chef/centos-6.5"
  end

  config.vm.define "x32" do |x32|
    x32.vm.box = "chef/centos-6.5-i386"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "base.yml"
    ansible.sudo = true
  end
end
