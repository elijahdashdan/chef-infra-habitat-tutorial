#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
include_recipe 'hardening::default'
if node['os'] == 'linux'
    file '/etc/motd' do
      content node['base']['message']
    end
  
elsif node['os'] == 'windows'
    registry_key "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" do
      values [{:name => 'legalnoticetext', :data => 'node['base']['message']'}]
      action :create
      recursive true
    end
end
