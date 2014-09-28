


class thunderbird::params {
  $default_thunderbird_path = '/usr/lib64/thunderbird'
  $default_pref_path = '/defaults/pref'
  $config_template = 'thunderbird/thunderbird.cfg.erb'
  $package_ensure    = 'present'
  $default_package_name = ['thunderbird']
  
  
  $ldap_dir_uri = "mail"
  $ldap_server = "mail"
  $ldap_base = "dc=example"
  
  $imap_server = "mail"
  $smtp_server = "mail"
  $organization = "Example Inc."
  $account_description = "Example"
  
  $kerberos_domain = ".example.com"
  
  
    case $::osfamily {
      'RedHat': {
        $thunderbird_path  = $default_thunderbird_path
        $package_name      = $default_package_name
        $pref_path         = $default_pref_path
        
        }
        
       default: {
         fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
    
      
  }
}
