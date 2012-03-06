class ntp {
	package { 'ntp':
		ensure => installed,
	}

	service { 'ntp':
		ensure => running,
		enable => true,
		subscribe => File['ntp.conf'],
	}

	file { 'ntp.conf':
		path => '/etc/ntp.conf',
		ensure => file,
		require => Package['ntp'],
		content => template('ntp/ntp_default.erb'),
	}
}
