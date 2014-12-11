class user {

  user { 'noc':
    comment   => 'noc team user',
    ensure    => 'present',
    home      => '/home/noc',
    gid       => '1000',
    shell     => '/bin/bash',
    managehome => true,
    groups    => ['admin'],
  }

group { 'admin':
    ensure => 'present',
}
  ssh_authorized_key {
    "noc":
      ensure  => present,
      type    => "ssh-rsa",
      key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDBJhH9Q9XCNGXmz0sNOqlb7II2bpONOHIwsDUA+XYnDjNijFcVLv2tT3h8TwdBPf6a9VEbO/Fwv3JGBI0FMNEiGzY47OOTWpiDk1Ej/BbqRk42ruweUju2V+22puHqtchBldX+rJ5dhLzT8TWOhDptsMU0mdpVFR0aCnpGhIhhoezG6Kb4ooU5QWhU2zxd1sDAHUV+WVHA+6f/oaN1xw+fKkuN8YYSeQGISQbqS5cIHFLsWYCtAcn3Ryj5Imd1jDoIrKqGGSnofY1434GpkS31XXMNRR7jPJnFjDa5taNG45bh0NQ4Zb3DoVki8kTrkIq4KOMcFeqKPneMSCQ9KC+7",
      user    => "noc";
  }

  user { 'antodaniel':
    comment   => 'Anto Daniel',
    ensure    => 'present',
    password    => '$6$2dhhw8U98U$Q4yGxHiO5XC9DNBEFU.mbtiO4OcF7Kt4YKtvcEvdSTg6gwfmjR4x8.mrO1QA4f8LMfAG.fIdKYSdzjfSrklGl0',
    home      => '/home/antodaniel',
    gid       => '1000',
    shell     => '/bin/bash',
    managehome => true,
    groups    => ['sudo'],
  }

  ssh_authorized_key {
    "antodaniel":
      ensure  => present,
      type    => "ssh-rsa",
      key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC5jwiVj+bVtb3ZIQRnQ36kPaRyvhXn9UVC2ecmCtpYJhO6JnsELYu/R8qYnMX5zGQVSgpDnb51kFE1wdTxk8v/d+/75af44Ngfew/ip5OQ3P24Cugsv9YnrOhQ7qUtAwgSAlhd2faDszv/ZyZX/Ck/tSZg2H0txKpvxvgosgluPqq5BEpfJNtQaS8CqfeoZODtvawYUlj4dZZIbmCWFPX08Oc+RJn4iGEglRqC9EXii3EwPvyFJyGO2l4H4nlJVMiqeNqNXIYiki0vlQBuqCsWCfCXl0M3dr5LjUI6oKCSk9g6LcXt+YMzGyCB0ebus7pMKLyhXvZcpg06YRLixlSb",
      user    => "antodaniel";
  }



}
