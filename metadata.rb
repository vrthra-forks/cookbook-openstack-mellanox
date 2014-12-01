name             'openstack-mellanox'
maintainer       'Oregon State University'
maintainer_email 'chef@osuosl.org'
license          'Apache 2.0'
description      'Installs/Configures cookbook-openstack-mellanox'
long_description 'Installs/Configures cookbook-openstack-mellanox'
version          '0.1.0'

%w{ mysql openstack-block-storage openstack-common openstack-compute
  openstack-dashboard openstack-identity openstack-image openstack-network
  openstack-object-storage openstack-ops-database openstack-ops-messaging
  openstack-orchestration openstack-telemetry }.each do |cb|
  depends cb
end
