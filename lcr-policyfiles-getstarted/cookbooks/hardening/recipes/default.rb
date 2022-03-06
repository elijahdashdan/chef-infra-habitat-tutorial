#
# Cookbook:: hardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['os'] == 'linux'
  include_recipe 'hardening::remediation'
elsif node['os'] == 'windows'
  include_recipe 'windows-hardening'
end
