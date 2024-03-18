SQL> SELECT * from product where product_name like '_a%' and
  2  STOCK_QUANTITIES >= 50;

PRODUCT_ID PRODUCT_NAME                        PRICE DESCRIPTION                                                                                                                                                                                                                                                     STOCK_QUANTITIES  VENDOR_ID CATEGORY_ID                                                    
---------- ------------------------------ ---------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------------- ---------- -----------                                                    
         8 Gaming Mouse                        29.99 Precision gaming mouse for immersive gaming experience                                                                                                                                                                                                                        60        102         202                                                    
        15 Laptop Backpack                     39.99 Durable laptop backpack for everyday use                                                                                                                                                                                                                                      50        104         206                                                    

SQL> spool off;
