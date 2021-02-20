SET SERVEROUTPUT ON;

DECLARE
    v_ename employees.last_name%TYPE;
    v_emp_sal employees.salary%TYPE := 2000;

BEGIN

    SELECT last_name INTO v_ename
    FROM employees WHERE salary = v_emp_sal;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE (' Your select statement retrieved no data.');
        INSERT INTO messages(results) VALUES('No employee with a salary of ' || v_emp_sal);

        WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE (' Your select statement retrieved multiple rows. Consider using a cursor.');
        INSERT INTO messages(results) VALUES('More than one employee with a salary of ' || v_emp_sal);

        WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE ('Some other error occurred.');
        INSERT INTO messages(results) VALUES('Some other error occurred.');

END;
/

SELECT * FROM messages;
