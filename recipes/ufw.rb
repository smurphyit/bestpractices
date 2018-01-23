#
# Cookbook:: bestpractices
# Recipe:: ufw
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute "Add a firewall rule for SSH access" do
  command 'sudo ufw add ssh'
end

#execute "Enable the firewall" do
#  command 'sudo ufw enable'
#end

