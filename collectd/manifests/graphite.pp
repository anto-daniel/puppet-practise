class collectd::graphite inherits collectd {
    file{'/etc/collectd/collectd.conf':
       content => template("collectd/collectd.conf"),
    }
}
