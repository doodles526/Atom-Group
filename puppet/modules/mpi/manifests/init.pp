class mpi {
	package { 'mpi':
		name => 'openmpi-bin',
		ensure => installed,
		require => Exec['apt-get update']
	}

	file { 'hostfile':
		path => '/etc/openmpi/openmpi-default-hostfile',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/openmpi-default-hostfile.erb'),
	}

	file { 'totalview':
		path => '/etc/openmpi/openmpi-totalview.tcl',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/openmpi-totalview.tcl.erb'),
	}

	file { 'mca-params':
		path => '/etc/openmpi/openmpi-mca-params.conf',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/openmpi-mca-params.conf.erb'),
	}
}
