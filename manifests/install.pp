class ssh::install (
  $ssh_package = $ssh::params::ssh_package,
) {
  package {$ssh_package:
    ensure => 'present',
  }
}
