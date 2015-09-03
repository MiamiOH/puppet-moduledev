# init.pp
# Manages http proxies

# Defines the httpproxy class. Sets the $http_proxy and $http_proxy_port variable to null.
class moduledev (
  $modulename = undef,
  $initialize = undef,
  $user       = undef,
) inherits moduledev::params {

  $home_full = join([$moduledev::params::home_path, $user], '/')

  include ::git
  include ::moduledev::devtools::packages
  if $initialize { include ::moduledev::devtools::fileplacement }

}
