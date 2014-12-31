define storm::service(start = 'no', jvm_memory = '768m', opts = []) {

  file { "/etc/default/storm-${name}":
    require => Package['storm'],
    content => template('storm/default-service.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service["storm-${name}"], 
  }
  
  service { "storm-${name}":
    ensure  => "running",
    enable  => "true",
    provider => "upstart",
    require => Package["storm"],
  }

}
