=begin comment
https://www.tutorialspoint.com/perl/perl_getpwuid.htm

https://perldoc.perl.org/functions

Description

This function returns a list of fields in list context, as extracted from the /etc/passwd file, based 
on the user name specified by EXPR. It.s generally used like this −

($name, $passwd, $uid, $gid, $quota, $comment, $gcos, $dir, $shell) = getpwuid ($uid);

In a scalar context, returns the user name. If you are trying to access the whole /etc/passwd file, you 
should use the getpwent function. If you want to access the details by user name, use getpwnam.
Syntax

Following is the simple syntax for this function −

getpwuid EXPR

Return Value

This function returns user Name in scalar context and user record (name, password, user ID, group ID, quote, comment, real name, home directory, shell) in list context.
=cut

#!/usr/bin/perl

($name, $passwd, $uid, $gid, $quota, $comment, $gcos, $dir, $shell) = getpwuid(0);
print "Name = $name\n";
print "Password = $passwd\n";
print "UID = $uid\n";
print "GID = $gid\n";
print "Quota = $quota\n";
print "Comment = $comment\n";
print "Gcos = $gcos\n";
print "HOME DIR = $dir\n";
print "Shell = $shell\n";