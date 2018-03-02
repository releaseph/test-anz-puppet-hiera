include stdlib

node 'anz-puppetmaster'{
		include '::ntp'
		include ::profile::conf 
}
node 'ip-10-111-33-11' {
        include '::ntp'
		include ::role::educ::tng
	}
#node '<LIVE HOSTNAME>' {
#       include '::ntp'
#		include ::role::educ::tng
#	}
	
hiera_include('classes',[])
node default {
  hiera_resources('resources',{})
}