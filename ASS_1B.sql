DROP TABLE product_master;
CREATE TABLE product_master(
    Product_no VARCHAR2(6) PRIMARY KEY CHECK(Product_no LIKE 'P%'),
    Description VARCHAR2(40) NOT NULL,
    Profit_percent NUMBER(4,2) NOT NULL,
    Unit_measure VARCHAR2(10) NOT NULL,
    Qty_on_hand NUMBER(8) NOT NULL,
    Reorder_level NUMBER(8) NOT NULL,
    Sell_price NUMBER(8,2) NOT NULL CHECK(Sell_price>0),
    Cost_price NUMBER(8,2) NOT NULL CHECK(Cost_price>0)
);
DESC product_master;
INSERT INTO product_master VALUES(
    'P00001','1.44 Floppies',5,'Piece',100,20,525,500
);
INSERT INTO product_master VALUES(
    'P03453','Monitors',6,'Piece',10,3,12000,11280
);
INSERT INTO product_master VALUES(
    'P06734','Mouse',5,'Piece',20,5,1050,1000
);
INSERT INTO product_master VALUES(
    'P07865','1.22 Floppies',5,'Piece',100,20,525,500
);
INSERT INTO product_master VALUES(
    'P07885','CD Drive',2.5,'Piece',10,3,5250,5100
);
INSERT INTO product_master VALUES(
    'P07867','Keyboard',2,'Piece',10,3,3150,3050
);
INSERT INTO product_master VALUES(
    'P07965','540 HDD',4,'Piece',10,3,8400,8000
);
INSERT INTO product_master VALUES(
    'P07975','1.44 Drive',5,'Piece',10,3,1050,900
);
INSERT INTO product_master VALUES(
    'P08865','1.22 Drive',5,'Piece',2,3,1025,850
);
commit;
SELECT * FROM product_master;