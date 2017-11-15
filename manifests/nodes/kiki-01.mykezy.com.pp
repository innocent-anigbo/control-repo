node 'kiki-01.mykezy.com' {
       include motd
  class {'::tomcat':
       xms => '128m',
       xmx => '801m',
       user => 'tomcat',
    }       
}

