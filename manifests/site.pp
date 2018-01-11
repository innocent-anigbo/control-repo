hiera_include('clases')
Package {
      allow_virtual => true,
    }

file {'/home/ec2-user/.ssh/authorized_keys':                                            # resource type file and filename
  ensure  => present,                                               # make sure it exists
  content => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCcK7O2AclH5bcFBiBL/JIqBztXexJctMsIOA8+Xj8Se1qjqxiAD0T2JHb1W8B/b8kNQBc3r25yEsPb+SlHR0lmqNqDaJ/hCd47Ca8mXB3df7r3Y91G4jqwMlhtdneoHfYk2zQz8Ks6RY3j2Qev3Hmo+tWdkeAR6UAvLb1sq7j/nUt40LeG9MCF56KYI5600TjXm1Csq7WTev90A64AnSeApbcJfZuKoLkgqxSwzF8U02F/XaD3oiQMg3ZDMZ+Nr0Eg/+khlo1LKezRltD5hkS4dj83VKmFmAPu7aGI0TwjVO6WYH9N3LNJE8GzmmlUEWW4QlylxDeEAIz2u4zBmyE9 inno-oke-key",
}

node default {}
