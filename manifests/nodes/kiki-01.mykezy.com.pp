node 'kiki-01.mykezy.com' {
       include motd
  class {'::tomcat':
       xms => '53m',
       xmx => '801m',
       user => 'tomcat',
    }       
}

