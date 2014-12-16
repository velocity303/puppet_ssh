#class to manage ssh service
class ssh inherits ssh::params {
  include ssh::install 
  include ssh::config
  include ssh::service
}
