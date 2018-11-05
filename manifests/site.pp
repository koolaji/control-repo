node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  user{ 'puppet':
    name       => 'puppet',
    groups     => 'puppet',
    managehome => true,
    password   => '$1$wWXejFYb$jK1ULefOHBEsbYsBXR0.V.',
    ensure     => present
  }
}
node 'puppet' {
  include role::master_server
  #include pe_repo::platform::ubuntu_1604_amd64
}
