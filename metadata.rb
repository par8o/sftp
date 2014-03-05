name             'sftp_server'
maintainer       'Greg Albrecht'
maintainer_email 'gba@onbeep.com'
license          'All rights reserved. Do not redistribute.'
description      'Installs & Configures sftp chroot server.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'obbase'
depends 'openssh', '~> 1.3.2'
depends 'users', '~> 1.6.0'
