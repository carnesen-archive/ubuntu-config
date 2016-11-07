# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.provision "shell", path: "bin/provision.sh"

  config.vm.network "forwarded_port", guest: 80, host: 10080
  config.vm.network "forwarded_port", guest: 443, host: 10443

  config.vm.provider "virtualbox" do |vb|
   vb.memory = "2048"
  end

end
