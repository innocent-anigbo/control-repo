node 'kiki-01.mykezy.com' {
       include motd
  class {'::tomcat':
       xms => '127m',
       xmx => '801m',
       user => 'tomcat',
    }       
}

