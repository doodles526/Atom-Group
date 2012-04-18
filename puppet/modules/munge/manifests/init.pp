class munge	{

	package{ 
		"munge": 
		ensure => installed,
		before => File["/etc/munge", "/var/lib/munge", "/var/log/munge", "/var/run/munge", "munge.key"],
		require => Exec['apt-get update'],


	}
	
	##########Setting nescessary permissions and ownership###########
	file{ "/etc/munge":
		owner => "root",
		mode => 0700,
		before => Exec["munged"],
		ensure => "present"
}

	file{ "/var/lib/munge":
		owner => "root",
		mode => 0711,
		before => Exec["munged"],
		ensure => "present"
	}
	
	file{ "/var/log/munge":
		owner => "root",
		mode => 0700,
		before => Exec["munged"],
		ensure => "present"
	}

	file{ "/var/run/munge":
		owner => "root",
		mode => 0755,
		before => Exec["munged"],
		ensure => "present"
	}
	################################################################	
	


	#move authintication file to the nodes
	file{ "munge.key":
		path => "/etc/munge/munge.key",
		mode => 0400,
		owner => "root",
		source => "puppet:///modules/munge/munge.key",
		before => Exec["munged"]

	}	
	
	exec{ "munged":
		command => "/usr/sbin/munged",
		user => root,
		require => User['clstr-usr']		
	}

}
