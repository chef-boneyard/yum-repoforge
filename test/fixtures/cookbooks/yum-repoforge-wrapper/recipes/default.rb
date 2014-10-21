node.default['yum']['rpmforge']['enabled'] = false
node.default['yum']['rpmforge']['managed'] = true
include_recipe 'yum-repoforge'
