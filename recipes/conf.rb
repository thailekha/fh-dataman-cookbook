#
# Cookbook Name:: fh-dataman
# Recipe:: conf
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

node.override['fh-dataman']['conf']['coreUrl'] = "http://#{node['feedhenry_common']['env']['millicore']['fqdn']}"
node.override['fh-dataman']['conf']['environment'] = node['fh-dataman']['install_method'] == "source" ? "development" : "production"

node.override['fh-dataman']['conf']['logger'] = begin
  {"name"=>"appstore", "streams"=>[{"type"=>"file", "stream"=>"file", "path"=>"/var/log/feedhenry/fh-dataman/fh-dataman.log", "level"=>"info"}, {"type"=>"raw", "src"=>true, "level"=>"debug", "colorize"=>true}]}
end

feedhenry_conf 'fh-dataman' do
  conf_file node['fh-dataman']['conf_file']
end