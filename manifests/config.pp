

class thunderbird::config inherits thunderbird {
 
 
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