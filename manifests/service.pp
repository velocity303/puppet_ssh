class ssh::service (
  $ssh_service = $ssh::params::ssh_service,
) {
  service {$ssh_service:
    ensure    => running,
    subscribe => Class['ssh::config'],
  }
}
