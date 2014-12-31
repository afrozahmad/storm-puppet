class storm::ui {
  require storm::install
  include storm::config
  include storm::params

  # Install ui /etc/default
  storm::service { 'ui':
    start      => 'yes',
    jvm_memory => $storm::params::ui_mem
  }

}
