# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
	config.vm.define :master do |master_config|	
	    # Every Vagrant virtual environment requires a box to build off of.
	    master_config.vm.box = "Debian"

	    # Ensure that VM is emulating 64 bit
	    master_config.vm.customize [
		"modifyvm", :id,
		"--ostype", "Debian"
	   ]

	    # The url from where the 'config.vm.box' box will be fetched if it
	    # doesn't already exist on the user's system.
	    master_config.vm.box_url = "http://mathie-vagrant-boxes.s3.amazonaws.com/debian_squeeze_32.box"

	    master_config.vm.provision :puppet do |puppet|
			puppet.manifests_path = "puppet/manifests"
			puppet.manifest_file  = "init.pp"
			puppet.module_path    = "puppet/modules"
	    end
	end

	config.vm.define :slave do |slave_config|	
	    # Every Vagrant virtual environment requires a box to build off of.
	    slave_config.vm.box = "Debian"

	    # Ensure that VM is emulating 64 bit
	    slave_config.vm.customize [
		"modifyvm", :id,
		"--ostype", "Debian"
	   ]

	    # The url from where the 'config.vm.box' box will be fetched if it
	    # doesn't already exist on the user's system.
	    slave_config.vm.box_url = "http://mathie-vagrant-boxes.s3.amazonaws.com/debian_squeeze_32.box"

	    slave_config.vm.provision :puppet do |puppet|
			puppet.manifests_path = "puppet/manifests"
			puppet.manifest_file  = "init.pp"
			puppet.module_path    = "puppet/modules"
	    end
	end
end
