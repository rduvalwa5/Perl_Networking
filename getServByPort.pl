=begin comment
https://www.tutorialspoint.com/perl/perl_getservbyport.htm

Description

This function Translates the service number PORT for the protocol PROTO, returning the service name in 
a scalar context and the name and associated information in a list context −

($name, $aliases, $port_number, $protocol_name)

This call returns these values based on /etc/services file.
Syntax

Following is the simple syntax for this function −

getservbyport PORT, PROTO

Return Value

This function returns undef on error otherwise service number in scalar context and empty list on error 
otherwise Service record (name, aliases, port number, protocol name) in list context.

=cut

#!/usr/bin/perl

($name, $aliases, $port_number, $protocol_name) = getservbyport(21, "tcp");
print "Name = $name\n";
print "Aliases = $aliases\n";
print "Port Number = $port_number\n";
print "Protocol Name = $protocol_name\n";

($name, $aliases, $port_number, $protocol_name) = getservbyport(22, "tcp");
print "Name = $name\n";
print "Aliases = $aliases\n";
print "Port Number = $port_number\n";
print "Protocol Name = $protocol_name\n";

($name, $aliases, $port_number, $protocol_name) = getservbyport(23, "tcp");
print "Name = $name\n";
print "Aliases = $aliases\n";
print "Port Number = $port_number\n";
print "Protocol Name = $protocol_name\n";