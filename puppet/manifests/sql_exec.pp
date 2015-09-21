define echoes_alert_postgresql::sql_exec (
  $branch = 'master',
  $source = ''
) {
  require echoes_alert_postgresql

  file { $title:
    source => "puppet:///modules/${module_name}/probe_sql_script/${branch}/${source}"
  }->
  exec { "psql -f ${title} echoes":
    path => [ '/bin', '/sbin', '/usr/bin', '/usr/sbin' ],
    user => 'postgres'
  }->
  exec { "rm -f ${title}":
    path => [ '/bin', '/sbin', '/usr/bin', '/usr/sbin' ],
  }
}
