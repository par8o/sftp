# Installs & Configures SFTP chroot server.
#
# Recipe:: default
# Cookbook:: sftp_server
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: All rights reserved. Do not redistribute.
# Source:: https://github.com/OnBeep/cookbook-sftp_server
#


include_recipe 'obbase'
include_recipe 'openssh'
include_recipe 'sftp_server::chroot_users'
