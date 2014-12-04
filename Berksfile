source 'https://supermarket.chef.io'

# Base deps
cookbook "apt", ">= 2.3.8"
cookbook "apache2", "< 2.0.0"
cookbook "database", ">= 2.0.0"
cookbook "runit", "1.5.10"
cookbook "statsd", github: "att-cloud/cookbook-statsd"
cookbook "yum", ">= 3.1.4"
cookbook "yum-epel", ">= 0.3.4"

# Openstack deps
%w(openstack-block-storage openstack-common
openstack-object-storage openstack-ops-database openstack-ops-messaging
openstack-orchestration openstack-telemetry openstack-identity openstack-image
openstack-network openstack-compute openstack-dashboard).each do |cb|
  cookbook cb,
    github: "stackforge/cookbook-#{cb}",
    branch: "stable/icehouse"
end

metadata
