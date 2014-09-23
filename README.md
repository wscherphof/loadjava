loadjava
========

Verify loadjava for a Docker Oracle database

Install
-------
Instal Docker

Run
---
1. `cd` to the `loadjava` repo dir
1. `. ./run.sh`

License
-------
LGPL

Output
------
Look for `Hello world`
```
Sending build context to Docker daemon 48.64 kB
Sending build context to Docker daemon 
Step 0 : FROM busybox
 ---> a9eb17255234
Step 1 : ADD Hello.java /lj/Hello.java
 ---> c4701d623c1e
Removing intermediate container 832aa74015fe
Step 2 : ADD create_user.sql /lj/create_user.sql
 ---> ebbb63c16fe5
Removing intermediate container 4216c41774f2
Step 3 : ADD call_java.sql /lj/call_java.sql
 ---> c1dac38bef88
Removing intermediate container eb01aa924e14
Step 4 : ADD testlj /lj/testlj
 ---> 857f69d7d755
Removing intermediate container b70da3de4fa4
Step 5 : RUN chmod +x /lj/testlj
 ---> Running in 29f50407dac9
 ---> c49df1b530cb
Removing intermediate container 29f50407dac9
Step 6 : VOLUME /lj
 ---> Running in da8eef828875
 ---> b554d29c16b1
Removing intermediate container da8eef828875
Successfully built b554d29c16b1

Wait while the database is starting...

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 22-SEP-2014 23:50:42

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Starting /u01/app/oracle/product/12.1.0/dbhome_1/bin/tnslsnr: please wait...

TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Log messages written to /u01/app/oracle/diag/tnslsnr/8b81d3745da5/listener/alert/log.xml
Listening on: (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=8b81d3745da5)(PORT=1521)))

Connecting to (ADDRESS=(PROTOCOL=tcp)(HOST=)(PORT=1521))
STATUS of the LISTENER
------------------------
Alias                     LISTENER
Version                   TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Start Date                22-SEP-2014 23:50:42
Uptime                    0 days 0 hr. 0 min. 0 sec
Trace Level               off
Security                  ON: Local OS Authentication
SNMP                      OFF
Listener Log File         /u01/app/oracle/diag/tnslsnr/8b81d3745da5/listener/alert/log.xml
Listening Endpoints Summary...
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=8b81d3745da5)(PORT=1521)))
The listener supports no services
The command completed successfully

SQL*Plus: Release 12.1.0.2.0 Production on Mon Sep 22 23:50:42 2014

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Connected to an idle instance.
ORACLE instance started.

Total System Global Area 1073741824 bytes
Fixed Size		    2932632 bytes
Variable Size		  721420392 bytes
Database Buffers	  343932928 bytes
Redo Buffers		    5455872 bytes
Database mounted.

Wait while the database is starting...
Lice
Wait while the database is starting...
nse
Wait while the database is starting...
Database opened.
Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

LSNRCTL for Linux: Version 12.1.0.2.0 - Production on 22-SEP-2014 23:51:16

Copyright (c) 1991, 2014, Oracle.  All rights reserved.

Connecting to (ADDRESS=(PROTOCOL=tcp)(HOST=)(PORT=1521))
STATUS of the LISTENER
------------------------
Alias                     LISTENER
Version                   TNSLSNR for Linux: Version 12.1.0.2.0 - Production
Start Date                22-SEP-2014 23:50:42
Uptime                    0 days 0 hr. 0 min. 34 sec
Trace Level               off
Security                  ON: Local OS Authentication
SNMP                      OFF
Listener Log File         /u01/app/oracle/diag/tnslsnr/8b81d3745da5/listener/alert/log.xml
Listening Endpoints Summary...
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=8b81d3745da5)(PORT=1521)))
Services Summary...
Service "ORCL" has 1 instance(s).
  Instance "ORCL", status READY, has 1 handler(s) for this service...
Service "ORCLXDB" has 1 instance(s).
  Instance "ORCL", status READY, has 1 handler(s) for this service...
The command completed successfully

Wait while the database is starting...

Wait while the database is starting...

Mon Sep 22 23:51:42 UTC 2014
Installing JVM in the database...
Mon Sep 22 23:53:21 UTC 2014
... see /tmp/initjvm.log

SQL*Plus: Release 12.1.0.2.0 Production on Mon Sep 22 23:53:21 2014

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Tue Sep 16 2014 11:19:38 +00:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options


User created.


Grant succeeded.


Call completed.

Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL*Plus: Release 12.1.0.2.0 Production on Mon Sep 22 23:53:23 2014

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Mon Sep 22 2014 23:53:22 +00:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options


Function created.


Call completed.


MYSTRING
--------------------------------
Hello world

Disconnected from Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options
lj
Untagged: lj:latest
Deleted: b554d29c16b157fc1749136691aff3cea49dae410f296ec136397452fb1009ce
Deleted: c49df1b530cb0582a56c9469902c7a0464bee4d3517c971548dd443f5908350d
Deleted: 857f69d7d755dd2a2143aa86c49a2a3451e62d63c9a9b356143177357bb15c68
Deleted: c1dac38bef88fa8b9f47f81a3d0014a731f1a3db8f08267c91443b01231d7572
Deleted: ebbb63c16fe5877b8b47b0f2c8f101a8f371676d8bccbdd4bcf6a9e297b4f12e
Deleted: c4701d623c1ef7563025f159fa2d28534b6ecc166ed6e5007f70b126f0c22a4e
```
