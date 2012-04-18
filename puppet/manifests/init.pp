group {"puppet":
	ensure => "present"
	}

exec { "apt-get update":
        command => "/usr/bin/apt-get update",
#		before => User['clstr-usr']
}


include ntp
include mpi
include ssh
#include munge
#include slurm

user { "clstr-usr":
	ensure => "present",
	home => "/home/clstr-usr",
	shell => "/bin/bash",	
	password => '$6$g6/Ighfv$L4y63oByk0RiQmCtoPGlbG2IOX1wkjrusElnAJBlKESOXTAG27NFJVZ8hczbSN0roWLzzNxOvpyP1ijU5vR8X1'	
}




group { "clstr-usr":
	gid => 12346,
	require => User["clstr-usr"]
}

file { "/home/clstr-usr/":
	ensure => directory,
	owner => "clstr-usr",
	group => "clstr-usr",
	mode => 750,
	require => [User["clstr-usr"], Group["clstr-usr"]]
}


