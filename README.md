# Atom Group

Hi all,

You have found the Atom-Group repository. CONGRATS!!!

## Vagrant

Install [Vagrant](http://vagrantup.com/) and download the CentOS 6 VirtualBox image:

	$ gem install vagrant
	$ vagrant box add centos http://vagrant-centos-6.s3.amazonaws.com/centos-6.box

Then to spin up a VM:

	$ vagrant up

The VM should soon be ready to access:

	$ vagrant ssh
