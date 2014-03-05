# Attributes for SFTP chroot server.
#
# Attributes:: openssh
# Cookbook:: sftp_server
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: All rights reserved. Do not redistribute.
# Source:: https://github.com/OnBeep/cookbook-sftp_server
#


default['openssh']['server']['subsystem'] = 'sftp internal-sftp'
default['openssh']['server']['match'] = {
  'Group sftp' => {
    'ChrootDirectory' => '%h',
    'ForceCommand' => 'internal-sftp',
    'AllowTcpForwarding' => 'no'
  }
}
