node 'lb-01.mykezy.com' {
  include ::haproxy
  haproxy::listen { 'puppet00':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '8140',
  }
  haproxy::balancermember { 'master00':
    listening_service => 'puppet00',
    server_names      => 'lb-01.mykezy.com',
    ipaddresses       => 'lb-01.mykezy.com',
    ports             => '8140',
    options           => 'check',
  }
  haproxy::balancermember { 'master01':
    listening_service => 'puppet00',
    server_names      => 'lbl-01.mykezy.com',
    ipaddresses       => 'lbl-01.mykezy.com',
    ports             => '8140',
    options           => 'check',
  }
}
