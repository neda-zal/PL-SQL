SET SERVEROUTPUT ON;

BEGIN
  FOR i IN 1..10 LOOP
    CONTINUE WHEN i = 6 OR i = 8;
    INSERT INTO messages(results) VALUES(i);
  END LOOP;

  COMMIT;

END;

/

SELECT results FROM messages;
