node.override['yum']['rpmforge']['enabled'] = false
node.override['yum']['rpmforge']['managed'] = true
node.override['yum']['rpmforge-extras']['enabled'] = false
node.override['yum']['rpmforge-extras']['managed'] = true
node.override['yum']['rpmforge-testing']['enabled'] = false
node.override['yum']['rpmforge-testing']['managed'] = true

include_recipe 'yum-repoforge'
