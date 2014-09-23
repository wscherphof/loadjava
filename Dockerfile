FROM busybox

ADD Hello.java /lj/Hello.java
ADD create_user.sql /lj/create_user.sql
ADD call_java.sql /lj/call_java.sql
ADD testlj /lj/testlj
RUN chmod +x /lj/testlj

VOLUME /lj
