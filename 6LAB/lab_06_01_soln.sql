SET SERVEROUTPUT ON;

DECLARE
    v_deptno NUMBER := 20;
    CURSOR c_emp_cursor IS
       SELECT last_name, salary, manager_id FROM employees
       WHERE department_id = v_deptno;

BEGIN

      FOR v_emp_record IN c_emp_cursor LOOP
             IF(v_emp_record.salary < 5000 AND v_emp_record.manager_id IN (101, 124))
             THEN
                 DBMS_OUTPUT.PUT_LINE(v_emp_record.last_name || ' Due for a raise');
              ELSE
                DBMS_OUTPUT.PUT_LINE(v_emp_record.last_name || ' Not due for a raise');
            END IF;
      END LOOP;

END;
/
