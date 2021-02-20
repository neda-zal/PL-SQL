SET SERVEROUTPUT ON;

DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.department_name%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
   SELECT max(department_id)
   INTO v_max_deptno FROM departments;

   v_max_deptno := v_max_deptno + 10;
   v_dept_id := v_max_deptno;

   INSERT INTO departments(department_name, department_id, location_id)
   VALUES(v_dept_name, v_dept_id, NULL);

   UPDATE departments
   SET location_id = 3000
   WHERE department_id = 280;

END;

/

SELECT DEPARTMENT_ID,
DEPARTMENT_NAME,
MANAGER_ID,
LOCATION_ID  FROM departments
WHERE DEPARTMENT_NAME = 'Education';

DELETE FROM departments
WHERE  department_id = 280;
