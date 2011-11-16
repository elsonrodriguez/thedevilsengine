class debian {
	
	#this may be a good time for a define	     
    file { 'dotdeb.list': 
    	path   => '/etc/apt/sources.list.d/dotdeb.list',
        source => 'puppet:///modules/debian/dotdeb.list',
        owner  => 'root',
        group  => 'root',
        mode   => 644,
    }

    file { 'backports.list': 
    	path   => '/etc/apt/sources.list.d/backports.list',
        source => 'puppet:///modules/debian/backports.list',
        owner  => 'root',
        group  => 'root',
        mode   => 644,
    }
   
}
