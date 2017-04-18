#
# Cookbook Name:: fh-appstore
# Recipe:: default
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nodejs_feedhenry'

directory '/etc/feedhenry/fh-appstore' do
  owner node['account']['daemon']['user']
  group node['account']['default']['group']
  mode '770'
  recursive true
  action :create
end

service 'fh-appstore' do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true
  subscribes :restart, "template[#{node['fh-appstore']['conf_file']}]", :delayed
end

directory '/var/log/feedhenry/fh-appstore' do
  mode 0750
  owner node['account']['daemon']['user']
  group node['account']['default']['group']
  recursive true
  action :create
end

include_recipe "fh-appstore::#{node['fh-appstore']['install_method']}"
include_recipe 'fh-appstore::conf'