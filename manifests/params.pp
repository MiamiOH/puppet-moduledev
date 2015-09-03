# params.pp

### setting packages ###
class moduledev::params {
  case $::osfamily {
    'Redhat': {
      $packages = ['gcc', 'gcc-c++', 'ruby-devel', 'zlib-devel']
      $home_path = '/home/'
    }

    'Debian': {
      $packages = ['gcc', 'g++', 'make', 'ruby-dev', 'zlib1g-dev']
      $home_path = '/home'
    }

    'Darwin': {
      $home_path = '/Users'
    }

    default: { fail('OS family not supported') }
  }
}
