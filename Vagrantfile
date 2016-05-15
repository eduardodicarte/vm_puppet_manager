# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_FILE_VERSION = 2

Vagrant.configure(VAGRANT_FILE_VERSION) do |config|
   
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  config.vm.synced_folder "webapp/", "/var/www/html/", type: 'nfs'

  config.vm.define :dcpuppetmanager do |dcpuppetmanager|
  	dcpuppetmanager.vm.hostname = "puppetmanager.dicarte.com.br"	
	dcpuppetmanager.vm.network "private_network", ip: "192.168.210.200"
  end

  config.vm.provision "puppet" do |puppet|
	  puppet.environment_path = "environments"
	  puppet.environment = "development"
  end
end
