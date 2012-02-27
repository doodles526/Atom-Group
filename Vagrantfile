# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "centos"

    # Ensure that VM is emulating 64 bit
    config.vm.customize [
    	"modifyvm", :id,
	"--ostype", "RedHat_64"
    ]

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    config.vm.box_url = "https://github.com/downloads/doodles526/Atom-Group/centos.box"

    # Boot with a GUI so you can see the screen. (Default is headless)
    # config.vm.boot_mode = :gui

    # Assign this VM to a host-only network IP, allowing you to access it
    # via the IP. Host-only networks can talk to the host machine as well as
    # any other machines on the same network, but cannot be accessed (through this
    # network interface) by any external networks.
    # config.vm.network :hostonly, "33.33.33.10"

    # Assign this VM to a bridged network, allowing you to connect directly to a
    # network using the host's network device. This makes the VM appear as another
    # physical device on your network.
    # config.vm.network :bridged

    # Forward a port from the guest to the host, which allows for outside
    # computers to access the VM, whereas host only networking does not.
    # config.vm.forward_port 80, 8080

    # Share an additional folder to the guest VM. The first argument is
    # an identifier, the second is the path on the guest to mount the
    # folder, and the third is the path on the host to the actual folder.
    # config.vm.share_folder "v-data", "/vagrant_data", "../data"

    # Enable provisioning with Puppet stand alone.  Puppet manifests
    # are contained in a directory path relative to this Vagrantfile.
    # You will need to create the manifests directory and a manifest in
    # the file base.pp in the manifests_path directory.
    config.vm.provision :puppet do |puppet|
	puppet.manifests_path = "puppet/manifests"
	puppet.manifest_file  = "centos.pp"
	puppet.module_path    = "puppet/modules"
    end
end
