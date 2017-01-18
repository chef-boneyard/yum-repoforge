name 'yum-repoforge'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and onfigures yum-repoforge aka RPMforge'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.1'

depends 'compat_resource', '>= 12.16.3'
depends 'yum-epel'

%w(amazon centos oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-repoforge'
issues_url 'https://github.com/chef-cookbooks/yum-repoforge/issues'
chef_version '>= 12.1' if respond_to?(:chef_version)
