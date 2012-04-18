class slurm	{





	
	package{ "slurm-llnl":
		ensure => "installed",
		require => Exec['apt-get update']
}

}
