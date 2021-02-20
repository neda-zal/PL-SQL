SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp_cursor IS
        SELECT salary FROM employees
        ORDER BY salary DESC;
    v_num NUMBER := 10;
    sal employees.salary%TYPE;

BEGIN
    OPEN c_emp_cursor;
    LOOP
       FETCH c_emp_cursor INTO sal;
       EXIT WHEN c_emp_cursor%NOTFOUND OR c_emp_cursor%ROWCOUNT > v_num;
       INSERT INTO top_salaries(salary)
       VALUES(sal);
    END LOOP;
    CLOSE c_emp_cursor;
END;
/

SELECT salary FROM top_salaries
WHERE ROWNUM <= 5 ORDER BY salary DESC;
