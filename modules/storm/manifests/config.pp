class storm::config {
  require storm::install
  include storm::params

  file { '/etc/storm/storm.yaml':
    require => Package['storm'],
    content => template('storm/storm.yaml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { '/etc/default/storm':
    require => Package['storm'],
    content => template('storm/default.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

}
