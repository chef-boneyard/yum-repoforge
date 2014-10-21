# The default recipe takes over yum_globalconfig[/etc/yum.conf]
# Test to make sure the package manager still works.

@test "test rpmforge is disabled" {
  sudo cat /etc/yum.repos.d/rpmforge.repo  | grep 'enabled=0'
}
