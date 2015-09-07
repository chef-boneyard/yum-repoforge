name 'yum-repoforge'
maintainer 'Chef'
maintainer_email 'Sean OMeara <someara@chef.io>'
license 'Apache 2.0'
description 'Installs/Configures yum-repoforge'
version '0.5.3'
source_url 'https://github.com/chef-cookbooks/yum-repoforge'if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-repoforge/issues' if respond_to?(:issues_url)

depends 'yum', '~> 3.2'
depends 'yum-epel'
