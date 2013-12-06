# Encoding: utf-8

name             'yum-repoforge'
maintainer       'apachev2'
maintainer_email 'Sean OMeara <someara@opscode.com>'
license          'All rights reserved'
description      'Installs/Configures yum-repoforge'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum-epel'
