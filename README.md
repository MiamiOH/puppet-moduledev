httpproxy
=============

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
    * [Customize the httpproxy options](#customize-the-httpproxy-options)
3. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Contributors](#contributors)

## Overview

This module was created to streamline proxy management of popular software. It can place and remove
proxies in profile.d, apt, yum, and wget. Currently only http (no https) proxies are supported.

## Usage
    class { '::httpproxy':
      wget            => true,
      profiled        => true,
      packagemanager  => true,
      http_proxy      => 'my.proxy.com',
      http_proxy_port => '80'
    }

Puppet will manage the proxy for the desired software when its boolean is set to true. When a proxy is entered,
puppet will ensure that the proxy is present. If a proxy is left undefined, puppet will remove whatever proxy it
placed (ensure absent). If the boolean is set to false, nothing will be removed or placed.

## Reference

httpproxy uses the Unibets profile.d management module to manage proxies in profile.d. The puppetlabs/inifile
resource is used to manage the yum and wget proxies. The apt proxy is managed via the puppetlabs/apt module.

Please contribute, pull requests are welcome. The more proxies that can be managed the better.

## Limitations

This module has been tested against Puppet 3.8.1, 4, CentOS 5,6,7, and Ubuntu 14.04.  

## Contributors

Chris Edester and Michael Callahan
