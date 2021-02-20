--VARIABLE b_basic_percent NUMBER;
--VARIABLE b_pf_percent NUMBER;

SET SERVEROUTPUT ON;

DECLARE
    v_today DATE := Sysdate;
    v_tomorrow v_today%TYPE := sysdate + 1;
    v_basic_percent NUMBER := 45;
    v_pf_percent NUMBER := 12;
    v_fname VARCHAR2(15);
    v_emp_sal NUMBER(10);
BEGIN
   SELECT first_name, salary
   INTO v_fname, v_emp_sal FROM employees
   WHERE employee_id = 110;

   DBMS_OUTPUT.put_line ('Hello ' || v_fname);
   DBMS_OUTPUT.put_line ('Your salary is ' || v_emp_sal);
   DBMS_OUTPUT.put_line ('Your contribution towards PF ' || v_pf_percent * (v_emp_sal * v_basic_percent / 100) / 100);
   --DBMS_OUTPUT.put_line ('TODAY IS: ' || v_today);
   --DBMS_OUTPUT.put_line ('TOMORROW IS: ' || v_tomorrow);
   /* SELECT 45, 12
   into :b_basic_percent, :b_pf_percent from dual; */


END;
/

--print b_basic_percent
--print b_pf_percent
