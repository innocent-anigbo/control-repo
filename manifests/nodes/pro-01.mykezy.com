node 'pro-01.mykezy.com' {
       include motd
       include tomcat
  #class {'::tomcat':
  #     xms => '128m',
  #     xmx => '801m',
  #     user => 'tomcat',
  #  }
}
