CREATE OR REPLACE PROCEDURE greet(p_name VARCHAR2)
AS

    v_today DATE := Sysdate;
    v_tomorrow v_today%TYPE := sysdate + 1;

    BEGIN
       DBMS_OUTPUT.put_line ('Hello ' || p_name);
       DBMS_OUTPUT.put_line ('TODAY IS: ' || v_today);
       DBMS_OUTPUT.put_line ('TOMORROW IS: ' || v_tomorrow);

    END greet;
/
