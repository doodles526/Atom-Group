# Atom Group

Hi all,

You have found the Atom-Group repository. CONGRATS!!!

## Vagrant

Install [Vagrant](http://vagrantup.com/) and download the CentOS 6 VirtualBox image:

	$ gem install vagrant
	$ vagrant box add centos http://vagrant-centos-6.s3.amazonaws.com/centos-6.box

Then to spin up a VM (note: the process will start in the background):

	$ vagrant up

The VM will then be ready to access directly:

	$ vagrant ssh
