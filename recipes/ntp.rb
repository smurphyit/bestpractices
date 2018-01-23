#
# Cookbook:: bestpractices
# Recipe:: ntp
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute "Set the NTP timezone" do
  command 'sudo timedatectl set-timezone America/Halifax'
end

execute "Enable NTP synchronization" do
  command 'sudo timedatectl set-ntp on'
end
