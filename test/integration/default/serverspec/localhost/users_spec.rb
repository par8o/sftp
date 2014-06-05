# Tests for chroot_users Recipe.
#
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/OnBeep/cookbook-sftp
#


require 'spec_helper'


describe user('sftpuser') do
  it { should exist }
  it { should belong_to_group 'sftp' }
  it { should have_home_directory '/home/sftpuser' }
  it { should have_login_shell '/bin/false' }
end

describe file('/home/sftpuser') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/home/sftpuser/upload') do
  it { should be_directory }
  it { should be_owned_by 'sftpuser' }
  it { should be_writable.by_user('sftpuser') }
end

describe group('sftp') do
  it { should exist }
end

describe file('/home/sftpuser/.ssh/') do
  it { should be_directory }
end

describe file('/home/sftpuser/.ssh/authorized_keys') do
  it { should be_file }
end
