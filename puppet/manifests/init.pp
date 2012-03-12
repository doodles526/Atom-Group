group { "puppet":
   	ensure => "present",
}

exec { "apt-get update":
	command => "/usr/bin/apt-get update"
}

user { "clstr-usr":
	ensure => "present",
	home => "/home/clstr-usr",
	shell => "/bin/bash"	
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

include ntp
include mpi
