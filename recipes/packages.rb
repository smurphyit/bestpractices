#
# Cookbook:: bestpractices
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package %w(screen tcpdump ufw unattended-upgrades vlc) do
  action :install
end

package 'unattended-upgrades' do
action :reconfig
end
