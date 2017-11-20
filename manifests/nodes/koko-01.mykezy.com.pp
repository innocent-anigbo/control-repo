node 'koko-01.mykezy.com' {
       include motd
  class {'::tomcat':
       xms => '53m',
       xmx => '801m',
       user => 'tomcat',
    }       
  class { 'apache':                # use the "apache" module
          default_vhost => false,        # don't use the default vhost
          default_mods => false,         # don't load default mods
          mpm_module => 'prefork',        # use the "prefork" mpm_module
    }
      include apache::mod::php        # include mod php
      apache::vhost { 'koko-01.mykezy.com':  # create a vhost called "example.com"
        port    => '80',               # use port 80
        docroot => '/var/www/html',     # set the docroot to the /var/www/html
    }
  class { 'mysql::server':
        root_password => 'password',
    }
  file { 'info.php':                                # file resource name
        path => '/var/www/html/info.php',               # destination path
        ensure => file,
        require => Class['apache'],                     # require apache class be used
        content => '<?php  phpinfo(); ?>',  # specify location of file to be copied
  }
}

