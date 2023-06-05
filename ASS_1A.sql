DROP TABLE client_master;
create table client_master(
    Client_no VARCHAR2(6) PRIMARY KEY CHECK(Client_no LIKE 'C%'),
    Name VARCHAR2(30) NOT NULL,
    Address1 VARCHAR2(30),
    Address2 VARCHAR2(30),
    City VARCHAR2(15),
    State VARCHAR2(15),
    Pincode NUMBER(6),
    Balance_due NUMBER(10,2)
);
DESC client_master;
SET LINESIZE 200;
INSERT INTO client_master VALUES(
    'C001','Ivan Bayross','P-76','Worli','Bombay','Maharastra',400054,15000
);
INSERT INTO client_master VALUES(
    'C002','VandanaSatiwal','128','Adams Street','Madras','TamilNadu',780001,0
);
INSERT INTO client_master VALUES(
    'C003','PramadaJaguste','157','Gopalpur','Kolkata','West Bengal',700058,5000
);
INSERT INTO client_master VALUES(
    'C004','BasuNavindgi','A/12','Nariman','Bombay','Maharastra',400056,0
);
INSERT INTO client_master VALUES(
    'C005','Ravi Sreedharan','B/34','Rajnagar','Delhi','Delhi',100001,2000
);
INSERT INTO client_master VALUES(
    'C006','Rukmini','Q-12','Bandra','Bombay','Maharastra',400050,0
);
commit;
SELECT * FROM client_master;