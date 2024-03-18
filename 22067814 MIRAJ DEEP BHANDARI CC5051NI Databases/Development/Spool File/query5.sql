SQL> SELECT CUSTOMER_ID, CUSTOMER_NAME
  2  FROM customer
  3  WHERE CUSTOMER_ID = (
  4   SELECT CUSTOMER_ID
  5   FROM (
  6   SELECT CUSTOMER_ID
  7   FROM ORDERTABLE
  8   ORDER BY ORDER_DATE DESC
  9   )
 10   WHERE ROWNUM <= 1
 11  );

CUSTOMER_ID CUSTOMER_NAME                                                                                                                                                                                                                                                                                                                                                                                       
----------- --------------------------------------------------                                                                                                                                                                                                                                                                                                                                                  
          6 Kiran Shrestha                                                                                                                                                                                                                                                                                                                                                                                      

SQL> spool off;
