default['yum']['rpmforge']['repositoryid'] = 'rpmforge'
default['yum']['rpmforge']['description'] = 'RHEL $releasever - RPMforge.net - dag'
case node['platform']
when 'amazon'
  default['yum']['rpmforge']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge'
  case node['platform_version'].to_i
  when 5
    default['yum']['rpmforge']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el5/mirrors-rpmforge'
  when 6
    default['yum']['rpmforge']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge'
  when 7
    default['yum']['rpmforge']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el7/mirrors-rpmforge'
  end
end

default['yum']['rpmforge']['enabled'] = true
default['yum']['rpmforge']['managed'] = true
default['yum']['rpmforge']['gpgcheck'] = true
default['yum']['rpmforge']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
