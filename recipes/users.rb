#
# Cookbook:: bestpractices
# Recipe:: user
#
# Copyright:: 2018, The Authors, All Rights Reserved.
group 'testgroup' do
  gid '2500'
end  

user 'testuser' do
  manage_home true
  comment 'test_user'
  uid '2500'
  gid 'testgroup'
  home '/home/testuser'
  shell '/bin/bash'
  password '$1$UrFd1iZN$JH34isBBJ3nPhhkAXg3vW.'
end

%w{testgroup sudo}.each do |g|
  group g do
    action :modify
    members "testuser"
    append true
  end
end

directory '/home/testuser/.ssh' do
  owner 'testuser'
  group 'testgroup'
  mode '0700'
  action :create
end

cookbook_file '/home/testuser/.ssh/authorized_keys' do
  source 'testuser.pub'
  owner 'testuser'
  group 'testgroup'
  mode '0644'
end
