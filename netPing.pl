=begin comment
https://perldoc.perl.org/Net::Ping
=cut


#!/usr/bin/perl

=begin comment use strict; 
=cut
use warnings;
use 5.010;
use Net::Ping;

    
@nethosts =("localhost","osxair","MaxBookPro17OSX","C1246895-XPS","powerbookg4"."Jacquelyns-iMac","73.118.226.124","www.comcast");
    
for (@nethosts){
    my $p = Net::Ping->new();
    if ($p->ping("$_")) {
       print  "$_ alive\n";
    }
    else{ print  "$_ is not alive\n";}
}