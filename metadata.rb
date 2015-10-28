name 'yum-repoforge'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and onfigures yum-repoforge aka RPMforge'
version '0.5.5'
source_url 'https://github.com/chef-cookbooks/yum-repoforge' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-repoforge/issues' if respond_to?(:issues_url)

depends 'yum', '~> 3.2'
depends 'yum-epel'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end
