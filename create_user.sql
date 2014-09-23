create user lj identified by lj;
grant connect, resource, unlimited tablespace to lj;
call dbms_java.grant_permission('LJ', 'SYS:oracle.aurora.security.JServerPermission', 'loadLibraryInClass.*', null);
exit
