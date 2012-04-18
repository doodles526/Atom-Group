class ssh {

case $operatingsystem {
    /RedHat|CentOS/: {
      package { "openssh":
        ensure => installed,
        alias => "ssh",
      	require => Exec['apt-get update']
	  }
    }
    /Debian|Ubuntu/: {
      package { "ssh":
        ensure => installed,
		require => Exec['apt-get update']
      }
    }
  }

  service { "ssh":
    ensure => running,
    hasrestart => true,
    pattern => "/usr/sbin/sshd",
    require => Package["ssh"],
  }

  file { "/etc/ssh/ssh_known_hosts":
    ensure => present,
    mode => 0644,
    owner => "root",
  }



}    
