yum_repository 'mlnx-icehouse' do
  description "Mellanox Openstack"
  baseurl "http://www.mellanox.com/downloads/solutions/openstack/icehouse/repo/mlnx-icehouse"
  gpgcheck false
  enabled true  # default
  action :create
end

# TODO openstack-neutron-mellanox is not in the repository mlnx-icehouse
['eswitchd', 'mlnxvif', 'openstack-neutron-mellanox'].each do |pkg|
  package pkg do
    action :install
    provider Chef::Provider::Package::Yum
  end
end

service 'neutron-openvswitch-agent' do
  action [:stop, :disable]
  #before Service['eswitchd']  # disable this before the eswitchd is started.
end

service 'eswitchd' do
  action [:start, :enable]
  notifies :restart, "service[neutron-mlnx-agent]", :immediately
end
 
service 'neutron-mlnx-agent' do
  action [:start, :enable]
  notifies :restart, "service[openstack-nova-compute]", :immediately
end 

service 'openstack-nova-compute' do
  action [:start, :enable]
end 
