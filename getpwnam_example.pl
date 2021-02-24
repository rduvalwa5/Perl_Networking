=begin comment
https://www.tutorialspoint.com/perl/perl_getpwnam.htm

https://perldoc.perl.org/functions

This function returns a list of fields In list context, as extracted from the /etc/passwd file, 
based on the user name specified by EXPR. It's generally used like this −

($name, $passwd, $uid, $gid, $quota, $comment, $gcos, $dir, $shell) = getpwnam ($user);

In a scalar context, returns the numeric user ID. If you are trying to access the whole /etc/passwd file, 
you should use the getpwent function. If you want to access the details by user ID, use getpwuid.

=cut

#!/usr/bin/perl

($name, $passwd, $uid, $gid, $quota, $comment, $gcos, $dir, $shell) = getpwnam("rduvalwa2");
print "Name = $name\n";
print "Password = $passwd\n";
print "UID = $uid\n";
print "GID = $gid\n";
print "Quota = $quota\n";
print "Comment = $comment\n";
print "Gcos = $gcos\n";
print "HOME DIR = $dir\n";
print "Shell = $shell\n";
