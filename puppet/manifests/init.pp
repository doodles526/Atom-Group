<<<<<<< HEAD:puppet/manifests/centos.pp
group {"puppet":
	ensure => "present"
	}

#include ntp
#include mpi
include ssh
=======
group { "puppet":
   	ensure => "present",
}

exec { "apt-get update":
	command => "/usr/bin/apt-get update"
}
>>>>>>> a42f126357bc8a5916cdd933fb34498907562426:puppet/manifests/init.pp

user { "clstr-usr":
	ensure => "present",
	home => "/home/clstr-usr",
<<<<<<< HEAD:puppet/manifests/centos.pp
	shell => "/bin/bash",	
	password => '$6$g6/Ighfv$L4y63oByk0RiQmCtoPGlbG2IOX1wkjrusElnAJBlKESOXTAG27NFJVZ8hczbSN0roWLzzNxOvpyP1ijU5vR8X1'	
}



group{ "clstr-usr":
	ensure => "present",
=======
	shell => "/bin/bash"	
}

group { "clstr-usr":
>>>>>>> a42f126357bc8a5916cdd933fb34498907562426:puppet/manifests/init.pp
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

include ntp
include mpi
