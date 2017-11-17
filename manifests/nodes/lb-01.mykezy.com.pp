node 'lb-01.mykezy.com' {
  include ::haproxy
  haproxy::listen { 'app':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '80',
  }
  haproxy::balancermember { 'app1':
    listening_service => 'app',
    server_names      => 'app1.example.org',
    ipaddresses       => 'app1',
    ports             => '8080',
    options           => 'check',
  }
  haproxy::balancermember { 'app2':
    listening_service => 'app',
    server_names      => 'app2.example.org',
    ipaddresses       => 'app2',
    ports             => '8080',
    options           => 'check',
  }
}
