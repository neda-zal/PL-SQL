SET SERVEROUTPUT ON;
DECLARE
   v_year  NUMBER(4, 0) :='&year';
   appraisal VARCHAR2(20);
BEGIN
    appraisal := CASE 
         WHEN(MOD(v_year/400, 1) = 0) THEN 'IS A LEAP YEAR'
         WHEN (MOD(v_year/4, 1) = 0 AND MOD(v_year/100, 1) != 0) THEN 'IS A LEAP YEAR'
         ELSE 'IS NOT LEAP YEAR' 
     END;
    DBMS_OUTPUT.PUT_LINE (v_year || ' ' || appraisal);
END;
/