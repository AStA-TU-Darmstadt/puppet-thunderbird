#
class thunderbird::install inherits thunderbird {

  package { $package_name:
    ensure => $package_ensure,
  }

}