#
# Cookbook:: bestpractices
# Recipe:: tunables
#
# Copyright:: 2018, The Authors, All Rights Reserved.
cookbook_file '/etc/sysctl.conf' do
  source 'sysctl.conf'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

#execute "Reload sysctl" do
#  command 'sudo sysctl -p'
#end

