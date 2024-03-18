SQL> select * from customer where CUSTOMER_CATEGORY= 'Staff' ;

CUSTOMER_ID CUSTOMER_NAME                                        DISCOUNT CUSTOMER_ADDRESS     CUSTOMER_PHONE       CUSTOMER_CATEGORY                                                                                                                                                                       
----------- -------------------------------------------------- ---------- -------------------- -------------------- --------------------                                                                                                                                                                    
          2 Ramesh Shahi                                               10 Koteshwor            9841345678           Staff                                                                                                                                                                                   
          6 Kiran Shrestha                                              0 Patan                9841745676           Staff                                                                                                                                                                                   
         10 Anju Gurung                                                 5 New Baneshwor        9842145680           Staff                                                                                                                                                                                   
         15 Alok Shrestha                                               0 Baneshwor            9842645685           Staff                                                                                                                                                                                   
         18 Asmita Karki                                                0 Sanepa               9842945688           Staff                                                                                                                                                                                   

SQL> spool off
