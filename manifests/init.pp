# Class: thunderbird
#
# This module manages thunderbird
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class thunderbird (
  $config_template = $thunderbird::params::config_template,
  $package_ensure    = $thunderbird::params::package_ensure,
  $package_name = $thunderbird::params::package_name,
  $thunderbird_path = $thunderbird::params::thunderbird_path,
  $pref_path = $thunderbird::params::pref_path,
  $ldap_dir_uri = $thunderbird::params::ldap_dir_uri,
  
  $ldap_server = $thunderbird::params::ldap_server,
  $ldap_base = $thunderbird::params::ldap_base,
  
  $account_description = $thunderbird::params::account_description,
  
  $kerberos_domain = $thunderbird::params::kerberos_domain,
  
  $imap_server = $thunderbird::params::imap_server,
  $smtp_server = $thunderbird::params::smtp_server,
  $organisation = $thunderbird::params::organisation
  
  
  
  ) inherits thunderbird::params {
    
  package { $package_name:
    ensure => $package_ensure,
  }
   file { 'thunderbird-cfg.js':
    path => "${thunderbird_path}${pref_path}/thunderbird-cfg.js",
    source => 'puppet:///modules/thunderbird/thunderbird-cfg.js',
    mode => '0644',
    owner => 'root',
    group => 'root',
    require => File['thunderbird.cfg'],
  }
 
  file { 'thunderbird.cfg':
    path => '${pref_path}/thunderbird.cfg',
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($config_template),
  }

}
