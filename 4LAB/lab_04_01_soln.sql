SET SERVEROUTPUT ON;

DECLARE
    v_max_deptno NUMBER;
BEGIN
   SELECT max(department_id)
   INTO v_max_deptno FROM departments;

   DBMS_OUTPUT.put_line (v_max_deptno);

END;
