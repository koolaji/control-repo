class role::master_server {
  include profile::base
  include profile::agent_nodes
  include pe_repo::platform::ubuntu_1604_amd64
  include include pe_repo::platform::ubuntu_1604_amd64
}
