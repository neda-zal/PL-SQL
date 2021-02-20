VARIABLE b_basic_percent NUMBER;
VARIABLE b_pf_percent NUMBER;

SET SERVEROUTPUT ON;

DECLARE
    v_today DATE := Sysdate;
    v_tomorrow v_today%TYPE := sysdate + 1;
BEGIN
   DBMS_OUTPUT.put_line ('Hello World!');
   DBMS_OUTPUT.put_line ('TODAY IS: ' || v_today);
   DBMS_OUTPUT.put_line ('TOMORROW IS: ' || v_tomorrow);
   SELECT 45, 12 into :b_basic_percent, :b_pf_percent from dual;

END;
/

print b_basic_percent
print b_pf_percent
