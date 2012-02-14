# Atom Group

Hi all,

You have found the Atom-Group repository. CONGRATS!!!

## Vagrant

Install [Vagrant](http://vagrantup.com/) and download the Ubuntu Lucid 32bit VirtualBox image:

	$ gem install vagrant
	$ vagrant box add base http://files.vagrantup.com/lucid32.box

Then to spin up a VM:

	$ vagrant up

The VM should soon be ready to access:

	$ vagrant ssh
