default['yum']['rpmforge']['repositoryid'] = 'rpmforge'
default['yum']['rpmforge']['description'] = 'RHEL $releasever - RPMforge.net - dag'
case platform_version.to_i
when 5
  default['yum']['rpmforge']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/master/el5/mirrors-repoforge'
when 6, 2013, 2014, 2015, 2016
  default['yum']['rpmforge']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/master/el6/mirrors-repoforge'
when 7
  default['yum']['rpmforge']['mirrorlist'] = 'https://raw.githubusercontent.com/davidhrbac/mirrorlist/master/el7/mirrors-repoforge'
end
default['yum']['rpmforge']['enabled'] = true
default['yum']['rpmforge']['managed'] = true
default['yum']['rpmforge']['gpgcheck'] = true
default['yum']['rpmforge']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
