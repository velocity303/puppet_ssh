class ssh::params {
  case $::operatingsystem {
    'Ubuntu': {
       $sshd_config = 'sshd_config'
       $config_path = '/etc/ssh'
       $ssh_package = 'openssh-server'
       $ssh_service = 'ssh'
     }
     default: {
       fail("The ${module_name} module is not supported on ${::operatingsystem}.")
     }
  }
}
