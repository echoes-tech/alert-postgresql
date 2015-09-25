# Private class
class echoes_alert_postgresql::install inherits echoes_alert_postgresql {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  require wt

  class { 'postgresql::server':
    listen_addresses => '*',
    ipv4acls         => $echoes_alert_postgresql::ipv4acls,
  }

  postgresql::server::db { $echoes_alert_postgresql::dbname:
    user     => $echoes_alert_postgresql::user,
    password => postgresql_password(
      $echoes_alert_postgresql::user,
      $echoes_alert_postgresql::password
    ),
  }

  file { $echoes_alert_postgresql::install_dir:
    ensure => 'directory',
    owner  => 0,
    group  => 0,
    mode   => '0755'
  }->
  file { $echoes_alert_postgresql::binary_path:
    ensure => 'directory',
    owner  => 0,
    group  => 0,
    mode   => '0755'
  }->
  file { "${echoes_alert_postgresql::binary_path}/table-initialisation":
    ensure => 'file',
    owner  => 0,
    group  => 0,
    mode   => '0755',
    source => "puppet:///modules/${module_name}/table-initialisation/${echoes_alert_postgresql::branch}/${echoes_alert_postgresql::version}/table-initialisation"
  }->
  file { "${echoes_alert_postgresql::binary_path}/init_tr.sql":
    ensure => 'file',
    owner  => 0,
    group  => 0,
    mode   => '0755',
    source => "puppet:///modules/${module_name}/table-initialisation/${echoes_alert_postgresql::branch}/${echoes_alert_postgresql::version}/init_tr.sql"
  }
}
