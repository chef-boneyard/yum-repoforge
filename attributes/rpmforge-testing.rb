default['yum']['rpmforge-testing']['repositoryid'] = 'rpmforge-testing'
default['yum']['rpmforge-testing']['description'] = 'RHEL $releasever - RPMforge.net - testing'
case platform_version.to_i
when 5
  default['yum']['rpmforge-testing']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/blob/master/el5/mirrors-repoforge-testing'
when 6, 2013, 2014, 2015, 2016
  default['yum']['rpmforge-testing']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/blob/master/el6/mirrors-repoforge-testing'
when 7
  default['yum']['rpmforge-testing']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/blob/master/el7/mirrors-repoforge-testing'
end
default['yum']['rpmforge-testing']['enabled'] = false
default['yum']['rpmforge-testing']['managed'] = false
default['yum']['rpmforge-testing']['gpgcheck'] = true
default['yum']['rpmforge-testing']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
