hiera_include('clases')
Package {
      allow_virtual => true,
    }

file {'/home/ec2-user/.ssh/authorized_keys':                                            # resource type file and filename
  ensure  => present,                                               # make sure it exists
  content => "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAoY9fj9zwcZMSXF18WtukGqZsQTZt8qYytO43YaQG6Ubm45HOXs4s76YXIMdus1TWna5Xha/QfbAWUuD80I33nxyzd91IzqpLke8R+EGe9NQBM+Hz0fRzt17WPuBWUSrgS8ibURYgP67tBfS5GoGlFzC2+SuujL4eCsRmMHgdn5qvb/SF8LPsRoTwiqdlHkGa2FOAEq/sciYdEQoHvtAKSNYgSTkJWORpkEZ82xuOm9q68buZ+SwWzNVLChYEB5fBBQW7nT9Qdd2Uv0uwRitmHjIcWsHnueP9dVonYHH8kdIA4Zfv7Uipc5OzMO5B04ahxFm2m0BHXioCV9hci+CE2Q== innocent.anigbo@wds.co",  #innocent keys
}


node default {}
