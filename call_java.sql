CREATE OR REPLACE FUNCTION helloworld RETURN VARCHAR2 AS
LANGUAGE JAVA NAME 'Hello.world () return java.lang.String';
/
VARIABLE myString VARCHAR2(20);
CALL helloworld() INTO :myString;
PRINT myString;
exit
