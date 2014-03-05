name             'sftp'
maintainer       'Greg Albrecht'
maintainer_email 'gba@onbeep.com'
license          'Apache License, Version 2.0'
description      'Installs & Configures sftp chroot server.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'chef-solo-search', '~> 0.5.1'
depends 'openssh', '~> 1.3.2'
depends 'users', '~> 1.6.0'
