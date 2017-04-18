#
# Cookbook Name:: fh-appstore
# Recipe:: source
#
# Copyright 2015, FeedHenry
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'fh-artifact'

feedhenry_node_src('fh-appstore') do
  repo_name 'fh-appstore'
end