class storm::nimbus {
  require storm::install
  include storm::config
  include storm::params

  # Install nimbus /etc/default
  storm::service { 'nimbus':
    start      => 'yes',
    jvm_memory => $storm::params::nimbus_mem
  }

}
