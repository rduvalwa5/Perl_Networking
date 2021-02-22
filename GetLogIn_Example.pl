=begin comment
https://www.tutorialspoint.com/perl/perl_getlogin.htm
Description
This function returns the user's name, as discovered by the system function getlogin( ). 
Under Windows, use the Win32::LoginName( ) function instead.
=cut

#!/usr/bin/perl

$login = getlogin;  
$login2 = getpwuid($<) || "TutorialsPoint";

print "getLogin Login ID is $login\n";
print "getpwuid Login ID is $login2\n";