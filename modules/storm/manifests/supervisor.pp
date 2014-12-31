class storm::supervisor {
  require storm::install
  include storm::config
  include storm::params

  # Install supervisor /etc/default
  storm::service { 'supervisor':
    start      => 'yes',
    jvm_memory => $storm::params::supervisor_mem
  }

}
