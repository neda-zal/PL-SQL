SET SERVEROUTPUT ON;

DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.department_name%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
   SELECT max(department_id)
   INTO v_max_deptno FROM departments;

   DBMS_OUTPUT.put_line ('The maximum department_id is: ' || v_max_deptno);

   v_max_deptno := v_max_deptno + 10;
   v_dept_id := v_max_deptno;

   INSERT INTO departments(department_name, department_id, location_id)
   VALUES(v_dept_name, v_dept_id, NULL);

   DBMS_OUTPUT.put_line ('sql%rowcount gives ' || SQL%ROWCOUNT);


END;

/

SELECT DEPARTMENT_ID,
DEPARTMENT_NAME,
MANAGER_ID,
LOCATION_ID  FROM departments
WHERE DEPARTMENT_NAME = 'Education';
