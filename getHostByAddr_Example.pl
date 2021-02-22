=begin comment
https://www.tutorialspoint.com/perl/perl_gethostbyaddr.htm

This function Contacts the system's name-resolving service, returning a list of information for the host ADDR of 
type ADDRTYPE, as follows − ($name, $aliases, $addrtype, $length, @addrs)
The @addrs array contains a list of packed binary addresses. In a scalar context, returns the host address.
=cut

#!/usr/bin/perl
use Socket;

	my @addList = ("73.118.226.124","10.0.0.1","10.0.0.126");

	for (@addList){
   $iaddr = inet_aton($_); # or whatever address
   $name  = gethostbyaddr($iaddr, AF_INET);
   print "Host name is $name\n";
	}