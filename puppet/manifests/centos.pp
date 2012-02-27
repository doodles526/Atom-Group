group { "puppet":
        ensure => "present",
}

include ntp
include mpi
