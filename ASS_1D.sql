DROP TABLE sales_order;
CREATE TABLE sales_order(
    Order_no VARCHAR2(6) PRIMARY KEY CHECK(Order_no LIKE 'O%'),
    Order_date DATE,
    Client_no VARCHAR2(6) REFERENCES client_master(Client_no),
    Salesman_no VARCHAR2(6) REFERENCES salesman_master(Salesman_no),
    Delivery_type CHAR(1) DEFAULT 'F' CHECK(Delivery_type in ('P','F')),
    Bill_y_n CHAR(1),
    Delivery_date DATE ,
    Order_status VARCHAR2(10) CHECK(Order_status in ('InProcess','Fullfilled','BackOrder','Cancelled')),
    CHECK(Delivery_date>=Order_date)
);
DESC sales_order;
INSERT INTO sales_order VALUES(
    'O19001','12-Jan-96','C001','S001','F','N','20-Jan-96','InProcess'
);
INSERT INTO sales_order VALUES(
    'O19002','25-Jan-96','C002','S002','P','N','27-Jan-96','BackOrder'
);
INSERT INTO sales_order VALUES(
    'O46865','18-Feb-96','C003','S003','F','Y','20-Feb-96','Fullfilled'
);
INSERT INTO sales_order VALUES(
    'O19003','03-Apr-96','C001','S001','F','Y','07-Apr-96','Fullfilled'
);
INSERT INTO sales_order VALUES(
    'O46866','20-May-96','C004','S002','P','N','22-May-96','Cancelled'
);
INSERT INTO sales_order VALUES(
    'O19008','24-May-96','C005','S004','F','N','26-May-96','InProcess'
);
commit;
SELECT * FROM sales_order;