# == Class: echoes_alert_postgresql::params
#
# This is a container class with default parameters for echoes_alert_postgresql classes.
class echoes_alert_postgresql::params {
  $name = 'postgresql'

  $branch      = 'master'
  $dbname      = 'echoes'
  $install_dir = "/opt/echoes-alert/${name}"
  $ipv4acls    = []
  $password    = 'echoes'
  $user        = 'echoes'
  $version     = 'latest'

  $binary_path = "${install_dir}/bin"
}
