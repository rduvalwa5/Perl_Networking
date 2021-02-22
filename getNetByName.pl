=begin comment
https://www.tutorialspoint.com/perl/perl_getnetbyname.htm

This function returns the information for the network specified by 
NAME(in list context) ($name, $aliases, $addrtype, $net)
Syntax
Following is the simple syntax for this function −

getnetbyname NAME

Return Value

This function returns undef on error otherwise Network address in scalar context and empty list on error otherwise 
Network record (name, aliases, address type, network address) in list context.
=cut

#!/usr/bin/perl

use Socket;

#my @netName =("www.goog.e.com","comcast.com","Osxair");
@netName =("hsd1.wa.comcast.net","OsxAir.hsd1.wa.comcast.net","loopback","10.0.0.126","c1246895-xps");


for (@netName){
	 print getnetbyname($_);
	($name, $aliases, $addrtype, $net)  = getnetbyname($_);

print "Name = $name\n";
print "Aliases = $aliases\n";
print "Addrtype = $addrtype\n";
print "Net = $net\n";

}

=Begin comment
Use of uninitialized value $name in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 29.
Use of uninitialized value $aliases in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 30.
Use of uninitialized value $addrtype in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 31.
Use of uninitialized value $net in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 32.
Name = 
Aliases = 
Addrtype = 
Net = 
loopbackloopback-net2127Name = loopback
Aliases = loopback-net
Addrtype = 2
Net = 127
Name = 
Aliases = 
Addrtype = 
Net = 
Use of uninitialized value $name in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 29.
Use of uninitialized value $aliases in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 30.
Use of uninitialized value $addrtype in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 31.
Use of uninitialized value $net in concatenation (.) or string at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getNetByName.pl line 32.

=cut