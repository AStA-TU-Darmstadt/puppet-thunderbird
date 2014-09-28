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
    
    
  /*anchor { 'thunderbird::begin': } ->
  class { '::thunderbird::install': } ->
  class { '::thunderbird::config': } ~>
  anchor { 'ntp::end': }
   
    */

}
