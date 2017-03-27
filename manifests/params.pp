class ntp::params {
   $package_name = 'ntp'
   $pacage_ensure = 'present'
   $config_name = 'ntp.conf'
   $config_file_mode ='0664'
   $servers = ['0.centos.pool.ntp.org','1.centos.pool.ntp.org','2.centos.pool.ntp.org']
   $service_enable = true
   $service_ensure = running
   $service_hasstatus = true
   $service_hasrestart = true

  $service_name = $facts['os']['family'] ? {
  	'Debian' => 'ntp',
        default => 'ntpd',
  	}
}
