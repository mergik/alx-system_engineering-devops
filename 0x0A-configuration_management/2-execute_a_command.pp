# Kill a process named killmenow
exec { 'killmenow':
  command     => 'pkill -f killmenow',
  path        => '/usr/bin:/bin',
  logoutput   => true,
  refreshonly => true,
}

