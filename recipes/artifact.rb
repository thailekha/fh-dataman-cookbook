#
# Cookbook Name:: fh-appstore
# Recipe:: source
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#

include_recipe "fh-artifact"

feedhenry_node_artifact('fh-appstore') do
  service_name 'fh-appstore'
end