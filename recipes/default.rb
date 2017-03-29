#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'httpd::install'
include_recipe 'httpd::configuration'

service 'httpd' do
  action [:enable, :start]
end
