CREATE PROCEDURE greet IS

    v_today DATE := Sysdate;
    v_tomorrow v_today%TYPE := sysdate + 1;

    BEGIN
       DBMS_OUTPUT.put_line ('Hello World!');
       DBMS_OUTPUT.put_line ('TODAY IS: ' || v_today);
       DBMS_OUTPUT.put_line ('TOMORROW IS: ' || v_tomorrow);
    
    END greet;
