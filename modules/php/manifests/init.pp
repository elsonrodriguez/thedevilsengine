class php {
    package { 'php5-common':
        ensure   => latest,
        require => Class['debian'],
	}
}

class php::fpm inherits php {
    package { 'php5-fpm':
        ensure  => latest,
        require => Class['debian'],
	}
    
    file { 'www.conf':
        path    => "/etc/php5/fpm/pool.d/www.conf",
    	content => template("php/www.conf.erb"),
    	require => Package['php5-fpm'],
    }
    
    service { 'php-fpm':
    	ensure    => running,
    	require   => File['www.conf'],
    	subscribe => File['www.conf'],
    }

}
