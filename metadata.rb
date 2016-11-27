name 'yum-repoforge'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and onfigures yum-repoforge aka RPMforge'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.0'
source_url 'https://github.com/chef-cookbooks/yum-repoforge'
issues_url 'https://github.com/chef-cookbooks/yum-repoforge/issues'

depends 'compat_resource', '>= 12.14.7'
depends 'yum-epel'

%w(amazon centos oracle redhat scientific).each do |os|
  supports os
end

chef_version '>= 12.1'
