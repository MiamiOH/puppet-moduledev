#
class moduledev::devtools::fileplacement {

  file { 'initializefiles':
    ensure  => directory,
    recurse => remote,
    replace => false,
    path    => "${moduledev::home_full}/.puppet/${moduledev::modulename}", #find which user, #proxy for gem, #add params class, #path as name, #defined type
    source  => 'puppet:///modules/MiamiOH-moduledev/templates/module',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
  file { 'manifestsfile':
    ensure  => directory,
    replace => false,
    path    => "${moduledev::home_full}/.puppet/manifests",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
  file { 'test.pp':
    ensure  => file,
    replace => false,
    content => "class { '::${moduledev::modulename}': \n}",
    path    => "${moduledev::home_full}.puppet/manifests/test.pp",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
