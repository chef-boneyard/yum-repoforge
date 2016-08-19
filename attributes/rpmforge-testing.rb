default['yum']['rpmforge-testing']['repositoryid'] = 'rpmforge-testing'
default['yum']['rpmforge-testing']['description'] = 'RHEL $releasever - RPMforge.net - testing'
if node['platform'] == "amazon"
  default['yum']['rpmforge-testing']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge-testing'
else
  default['yum']['rpmforge-testing']['mirrorlist'] = "http://mirrorlist.repoforge.org/el#{node['platform_version'].to_i}/mirrors-rpmforge-testing"
end
default['yum']['rpmforge-testing']['enabled'] = true
default['yum']['rpmforge-testing']['managed'] = false
default['yum']['rpmforge-testing']['gpgcheck'] = true
default['yum']['rpmforge-testing']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
