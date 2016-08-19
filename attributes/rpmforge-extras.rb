default['yum']['rpmforge-extras']['repositoryid'] = 'rpmforge-extras'
default['yum']['rpmforge-extras']['description'] = 'RHEL $releasever - RPMforge.net - extras'
if node['platform'] == "amazon"
  default['yum']['rpmforge-extras']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge-extras'
else
  default['yum']['rpmforge-extras']['mirrorlist'] = "http://mirrorlist.repoforge.org/el#{node['platform_version'].to_i}/mirrors-rpmforge-extras"
end
default['yum']['rpmforge-extras']['enabled'] = true
default['yum']['rpmforge-extras']['managed'] = true
default['yum']['rpmforge-extras']['gpgcheck'] = true
default['yum']['rpmforge-extras']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
