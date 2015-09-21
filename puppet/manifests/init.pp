class echoes_alert_postgresql (
  $branch      = $echoes_alert_postgresql::params::branch,
  $dbname      = $echoes_alert_postgresql::params::dbname,
  $install_dir = $echoes_alert_postgresql::params::install_dir,
  $ipv4acls    = $echoes_alert_postgresql::params::ipv4acls,
  $password    = $echoes_alert_postgresql::params::password,
  $user        = $echoes_alert_postgresql::params::user,
  $version     = $echoes_alert_postgresql::params::version,
) inherits echoes_alert_postgresql::params {
  validate_string($branch)
  validate_string($dbname)
  validate_absolute_path($install_dir)
  validate_array($ipv4acls)
  validate_string($password)
  validate_string($user)
  validate_string($version)

  anchor { "${module_name}::begin": } ->
  class { "${module_name}::install": } ->
  class { "${module_name}::config": } ->
  anchor { "${module_name}::end": }
}
