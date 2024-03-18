SQL> SELECT o.ORDER_ID, o.ORDER_DATE, o.DISCOUNT_AMOUNT,
  2  o.TOTAL_AMOUNT, o.FINAL_AMOUNT, o.PAYMENT_METHOD, o.CUSTOMER_ID,
  3  p.PRODUCT_NAME FROM ordertable o JOIN productorder po ON o.ORDER_ID =
  4  po.ORDER_ID JOIN product p ON po.PRODUCT_ID = p.PRODUCT_ID
  5  WHERE o.ORDER_DATE BETWEEN TO_DATE('01-05-2023', 'DD-MM-YYYY') AND
  6  TO_DATE('28-05-2023', 'DD-MM-YYYY');

  ORDER_ID ORDER_DAT DISCOUNT_AMOUNT TOTAL_AMOUNT FINAL_AMOUNT PAYMENT_METHOD       CUSTOMER_ID PRODUCT_NAME                                                                                                                                                                                                
---------- --------- --------------- ------------ ------------ -------------------- ----------- ------------------------------                                                                                                                                                                              
      2004 01-MAY-23           23.99       239.97       215.98 Esewa                          5 Wireless Router                                                                                                                                                                                             
      2005 08-MAY-23               0       129.97       129.97 Khalti                         3 Fitness Tracker                                                                                                                                                                                             
      2005 08-MAY-23               0       129.97       129.97 Khalti                         3 LED Desk Lamp                                                                                                                                                                                               
      2006 15-MAY-23           44.99       899.99          855 IME Pay                        7 Smart Refrigerator                                                                                                                                                                                          
      2007 25-MAY-23           31.99       319.97       287.98 Cash                           2 Bluetooth Earphones                                                                                                                                                                                         
      2007 25-MAY-23           31.99       319.97       287.98 Cash                           2 Home Security Camera                                                                                                                                                                                        
      2008 27-MAY-23               0       119.97       119.97 Esewa                          9 Laptop Backpack                                                                                                                                                                                             
      2009 28-MAY-23           12.49       249.97       237.48 Khalti                         4 Portable Speaker                                                                                                                                                                                            
      2009 28-MAY-23           12.49       249.97       237.48 Khalti                         4 Smart Thermostat                                                                                                                                                                                            

9 rows selected.

SQL> spool off;
