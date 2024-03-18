SQL> SELECT CUSTOMER_ID, CUSTOMER_NAME, "TOTAL_SPENDING ON AUGUST",
  2  "NUMBER_OF_ORDERS"
  3  FROM (
  4   SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME, SUM(OT.FINAL_AMOUNT) AS
  5  "TOTAL_SPENDING ON AUGUST", COUNT(OT.ORDER_ID) AS
  6  "NUMBER_OF_ORDERS"
  7   FROM customer C
  8   JOIN ordertable OT ON C.CUSTOMER_ID = OT.CUSTOMER_ID
  9   WHERE TO_CHAR(OT.ORDER_DATE, 'MM-YYYY') = '08-2023'
 10   GROUP BY C.CUSTOMER_ID, C.CUSTOMER_NAME
 11   ORDER BY "TOTAL_SPENDING ON AUGUST" DESC
 12  ) WHERE ROWNUM = 1;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_SPENDING ON AUGUST NUMBER_OF_ORDERS                                                                                                                                                                                                                                                                                                        
----------- -------------------------------------------------- ------------------------ ----------------                                                                                                                                                                                                                                                                                                        
         18 Asmita Karki                                                        1149.88                4                                                                                                                                                                                                                                                                                                        

SQL> spool off;
