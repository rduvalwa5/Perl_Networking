=begin comment
https://www.tutorialspoint.com/perl/perl_getpwent.htm

Description

This function returns the next password entry from the /etc/passwd file. This is used in combination with the 
setpwent and endpwent functions to iterate over the password file. In a list context, returns

($name, $passwd, $uid, $gid, $quota, $comment, $gcos, $dir, $shell) = getpwent;
Syntax

Following is the simple syntax for this function −

getpwent

Return Value

This function returns username in scalar context and user record (name, password, user ID, group ID, quote, 
comment, real name, home directory, shell) in list context.

=cut

#!/usr/bin/perl

while(($name, $passwd, $uid, $gid, $quota, $comment, $gcos,
   $dir, $shell) = getpwent()) {
   print "Name = $name\n";
   print "Password = $passwd\n";
   print "UID = $uid\n";
   print "GID = $gid\n";
   print "Quota = $quota\n";
   print "Comment = $comment\n";
   print "Gcos = $gcos\n";
   print "HOME DIR = $dir\n";
   print "Shell = $shell\n";
}

=begincomment

Name = _appowner
Password = *
UID = 87
GID = 87
Quota = 0
Comment = 
Gcos = Application Owner
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _dovenull
Password = *
UID = 227
GID = 227
Quota = 0
Comment = 
Gcos = Dovecot Authentication
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _netstatistics
Password = *
UID = 228
GID = 228
Quota = 0
Comment = 
Gcos = Network Statistics Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _softwareupdate
Password = *
UID = 200
GID = 200
Quota = 0
Comment = 
Gcos = Software Update Service
HOME DIR = /var/db/softwareupdate
Shell = /usr/bin/false
Name = _ard
Password = *
UID = 67
GID = 67
Quota = 0
Comment = 
Gcos = Apple Remote Desktop
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _captiveagent
Password = *
UID = 258
GID = 258
Quota = 0
Comment = 
Gcos = captiveagent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _launchservicesd
Password = *
UID = 239
GID = 239
Quota = 0
Comment = 
Gcos = _launchservicesd
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _xserverdocs
Password = *
UID = 251
GID = 251
Quota = 0
Comment = 
Gcos = macOS Server Documents Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krbfast
Password = *
UID = 246
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos FAST Account
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _astris
Password = *
UID = 245
GID = 245
Quota = 0
Comment = 
Gcos = Astris Services
HOME DIR = /var/db/astris
Shell = /usr/bin/false
Name = _tokend
Password = *
UID = 91
GID = 91
Quota = 0
Comment = 
Gcos = Token Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _securityagent
Password = *
UID = 92
GID = 92
Quota = 0
Comment = 
Gcos = SecurityAgent
HOME DIR = /var/db/securityagent
Shell = /usr/bin/false
Name = _warmd
Password = *
UID = 224
GID = 224
Quota = 0
Comment = 
Gcos = Warm Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _coreaudiod
Password = *
UID = 202
GID = 202
Quota = 0
Comment = 
Gcos = Core Audio Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _applepay
Password = *
UID = 260
GID = 260
Quota = 0
Comment = 
Gcos = applepay Account
HOME DIR = /var/db/applepay
Shell = /usr/bin/false
Name = _krb_krbtgt
Password = *
UID = 230
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Ticket Granting Ticket
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _analyticsd
Password = *
UID = 263
GID = 263
Quota = 0
Comment = 
Gcos = Analytics Daemon
HOME DIR = /var/db/analyticsd
Shell = /usr/bin/false
Name = _assetcache
Password = *
UID = 235
GID = 235
Quota = 0
Comment = 
Gcos = Asset Cache Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _trustevaluationagent
Password = *
UID = 208
GID = 208
Quota = 0
Comment = 
Gcos = Trust Evaluation Agent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ondemand
Password = *
UID = 249
GID = 249
Quota = 0
Comment = 
Gcos = On Demand Resource Daemon
HOME DIR = /var/db/ondemand
Shell = /usr/bin/false
Name = _mdnsresponder
Password = *
UID = 65
GID = 65
Quota = 0
Comment = 
Gcos = mDNSResponder
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _svn
Password = *
UID = 73
GID = 73
Quota = 0
Comment = 
Gcos = SVN Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _windowserver
Password = *
UID = 88
GID = 88
Quota = 0
Comment = 
Gcos = WindowServer
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _postgres
Password = *
UID = 216
GID = 216
Quota = 0
Comment = 
Gcos = PostgreSQL Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mcxalr
Password = *
UID = 54
GID = 54
Quota = 0
Comment = 
Gcos = MCX AppLaunch
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _uucp
Password = *
UID = 4
GID = 4
Quota = 0
Comment = 
Gcos = Unix to Unix Copy Protocol
HOME DIR = /var/spool/uucp
Shell = /usr/sbin/uucico
Name = _geod
Password = *
UID = 56
GID = 56
Quota = 0
Comment = 
Gcos = Geo Services Daemon
HOME DIR = /var/db/geod
Shell = /usr/bin/false
Name = _coremediaiod
Password = *
UID = 236
GID = 236
Quota = 0
Comment = 
Gcos = Core Media IO Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cmiodalassistants
Password = *
UID = 262
GID = 262
Quota = 0
Comment = 
Gcos = CoreMedia IO Assistants User
HOME DIR = /var/db/cmiodalassistants
Shell = /usr/bin/false
Name = _ces
Password = *
UID = 32
GID = 32
Quota = 0
Comment = 
Gcos = Certificate Enrollment Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = rduvalwa2
Password = ********
UID = 501
GID = 20
Quota = 0
Comment = 
Gcos = Randall Duval
HOME DIR = /Users/rduvalwa2
Shell = /bin/bash
Name = _eppc
Password = *
UID = 71
GID = 71
Quota = 0
Comment = 
Gcos = Apple Events User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = nobody
Password = *
UID = 4294967294
GID = 4294967294
Quota = 0
Comment = 
Gcos = Unprivileged User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _calendar
Password = *
UID = 93
GID = 93
Quota = 0
Comment = 
Gcos = Calendar
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _installer
Password = *
UID = 96
GID = 4294967294
Quota = 0
Comment = 
Gcos = Installer
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ctkd
Password = *
UID = 259
GID = 259
Quota = 0
Comment = 
Gcos = ctkd Account
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _atsserver
Password = *
UID = 97
GID = 97
Quota = 0
Comment = 
Gcos = ATS Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _datadetectors
Password = *
UID = 257
GID = 257
Quota = 0
Comment = 
Gcos = DataDetectors
HOME DIR = /var/db/datadetectors
Shell = /usr/bin/false
Name = _mysql
Password = *
UID = 74
GID = 74
Quota = 0
Comment = 
Gcos = MySQL Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _dovecot
Password = *
UID = 214
GID = 6
Quota = 0
Comment = 
Gcos = Dovecot Administrator
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krbtgt
Password = *
UID = 217
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Ticket Granting Ticket
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _amavisd
Password = *
UID = 83
GID = 83
Quota = 0
Comment = 
Gcos = AMaViS Daemon
HOME DIR = /var/virusmails
Shell = /usr/bin/false
Name = _fpsd
Password = *
UID = 265
GID = 265
Quota = 0
Comment = 
Gcos = FPS Daemon
HOME DIR = /var/db/fpsd
Shell = /usr/bin/false
Name = _timed
Password = *
UID = 266
GID = 266
Quota = 0
Comment = 
Gcos = Time Sync Daemon
HOME DIR = /var/db/timed
Shell = /usr/bin/false
Name = _installassistant
Password = *
UID = 25
GID = 25
Quota = 0
Comment = 
Gcos = Install Assistant
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _clamav
Password = *
UID = 82
GID = 82
Quota = 0
Comment = 
Gcos = ClamAV Daemon
HOME DIR = /var/virusmails
Shell = /usr/bin/false
Name = _dpaudio
Password = *
UID = 215
GID = 215
Quota = 0
Comment = 
Gcos = DP Audio
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _unknown
Password = *
UID = 99
GID = 99
Quota = 0
Comment = 
Gcos = Unknown User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appstore
Password = *
UID = 33
GID = 33
Quota = 0
Comment = 
Gcos = Mac App Store Service
HOME DIR = /var/db/appstore
Shell = /usr/bin/false
Name = _www
Password = *
UID = 70
GID = 70
Quota = 0
Comment = 
Gcos = World Wide Web Server
HOME DIR = /Library/WebServer
Shell = /usr/bin/false
Name = _nsurlstoraged
Password = *
UID = 243
GID = 243
Quota = 0
Comment = 
Gcos = NSURLStorage Daemon
HOME DIR = /var/db/nsurlstoraged
Shell = /usr/bin/false
Name = _mbsetupuser
Password = *
UID = 248
GID = 248
Quota = 0
Comment = 
Gcos = Setup User
HOME DIR = /var/setup
Shell = /bin/bash
Name = _cvmsroot
Password = *
UID = 212
GID = 212
Quota = 0
Comment = 
Gcos = CVMS Root
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _usbmuxd
Password = *
UID = 213
GID = 213
Quota = 0
Comment = 
Gcos = iPhone OS Device Helper
HOME DIR = /var/db/lockdown
Shell = /usr/bin/false
Name = _ftp
Password = *
UID = 98
GID = 4294967294
Quota = 0
Comment = 
Gcos = FTP Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _spotlight
Password = *
UID = 89
GID = 89
Quota = 0
Comment = 
Gcos = Spotlight
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _lda
Password = *
UID = 211
GID = 211
Quota = 0
Comment = 
Gcos = Local Delivery Agent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _sshd
Password = *
UID = 75
GID = 75
Quota = 0
Comment = 
Gcos = sshd Privilege separation
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _displaypolicyd
Password = *
UID = 244
GID = 244
Quota = 0
Comment = 
Gcos = Display Policy Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _driverkit
Password = *
UID = 270
GID = 270
Quota = 0
Comment = 
Gcos = DriverKit
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _lp
Password = *
UID = 26
GID = 26
Quota = 0
Comment = 
Gcos = Printing Services
HOME DIR = /var/spool/cups
Shell = /usr/bin/false
Name = _netbios
Password = *
UID = 222
GID = 222
Quota = 0
Comment = 
Gcos = NetBIOS
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_kerberos
Password = *
UID = 233
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _jabber
Password = *
UID = 84
GID = 84
Quota = 0
Comment = 
Gcos = Jabber XMPP Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mailman
Password = *
UID = 78
GID = 78
Quota = 0
Comment = 
Gcos = Mailman List Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _update_sharing
Password = *
UID = 95
GID = 4294967294
Quota = 0
Comment = 
Gcos = Update Sharing
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _networkd
Password = *
UID = 24
GID = 24
Quota = 0
Comment = 
Gcos = Network Services
HOME DIR = /var/networkd
Shell = /usr/bin/false
Name = _mobileasset
Password = *
UID = 253
GID = 253
Quota = 0
Comment = 
Gcos = MobileAsset User
HOME DIR = /var/ma
Shell = /usr/bin/false
Name = _webauthserver
Password = *
UID = 221
GID = 221
Quota = 0
Comment = 
Gcos = Web Auth Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_anonymous
Password = *
UID = 234
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Anonymous
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _devicemgr
Password = *
UID = 220
GID = 220
Quota = 0
Comment = 
Gcos = Device Management Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _iconservices
Password = *
UID = 240
GID = 240
Quota = 0
Comment = 
Gcos = IconServices
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _kadmin_changepw
Password = *
UID = 219
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Change Password Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _kadmin_admin
Password = *
UID = 218
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Admin Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _devdocs
Password = *
UID = 59
GID = 59
Quota = 0
Comment = 
Gcos = Developer Documentation
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _sandbox
Password = *
UID = 60
GID = 60
Quota = 0
Comment = 
Gcos = Seatbelt
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appleevents
Password = *
UID = 55
GID = 55
Quota = 0
Comment = 
Gcos = AppleEvents Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = root
Password = *
UID = 0
GID = 0
Quota = 0
Comment = 
Gcos = System Administrator
HOME DIR = /var/root
Shell = /bin/sh
Name = _nsurlsessiond
Password = *
UID = 242
GID = 242
Quota = 0
Comment = 
Gcos = NSURLSession Daemon
HOME DIR = /var/db/nsurlsessiond
Shell = /usr/bin/false
Name = _teamsserver
Password = *
UID = 94
GID = 94
Quota = 0
Comment = 
Gcos = TeamsServer
HOME DIR = /var/teamsserver
Shell = /usr/bin/false
Name = daemon
Password = *
UID = 1
GID = 1
Quota = 0
Comment = 
Gcos = System Services
HOME DIR = /var/root
Shell = /usr/bin/false
Name = _wwwproxy
Password = *
UID = 252
GID = 252
Quota = 0
Comment = 
Gcos = WWW Proxy
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _timezone
Password = *
UID = 210
GID = 210
Quota = 0
Comment = 
Gcos = AutoTimeZoneDaemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _avbdeviced
Password = *
UID = 229
GID = 4294967294
Quota = 0
Comment = 
Gcos = Ethernet AVB Device Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _scsd
Password = *
UID = 31
GID = 31
Quota = 0
Comment = 
Gcos = Service Configuration Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _nearbyd
Password = *
UID = 268
GID = 268
Quota = 0
Comment = 
Gcos = Proximity and Ranging Daemon
HOME DIR = /var/db/nearbyd
Shell = /usr/bin/false
Name = _postfix
Password = *
UID = 27
GID = 27
Quota = 0
Comment = 
Gcos = Postfix Mail Server
HOME DIR = /var/spool/postfix
Shell = /usr/bin/false
Name = _hidd
Password = *
UID = 261
GID = 261
Quota = 0
Comment = 
Gcos = HID Service User
HOME DIR = /var/db/hidd
Shell = /usr/bin/false
Name = _krb_kadmin
Password = *
UID = 231
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Admin Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _taskgated
Password = *
UID = 13
GID = 13
Quota = 0
Comment = 
Gcos = Task Gate Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _gamecontrollerd
Password = *
UID = 247
GID = 247
Quota = 0
Comment = 
Gcos = Game Controller Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _reportmemoryexception
Password = *
UID = 269
GID = 269
Quota = 0
Comment = 
Gcos = ReportMemoryException
HOME DIR = /var/db/reportmemoryexception
Shell = /usr/bin/false
Name = _findmydevice
Password = *
UID = 254
GID = 254
Quota = 0
Comment = 
Gcos = Find My Device Daemon
HOME DIR = /var/db/findmydevice
Shell = /usr/bin/false
Name = _screensaver
Password = *
UID = 203
GID = 203
Quota = 0
Comment = 
Gcos = Screensaver
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cvs
Password = *
UID = 72
GID = 72
Quota = 0
Comment = 
Gcos = CVS Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cyrus
Password = *
UID = 77
GID = 6
Quota = 0
Comment = 
Gcos = Cyrus Administrator
HOME DIR = /var/imap
Shell = /usr/bin/false
Name = _distnote
Password = *
UID = 241
GID = 241
Quota = 0
Comment = 
Gcos = DistNote
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _qtss
Password = *
UID = 76
GID = 76
Quota = 0
Comment = 
Gcos = QuickTime Streaming Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _locationd
Password = *
UID = 205
GID = 205
Quota = 0
Comment = 
Gcos = Location Daemon
HOME DIR = /var/db/locationd
Shell = /usr/bin/false
Name = _appserver
Password = *
UID = 79
GID = 79
Quota = 0
Comment = 
Gcos = Application Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_changepw
Password = *
UID = 232
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Change Password Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = nobody
Password = *
UID = 4294967294
GID = 4294967294
Quota = 0
Comment = 
Gcos = Unprivileged User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = root
Password = *
UID = 0
GID = 0
Quota = 0
Comment = 
Gcos = System Administrator
HOME DIR = /var/root
Shell = /bin/sh
Name = daemon
Password = *
UID = 1
GID = 1
Quota = 0
Comment = 
Gcos = System Services
HOME DIR = /var/root
Shell = /usr/bin/false
Name = _uucp
Password = *
UID = 4
GID = 4
Quota = 0
Comment = 
Gcos = Unix to Unix Copy Protocol
HOME DIR = /var/spool/uucp
Shell = /usr/sbin/uucico
Name = _taskgated
Password = *
UID = 13
GID = 13
Quota = 0
Comment = 
Gcos = Task Gate Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _networkd
Password = *
UID = 24
GID = 24
Quota = 0
Comment = 
Gcos = Network Services
HOME DIR = /var/networkd
Shell = /usr/bin/false
Name = _installassistant
Password = *
UID = 25
GID = 25
Quota = 0
Comment = 
Gcos = Install Assistant
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _lp
Password = *
UID = 26
GID = 26
Quota = 0
Comment = 
Gcos = Printing Services
HOME DIR = /var/spool/cups
Shell = /usr/bin/false
Name = _postfix
Password = *
UID = 27
GID = 27
Quota = 0
Comment = 
Gcos = Postfix Mail Server
HOME DIR = /var/spool/postfix
Shell = /usr/bin/false
Name = _scsd
Password = *
UID = 31
GID = 31
Quota = 0
Comment = 
Gcos = Service Configuration Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ces
Password = *
UID = 32
GID = 32
Quota = 0
Comment = 
Gcos = Certificate Enrollment Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appstore
Password = *
UID = 33
GID = 33
Quota = 0
Comment = 
Gcos = Mac App Store Service
HOME DIR = /var/db/appstore
Shell = /usr/bin/false
Name = _mcxalr
Password = *
UID = 54
GID = 54
Quota = 0
Comment = 
Gcos = MCX AppLaunch
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appleevents
Password = *
UID = 55
GID = 55
Quota = 0
Comment = 
Gcos = AppleEvents Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _geod
Password = *
UID = 56
GID = 56
Quota = 0
Comment = 
Gcos = Geo Services Daemon
HOME DIR = /var/db/geod
Shell = /usr/bin/false
Name = _devdocs
Password = *
UID = 59
GID = 59
Quota = 0
Comment = 
Gcos = Developer Documentation
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _sandbox
Password = *
UID = 60
GID = 60
Quota = 0
Comment = 
Gcos = Seatbelt
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mdnsresponder
Password = *
UID = 65
GID = 65
Quota = 0
Comment = 
Gcos = mDNSResponder
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ard
Password = *
UID = 67
GID = 67
Quota = 0
Comment = 
Gcos = Apple Remote Desktop
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _www
Password = *
UID = 70
GID = 70
Quota = 0
Comment = 
Gcos = World Wide Web Server
HOME DIR = /Library/WebServer
Shell = /usr/bin/false
Name = _eppc
Password = *
UID = 71
GID = 71
Quota = 0
Comment = 
Gcos = Apple Events User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cvs
Password = *
UID = 72
GID = 72
Quota = 0
Comment = 
Gcos = CVS Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _svn
Password = *
UID = 73
GID = 73
Quota = 0
Comment = 
Gcos = SVN Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mysql
Password = *
UID = 74
GID = 74
Quota = 0
Comment = 
Gcos = MySQL Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _sshd
Password = *
UID = 75
GID = 75
Quota = 0
Comment = 
Gcos = sshd Privilege separation
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _qtss
Password = *
UID = 76
GID = 76
Quota = 0
Comment = 
Gcos = QuickTime Streaming Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cyrus
Password = *
UID = 77
GID = 6
Quota = 0
Comment = 
Gcos = Cyrus Administrator
HOME DIR = /var/imap
Shell = /usr/bin/false
Name = _mailman
Password = *
UID = 78
GID = 78
Quota = 0
Comment = 
Gcos = Mailman List Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appserver
Password = *
UID = 79
GID = 79
Quota = 0
Comment = 
Gcos = Application Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _clamav
Password = *
UID = 82
GID = 82
Quota = 0
Comment = 
Gcos = ClamAV Daemon
HOME DIR = /var/virusmails
Shell = /usr/bin/false
Name = _amavisd
Password = *
UID = 83
GID = 83
Quota = 0
Comment = 
Gcos = AMaViS Daemon
HOME DIR = /var/virusmails
Shell = /usr/bin/false
Name = _jabber
Password = *
UID = 84
GID = 84
Quota = 0
Comment = 
Gcos = Jabber XMPP Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _appowner
Password = *
UID = 87
GID = 87
Quota = 0
Comment = 
Gcos = Application Owner
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _windowserver
Password = *
UID = 88
GID = 88
Quota = 0
Comment = 
Gcos = WindowServer
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _spotlight
Password = *
UID = 89
GID = 89
Quota = 0
Comment = 
Gcos = Spotlight
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _tokend
Password = *
UID = 91
GID = 91
Quota = 0
Comment = 
Gcos = Token Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _securityagent
Password = *
UID = 92
GID = 92
Quota = 0
Comment = 
Gcos = SecurityAgent
HOME DIR = /var/db/securityagent
Shell = /usr/bin/false
Name = _calendar
Password = *
UID = 93
GID = 93
Quota = 0
Comment = 
Gcos = Calendar
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _teamsserver
Password = *
UID = 94
GID = 94
Quota = 0
Comment = 
Gcos = TeamsServer
HOME DIR = /var/teamsserver
Shell = /usr/bin/false
Name = _update_sharing
Password = *
UID = 95
GID = 4294967294
Quota = 0
Comment = 
Gcos = Update Sharing
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _installer
Password = *
UID = 96
GID = 4294967294
Quota = 0
Comment = 
Gcos = Installer
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _atsserver
Password = *
UID = 97
GID = 97
Quota = 0
Comment = 
Gcos = ATS Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ftp
Password = *
UID = 98
GID = 4294967294
Quota = 0
Comment = 
Gcos = FTP Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _unknown
Password = *
UID = 99
GID = 99
Quota = 0
Comment = 
Gcos = Unknown User
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _softwareupdate
Password = *
UID = 200
GID = 200
Quota = 0
Comment = 
Gcos = Software Update Service
HOME DIR = /var/db/softwareupdate
Shell = /usr/bin/false
Name = _coreaudiod
Password = *
UID = 202
GID = 202
Quota = 0
Comment = 
Gcos = Core Audio Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _screensaver
Password = *
UID = 203
GID = 203
Quota = 0
Comment = 
Gcos = Screensaver
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _locationd
Password = *
UID = 205
GID = 205
Quota = 0
Comment = 
Gcos = Location Daemon
HOME DIR = /var/db/locationd
Shell = /usr/bin/false
Name = _trustevaluationagent
Password = *
UID = 208
GID = 208
Quota = 0
Comment = 
Gcos = Trust Evaluation Agent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _timezone
Password = *
UID = 210
GID = 210
Quota = 0
Comment = 
Gcos = AutoTimeZoneDaemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _lda
Password = *
UID = 211
GID = 211
Quota = 0
Comment = 
Gcos = Local Delivery Agent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _cvmsroot
Password = *
UID = 212
GID = 212
Quota = 0
Comment = 
Gcos = CVMS Root
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _usbmuxd
Password = *
UID = 213
GID = 213
Quota = 0
Comment = 
Gcos = iPhone OS Device Helper
HOME DIR = /var/db/lockdown
Shell = /usr/bin/false
Name = _dovecot
Password = *
UID = 214
GID = 6
Quota = 0
Comment = 
Gcos = Dovecot Administrator
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _dpaudio
Password = *
UID = 215
GID = 215
Quota = 0
Comment = 
Gcos = DP Audio
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _postgres
Password = *
UID = 216
GID = 216
Quota = 0
Comment = 
Gcos = PostgreSQL Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krbtgt
Password = *
UID = 217
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Ticket Granting Ticket
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _kadmin_admin
Password = *
UID = 218
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Admin Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _kadmin_changepw
Password = *
UID = 219
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos Change Password Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _devicemgr
Password = *
UID = 220
GID = 220
Quota = 0
Comment = 
Gcos = Device Management Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _webauthserver
Password = *
UID = 221
GID = 221
Quota = 0
Comment = 
Gcos = Web Auth Server
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _netbios
Password = *
UID = 222
GID = 222
Quota = 0
Comment = 
Gcos = NetBIOS
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _warmd
Password = *
UID = 224
GID = 224
Quota = 0
Comment = 
Gcos = Warm Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _dovenull
Password = *
UID = 227
GID = 227
Quota = 0
Comment = 
Gcos = Dovecot Authentication
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _netstatistics
Password = *
UID = 228
GID = 228
Quota = 0
Comment = 
Gcos = Network Statistics Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _avbdeviced
Password = *
UID = 229
GID = 4294967294
Quota = 0
Comment = 
Gcos = Ethernet AVB Device Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_krbtgt
Password = *
UID = 230
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Ticket Granting Ticket
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_kadmin
Password = *
UID = 231
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Admin Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_changepw
Password = *
UID = 232
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Change Password Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_kerberos
Password = *
UID = 233
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _krb_anonymous
Password = *
UID = 234
GID = 4294967294
Quota = 0
Comment = 
Gcos = Open Directory Kerberos Anonymous
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _assetcache
Password = *
UID = 235
GID = 235
Quota = 0
Comment = 
Gcos = Asset Cache Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _coremediaiod
Password = *
UID = 236
GID = 236
Quota = 0
Comment = 
Gcos = Core Media IO Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _launchservicesd
Password = *
UID = 239
GID = 239
Quota = 0
Comment = 
Gcos = _launchservicesd
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _iconservices
Password = *
UID = 240
GID = 240
Quota = 0
Comment = 
Gcos = IconServices
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _distnote
Password = *
UID = 241
GID = 241
Quota = 0
Comment = 
Gcos = DistNote
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _nsurlsessiond
Password = *
UID = 242
GID = 242
Quota = 0
Comment = 
Gcos = NSURLSession Daemon
HOME DIR = /var/db/nsurlsessiond
Shell = /usr/bin/false
Name = _nsurlstoraged
Password = *
UID = 243
GID = 243
Quota = 0
Comment = 
Gcos = NSURLStorage Daemon
HOME DIR = /var/db/nsurlstoraged
Shell = /usr/bin/false
Name = _displaypolicyd
Password = *
UID = 244
GID = 244
Quota = 0
Comment = 
Gcos = Display Policy Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _astris
Password = *
UID = 245
GID = 245
Quota = 0
Comment = 
Gcos = Astris Services
HOME DIR = /var/db/astris
Shell = /usr/bin/false
Name = _krbfast
Password = *
UID = 246
GID = 4294967294
Quota = 0
Comment = 
Gcos = Kerberos FAST Account
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _gamecontrollerd
Password = *
UID = 247
GID = 247
Quota = 0
Comment = 
Gcos = Game Controller Daemon
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mbsetupuser
Password = *
UID = 248
GID = 248
Quota = 0
Comment = 
Gcos = Setup User
HOME DIR = /var/setup
Shell = /bin/bash
Name = _ondemand
Password = *
UID = 249
GID = 249
Quota = 0
Comment = 
Gcos = On Demand Resource Daemon
HOME DIR = /var/db/ondemand
Shell = /usr/bin/false
Name = _xserverdocs
Password = *
UID = 251
GID = 251
Quota = 0
Comment = 
Gcos = macOS Server Documents Service
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _wwwproxy
Password = *
UID = 252
GID = 252
Quota = 0
Comment = 
Gcos = WWW Proxy
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _mobileasset
Password = *
UID = 253
GID = 253
Quota = 0
Comment = 
Gcos = MobileAsset User
HOME DIR = /var/ma
Shell = /usr/bin/false
Name = _findmydevice
Password = *
UID = 254
GID = 254
Quota = 0
Comment = 
Gcos = Find My Device Daemon
HOME DIR = /var/db/findmydevice
Shell = /usr/bin/false
Name = _datadetectors
Password = *
UID = 257
GID = 257
Quota = 0
Comment = 
Gcos = DataDetectors
HOME DIR = /var/db/datadetectors
Shell = /usr/bin/false
Name = _captiveagent
Password = *
UID = 258
GID = 258
Quota = 0
Comment = 
Gcos = captiveagent
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _ctkd
Password = *
UID = 259
GID = 259
Quota = 0
Comment = 
Gcos = ctkd Account
HOME DIR = /var/empty
Shell = /usr/bin/false
Name = _applepay
Password = *
UID = 260
GID = 260
Quota = 0
Comment = 
Gcos = applepay Account
HOME DIR = /var/db/applepay
Shell = /usr/bin/false
Name = _hidd
Password = *
UID = 261
GID = 261
Quota = 0
Comment = 
Gcos = HID Service User
HOME DIR = /var/db/hidd
Shell = /usr/bin/false
Name = _cmiodalassistants
Password = *
UID = 262
GID = 262
Quota = 0
Comment = 
Gcos = CoreMedia IO Assistants User
HOME DIR = /var/db/cmiodalassistants
Shell = /usr/bin/false
Name = _analyticsd
Password = *
UID = 263
GID = 263
Quota = 0
Comment = 
Gcos = Analytics Daemon
HOME DIR = /var/db/analyticsd
Shell = /usr/bin/false
Name = _fpsd
Password = *
UID = 265
GID = 265
Quota = 0
Comment = 
Gcos = FPS Daemon
HOME DIR = /var/db/fpsd
Shell = /usr/bin/false
Name = _timed
Password = *
UID = 266
GID = 266
Quota = 0
Comment = 
Gcos = Time Sync Daemon
HOME DIR = /var/db/timed
Shell = /usr/bin/false
Name = _nearbyd
Password = *
UID = 268
GID = 268
Quota = 0
Comment = 
Gcos = Proximity and Ranging Daemon
HOME DIR = /var/db/nearbyd
Shell = /usr/bin/false
Name = _reportmemoryexception
Password = *
UID = 269
GID = 269
Quota = 0
Comment = 
Gcos = ReportMemoryException
HOME DIR = /var/db/reportmemoryexception
Shell = /usr/bin/false
Name = _driverkit
Password = *
UID = 270
GID = 270
Quota = 0
Comment = 
Gcos = DriverKit
HOME DIR = /var/empty
Shell = /usr/bin/false

=cut