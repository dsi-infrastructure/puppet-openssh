# class openssh
#
class openssh {
  package { 'openssh-server':
    ensure => installed,
  }

  file { '/etc/ssh/sshd_config':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('openssh/sshd_config.erb'),
    notify  => Service['ssh'],
    require => Package['openssh-server'],
  }

  file { '/etc/issue.net':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/openssh/issue.net',
    require => Package['openssh-server'],
  }

  service { 'ssh':
    ensure  => running,                                                                 
    enable  => true,                                                                    
    require => Package['openssh-server'],                                                        
  }
}
