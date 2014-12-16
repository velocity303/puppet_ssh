class ssh::params {
  case $::osfamily {
    'debian': {
       $sshd_config = 'sshd_config'
       $config_path = '/etc/ssh'
       $ssh_package = 'openssh-server'
       $ssh_service = 'ssh'
     }
     'redhat': {
       $sshd_config = 'sshd_config'
       $config_path = '/etc/ssh'
       $ssh_package = 'openssh-server'
       $ssh_service = 'sshd'
     }

     default: {
       fail("The ${module_name} module is not supported on ${::operatingsystem}.")
     }
  }
}
