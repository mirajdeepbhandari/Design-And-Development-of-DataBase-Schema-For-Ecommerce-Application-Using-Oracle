SQL> SELECT P.Product_id, P.Product_name, P.price, P.DESCRIPTION, P.Stock_quantities,
  2  PO. "Total Order Quantities"
  3  FROM product P
  4  INNER JOIN (
  5   SELECT product_id, SUM(order_quantities) AS "Total Order Quantities"
  6   FROM productorder
  7   GROUP BY product_id
  8   ORDER BY "Total Order Quantities" DESC
  9  ) PO ON P.product_id = PO.product_id
 10  WHERE ROWNUM <= 3
 11  ORDER BY PO. "Total Order Quantities" DESC;

PRODUCT_ID PRODUCT_NAME                        PRICE DESCRIPTION                                                                                                                                                                                                                                                     STOCK_QUANTITIES Total Order Quantities                                                    
---------- ------------------------------ ---------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------------- ----------------------                                                    
         3 HD Soundbar                        149.99 Enhance your audio experience with this soundbar                                                                                                                                                                                                                              20                      5                                                    
         1 Smart TV Stand                      99.99 Stylish stand for your smart TV                                                                                                                                                                                                                                               50                      2                                                    
         2 Kitchen Blender                     49.99 Powerful blender for your kitchen needs                                                                                                                                                                                                                                       30                      1                                                    

SQL> spool off;
