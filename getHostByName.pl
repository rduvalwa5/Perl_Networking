#!/usr/bin/perl
use Socket;

my @name = ("MaxBookPro17OSX","OsxAir","powerbookg4","c1246895-xps","Jacquelyns-iMac","router","www.google.com");

for (@name){
   ($name, $aliases, $addrtype, 
      $length, @addrs) = gethostbyname $_;
   print "Host name is $name\n";
   print "Aliases is $aliases\n";
}
=begin comment   
"MaxBookPro17OSX","OsxAir","powerbookg4","c1246895-xps","Jacquelyns-iMac","router"

Name "main::length" used only once: possible typo at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getHostByName.pl line 8.
Name "main::addrtype" used only once: possible typo at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getHostByName.pl line 7.
Name "main::addrs" used only once: possible typo at /Users/rduvalwa2/eclipse-PerlWorkspace/Perl_Networking/getHostByName.pl line 8.
Host name is maxbookpro17osx.hsd1.wa.comcast.net
Aliases is maxbookpro17osx
Host name is osxair.hsd1.wa.comcast.net
Aliases is osxair
Host name is powerbookg4.hsd1.wa.comcast.net
Aliases is powerbookg4
Host name is c1246895-xps.hsd1.wa.comcast.net
Aliases is c1246895-xps
Host name is jacquelyns-imac.hsd1.wa.comcast.net
Aliases is 
Host name is docsis-gateway.hsd1.wa.comcast.net
Aliases is router

=cut