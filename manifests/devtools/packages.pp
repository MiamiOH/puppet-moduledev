#
class moduledev::devtools::packages {

  package { 'librarian-puppet':
    ensure   => latest,
    provider => gem,
  }
  package { $moduledev::params::packages:
    ensure => installed,
  }
}
