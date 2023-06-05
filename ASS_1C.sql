DROP TABLE salesman_master;
CREATE TABLE salesman_master(
    Salesman_no VARCHAR2(6) PRIMARY KEY CHECK(Salesman_no LIKE 'S%'),
    Salesman_name VARCHAR2(30) NOT NULL,
    Address1 VARCHAR2(30) NOT NULL,
    Address2 VARCHAR2(30) ,
    City VARCHAR2(20) ,
    Pincode NUMBER(8),
    State VARCHAR2(20),
    Sal_amt NUMBER(8,2) NOT NULL CHECK(Sal_amt>0)
);
DESC salesman_master;
INSERT INTO salesman_master VALUES(
    'S001','Kiran','A/14','Worli','Bombay',400002,'Maharastra',3000
);
INSERT INTO salesman_master VALUES(
    'S002','Manish','65','Nariman','Bombay',400001,'Maharastra',3000
);
INSERT INTO salesman_master VALUES(
    'S003','Ravi','P-7','Bandra','Bombay',400032,'Maharastra',3000
);
INSERT INTO salesman_master VALUES(
    'S004','Asish','A/5','Juhu','Bombay',400044,'Maharastra',3000
);
commit;
SELECT * FROM salesman_master;