include stdlib

node 'anz-puppetmaster'{
		include '::ntp'
		include ::profile::conf 
}
#Deploy on Test Cloned Server of TNG
node 'ip-10-111-33-11' {
        include '::ntp'
		include ::role::educ::tng
	}
#Deploy on Staging Server of TNG
node 'ip-10-111-33-7' {
        include '::ntp'
		include ::role::educ::tng
	}
#node '<LIVE HOSTNAME>' {
#       include '::ntp'
#		include ::role::educ::tng_live
#	}
	
hiera_include('classes',[])
node default {
  hiera_resources('resources',{})
}
