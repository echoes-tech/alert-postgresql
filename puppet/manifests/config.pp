# Private class
class echoes_alert_postgresql::config inherits echoes_alert_postgresql {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  file { '/etc/facter':
    ensure => directory,
    owner  => 0,
    group  => 0,
    mode   => '0644'
  }->
  file { '/etc/facter/facts.d':
    ensure => directory,
    owner  => 0,
    group  => 0,
    mode   => '0644'
  }->
  file { '/etc/facter/facts.d/probe_sql_script_last_num.txt':
    ensure => present,
    source => "puppet:///modules/${module_name}/probe_sql_script/last_num_${::hostname}.txt"
  }

  exec { 'Echoes Alert Table Initialisation':
    command => "${echoes_alert_postgresql::binary_path}/table-initialisation -c /etc/wt/wt_config.xml"
  }

  create_resources(sql_exec, sql_archive("/etc/puppet/environments/production/modules/${module_name}/files/postgresql/probe_sql_script", $echoes_alert_postgresql::branch))
}
