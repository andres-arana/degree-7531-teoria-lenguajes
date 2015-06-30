# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty32"

  # Provision the development environment
  config.vm.provision :shell, path: "Vagrantprov", privileged: false

  # Add more virtual memory
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end
end

