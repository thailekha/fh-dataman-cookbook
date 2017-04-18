#
# Cookbook Name:: fh-appstore
# Recipe:: conf
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

node.override['fh-appstore']['conf']['coreUrl'] = "http://#{node['feedhenry_common']['env']['millicore']['fqdn']}"
node.override['fh-appstore']['conf']['environment'] = node['fh-appstore']['install_method'] == "source" ? "development" : "production"

node.override['fh-appstore']['conf']['logger'] = begin
  {"name"=>"appstore", "streams"=>[{"type"=>"file", "stream"=>"file", "path"=>"/var/log/feedhenry/fh-appstore/fh-appstore.log", "level"=>"info"}, {"type"=>"raw", "src"=>true, "level"=>"debug", "colorize"=>true}]}
end

feedhenry_conf 'fh-appstore' do
  conf_file node['fh-appstore']['conf_file']
end