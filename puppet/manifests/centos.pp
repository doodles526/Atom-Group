group {"puppet":
	ensure => "present",
	}

include ntp
include mpi

user{"clstr-usr":
	ensure => "present",
	home => "/home/clstr-usr",
	shell => "/bin/bash"	
	}





group{ "clstr-usr":
	gid => 12346,
	require => User["clstr-usr"]
	}

file{	"/home/clstr-usr/":
	ensure => directory,
	owner => "clstr-usr",
	group => "clstr-usr",
	mode => 750,
	require => [User["clstr-usr"], Group["clstr-usr"]]
	}


	
