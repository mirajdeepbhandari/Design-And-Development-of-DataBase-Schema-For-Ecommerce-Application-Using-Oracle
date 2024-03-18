SQL> SELECT V.VENDOR_ID, V.VENDOR_NAME, V.VENDOR_EMAIL,
  2  V.VENDOR_CONTACT, V.VENDOR_ADDRESS, COUNT(P.PRODUCT_ID) AS
  3  PRODUCT_COUNT
  4  FROM VENDOR V
  5  INNER JOIN PRODUCT P ON V.VENDOR_ID = P.VENDOR_ID
  6  GROUP BY V.VENDOR_ID, V.VENDOR_NAME, V.VENDOR_EMAIL,
  7  V.VENDOR_CONTACT, V.VENDOR_ADDRESS
  8  HAVING COUNT(P.PRODUCT_ID) >= 3;

 VENDOR_ID VENDOR_NAME                    VENDOR_EMAIL                                       VENDOR_CONTACT       VENDOR_ADDRESS       PRODUCT_COUNT                                                                                                                                                                                                                                                            
---------- ------------------------------ -------------------------------------------------- -------------------- -------------------- -------------                                                                                                                                                                                                                                                            
       101 LG Kitchen Suppliers           LGks@gmail.com                                     01-22334490          Koteshwor                        6                                                                                                                                                                                                                                                            
       102 XYZ Accessories Distributers   xyzAccessories@gmail.com                           01-22334491          Boudha                           6                                                                                                                                                                                                                                                            
       100 ABC TV Nepal                   ABC@gmail.com                                      01-22334489          Kalanki                          6                                                                                                                                                                                                                                                            
       103 Network House Nepal            NetworkHouseNepal@gmail.com                        01-22334492          Thamel                           6                                                                                                                                                                                                                                                            
       104 GadgetGalaxy Nepal             gadgetgalaxy@gmail.com                             01-22334495          Gongabu                          6                                                                                                                                                                                                                                                            

SQL> spool off;
