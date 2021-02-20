SET SERVEROUTPUT ON;

DECLARE
    v_empno emp.employee_id%TYPE := 176;
    v_asterisk emp.stars%TYPE := NULL;
    sal emp.salary%TYPE;
    total NUMBER(5);

BEGIN

    SELECT COUNT(salary) INTO total FROM emp;

    FOR i in 1..total LOOP

        SELECT salary INTO sal FROM emp WHERE employee_id = i + 99;

        FOR j IN 1..(ROUND(sal/1000)) LOOP
            v_asterisk := v_asterisk || '*';
        END LOOP;

        UPDATE emp
        SET stars = v_asterisk
        WHERE employee_id = i + 99;

        v_asterisk := NULL;

    END LOOP;
    COMMIT;

END;

/

SELECT employee_id, salary, stars from emp where employee_id = 176;
