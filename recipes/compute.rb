include_recipe "openstack-common"
include_recipe "openstack-mellanox"

%w[eswitchd mlnxvif openstack-neutron-mellanox].each do |pkg|
  package pkg
end

service 'neutron-openvswitch-agent' do
  action [:stop, :disable]
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
