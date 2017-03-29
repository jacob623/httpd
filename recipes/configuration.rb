#
# Cookbook:: httpd
# Recipe:: configuration
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file node['web']['index_file'] do
  content '<h1>Welcome Home!</h1>'
end
