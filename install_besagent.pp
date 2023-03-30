class besagent {
  file { '/etc/opt/BESClient/':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  file { '/etc/opt/BESClient/masthead.afxm':
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => '/opt/masthead.afxm',
  }
  package { 'BESAgent':
    ensure    => installed,
    source    => '/opt/BESAgent-10.0.8.37-rhe6.x86_64.rpm',
    require   => [File['/etc/opt/BESClient/'], File['/etc/opt/BESClient/masthead.afxm']],
    provider  => 'rpm',
    allowcdrom => true,
  }
  service { 'besclient':
    ensure => 'running',
    enable => true,
    require => Package['BESAgent'],
  }
}

include besagent
