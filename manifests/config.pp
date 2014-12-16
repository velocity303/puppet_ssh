class ssh::config (
  $sshd_config = $ssh::params::sshd_config,
  $config_path = $ssh::params::config_path,
) {
  file {"${config_path}/${sshd_config}":
    ensure  => 'present',
    source  => "puppet:///modules/ssh/${sshd_config}",
    require => Class['ssh::install'],
  }
}
