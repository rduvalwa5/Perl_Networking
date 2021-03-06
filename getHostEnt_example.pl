# https://www.tutorialspoint.com/perl/perl_gethostent.htm

#!/usr/bin/perl

while( ($name, $aliases, $addrtype, $length, @addrs) = gethostent() ) {
   print "Name  = $name\n";
   print "Aliases  = $aliases\n";
   print "Addr Type  = $addrtype\n";
   print "Length  = $length\n";
   print "Addrs  = @addrs\n";
}

=begin comment
This function reads the /etc/hosts file

Name  = localhost
Aliases  = 
Addr Type  = 2
Length  = 4
Addrs  =   
Name  = broadcasthost
Aliases  = 
Addr Type  = 2
Length  = 4
Addrs  = ����
Name  = localhost
Aliases  = 
Addr Type  = 30
Length  = 16
Addrs  =                
Name  = osxair.hsd1.wa.comcast.net
Aliases  = osxair
Addr Type  = 2
Length  = 4
Addrs  = 
  ~
Name  = MaxBookPro17OSX.hsd1.wa.comcast.net
Aliases  = MaxBookPro17OSX-120
Addr Type  = 2
Length  = 4
Addrs  = 
  �
Name  = MaxBookPro17OSX.hsd1.wa.comcast.net
Aliases  = MaxBookPro17OSX
Addr Type  = 2
Length  = 4
Addrs  = 
  :
Name  = powerbookg4.hsd1.wa.comcast.net
Aliases  = powerbookg4
Addr Type  = 2
Length  = 4
Addrs  = 
  
Name  = c1246895-xps.hsd1.wa.comcast.net
Aliases  = c1246895-xps
Addr Type  = 2
Length  = 4
Addrs  = 
  
Name  = C1246895-XPS-121.hsd1.wa.comcast.net
Aliases  = c1246895-xpsi-121
Addr Type  = 2
Length  = 4
Addrs  = 
  ?
Name  = Docsis-Gateway.hsd1.wa.comcast.net.
Aliases  = router
Addr Type  = 2
Length  = 4
Addrs  = 
 =cut