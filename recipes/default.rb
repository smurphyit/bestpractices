#
# Cookbook:: bestpractices
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
apt_update 'update'

include_recipe 'bestpractices::ntp'
include_recipe 'bestpractices::packages'
include_recipe 'bestpractices::tunables'
include_recipe 'bestpractices::users'
#include_recipe 'bestpractices::ufw'
