class ssh::config (
  $sshd_config = $ssh::params::sshd_config,
  $config_path = $ssh::params::config_path,
) {
  file {"${config_path}/${sshd_config}":
    ensure  => 'present',
    content  => template("${module_name}/${sshd_config}.erb"),
    require => Class['ssh::install'],
  }
}
