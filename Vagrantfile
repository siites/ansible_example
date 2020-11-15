# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #deploy_01
  config.vm.define "deploy_01" do |cfg|
    cfg.vm.box = "ubuntu/xenial64"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "deploy_01"
    end
    cfg.vm.host_name = "deploy01"
    cfg.vm.network "private_network", ip: "10.10.10.11"
    cfg.vm.provision "shell", inline: "apt-get update"
  end

  #deploy_02
  config.vm.define "deploy_02" do |cfg|
    cfg.vm.box = "centos/7"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "deploy_02"
    end
    cfg.vm.host_name = "deploy02"
    cfg.vm.network "private_network", ip: "10.10.10.12"
    cfg.vm.provision "shell", inline: "yum update -y "
    # cfg.vm.provision "shell", path: "ssh_conf_4_cent.sh"
  end

  # #deploy_03
  # config.vm.define "deploy_03" do |cfg|
  #   cfg.vm.box = "mwrock/Windows2012R2"
  #   cfg.vm.provider "virtualbox" do |vb|
  #     vb.name = "deploy_03"
  #     # vb.customize['modifyvm', :id, '--clipboard', 'bidirectional']
  #     vb.gui = false
  #   end
  #   cfg.vm.host_name = "deploy03"
  #   cfg.vm.network "private_network", ip: "10.10.10.13"
  #   cfg.vm.provision "shell", inline: "netsh advfirewall set allprofiles state off"
  # end
end
