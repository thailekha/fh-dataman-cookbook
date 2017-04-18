#
# Cookbook Name:: fh-dataman
# Recipe:: default
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nodejs_feedhenry'

directory '/etc/feedhenry/fh-dataman' do
  owner node['account']['daemon']['user']
  group node['account']['default']['group']
  mode '770'
  recursive true
  action :create
end

service 'fh-dataman' do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true
  subscribes :restart, "template[#{node['fh-dataman']['conf_file']}]", :delayed
end

directory '/var/log/feedhenry/fh-dataman' do
  mode 0750
  owner node['account']['daemon']['user']
  group node['account']['default']['group']
  recursive true
  action :create
end

include_recipe "fh-dataman::#{node['fh-dataman']['install_method']}"
include_recipe 'fh-dataman::conf'