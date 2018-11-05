node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'puppet' {
  #include role::master_server
  include pe_repo::platform::ubuntu_1604_amd64
}
