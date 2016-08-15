default['yum']['rpmforge-testing']['repositoryid'] = 'rpmforge-testing'
default['yum']['rpmforge-testing']['description'] = 'RHEL $releasever - RPMforge.net - testing'
default['yum']['rpmforge-testing']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el5/mirrors-rpmforge-testing' if node['platform_family'] == 'rhel' && node['platform_version'].to_i == 5
default['yum']['rpmforge-testing']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge-testing' if node['platform_family'] == 'rhel' && node['platform_version'].to_i == 6
default['yum']['rpmforge-testing']['mirrorlist'] = 'http://mirrorlist.repoforge.org/el7/mirrors-rpmforge-testing' if node['platform_family'] == 'rhel' && node['platform_version'].to_i == 7
default['yum']['rpmforge-testing']['enabled'] = false
default['yum']['rpmforge-testing']['managed'] = false
default['yum']['rpmforge-testing']['gpgcheck'] = true
default['yum']['rpmforge-testing']['gpgkey'] = 'http://apt.sw.be/RPM-GPG-KEY.dag.txt'
