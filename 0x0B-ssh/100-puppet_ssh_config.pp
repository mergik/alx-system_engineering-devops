# This Puppet manifest configures the SSH client to use a private key for authentication and refuse password authentication

# Install the OpenSSH client package
package { 'openssh-client':
  ensure => installed,
}

# Create the SSH client configuration file
file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => '
    # Use the private key ~/.ssh/school for authentication
    IdentityFile ~/.ssh/school

    # Disable password authentication
    PasswordAuthentication no
  ',
  require => Package['openssh-client'],
}
