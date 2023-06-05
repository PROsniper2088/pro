DROP TABLE sales_order_details;
CREATE TABLE sales_order_details(
    Order_no VARCHAR2(6) REFERENCES sales_order(Order_no),
    Product_no VARCHAR2(6) REFERENCES product_master(Product_no),
    Qty_ordered NUMBER(8) ,
    Qty_disp NUMBER(8),
    Product_rate NUMBER(10,2)
);
INSERT INTO sales_order_details VALUES(
    'O19001','P00001',4,4,525
);
INSERT INTO sales_order_details VALUES(
    'O19001','P07965',2,1,8400
);
INSERT INTO sales_order_details VALUES(
    'O19001','P07885',2,1,5250
);
INSERT INTO sales_order_details VALUES(
    'O19002','P00001',10,0,525
);
INSERT INTO sales_order_details VALUES(
    'O46865','P07867',3,3,3150
);
INSERT INTO sales_order_details VALUES(
    'O46865','P07885',3,1,5250
);
INSERT INTO sales_order_details VALUES(
    'O46865','P00001',10,10,525
);
INSERT INTO sales_order_details VALUES(
    'O46865','P03453',4,4,1050
);
INSERT INTO sales_order_details VALUES(
    'O19003','P03453',2,2,1050
);
INSERT INTO sales_order_details VALUES(
    'O19003','P06734',1,1,12000
);
INSERT INTO sales_order_details VALUES(
    'O46866','P07965',1,0,8400
);
INSERT INTO sales_order_details VALUES(
    'O46866','P07975',1,0,1050
);
INSERT INTO sales_order_details VALUES(
    'O19008','P00001',10,5,525
);
INSERT INTO sales_order_details VALUES(
    'O19008','P07975',5,3,1050
);
commit;
select * from sales_order_details;

