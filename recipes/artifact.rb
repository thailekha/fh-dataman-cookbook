#
# Cookbook Name:: fh-dataman
# Recipe:: source
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

include_recipe "fh-artifact"

feedhenry_node_artifact('fh-dataman') do
  service_name 'fh-dataman'
end