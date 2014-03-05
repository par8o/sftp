# Adds and configures sftp chroot users.
#
# Recipe:: chroot_users
# Cookbook:: sftp_server
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: All rights reserved. Do not redistribute.
# Source:: https://github.com/OnBeep/cookbook-sftp_s


include_recipe 'users'


# Add sftp users:
users_manage 'sftp' do
  group_id 2012
  action [ :remove, :create ]
end

# Ensure correct permissions for chrooting sftp users:
data_bag(:users).each do |user|
  user_item = data_bag_item('users', user)
  if user_item['groups'].include?('sftp')
    home = if user_item['home']
      user_item['home']
    else
      File.join('/home', user_item['id'])
    end

    directory home do
      owner 'root'
      group 'root'
    end

    directory File.join(home, 'upload') do
      owner user_item['id']
    end
  end
end
