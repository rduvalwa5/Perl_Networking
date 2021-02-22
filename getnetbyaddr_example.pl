=begin comment

https://www.tutorialspoint.com/perl/perl_getnetbyaddr.htm
Description
This function returns the information for the network specified by ADDR and type ADDRTYPE in a 
list context: ($name, $aliases, $addrtype, $net)

Return Value
This function returns undef on error otherwise Network address in scalar context and empty 
list on error otherwise Network record (name, aliases, address type, network address) in 
list context.

=cut

#!/usr/bin/perl

use Socket;

$iaddr = inet_aton('127.1'); # or whatever address
print "iaddr = $iaddr\n\n";
#($name, $aliases, $addrtype, $net)  = getnetbyaddr($iaddr, AF_INET);

#print "Name = $name\n";
#print "Aliases = $aliases\n";
#print "Addrtype = $addrtype\n";
#print "Net = $net\n";
