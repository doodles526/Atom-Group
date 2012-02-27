class mpi {
	package { 'mpi':
		name => 'openmpi',
		ensure => installed,
	}

	file { 'hostfile':
		path => '/etc/openmpi-x86_64/openmpi-default-hostfile',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/hostfile.erb'),
	}

	file { 'totalview':
		path => '/etc/openmpi-x86_64/openmpi-totalview.tcl',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/totalview.erb'),
	}

	file { 'mca-params':
		path => '/etc/openmpi-x86_64/openmpi-mca-params.conf',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/mca-params.erb'),
	}

	file { 'vt-java-filter':
		path => '/etc/openmpi-x86_64/vt-java-default-filter.spec',
		ensure => file,
		require => Package['mpi'],
		content => template('mpi/vt-java-filter.erb'),
	}
}
