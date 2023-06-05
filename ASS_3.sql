select count(*) from sales_order;
select AVG(Sell_price) from product_master;
select count(*) from product_master where Sell_price>=1500;
select MAX(Sell_price)as "MAX_PRICE",MIN(Sell_price) as "MIN_PRICE" from product_master ;
drop TABLE Emp; 
create table Emp(
	EMPNO NUMBER(4,0) not null,
	ENAME VARCHAR2(10),
	JOB VARCHAR2(9),
	MGR NUMBER(4,0),
	HIREDATE DATE,
	SAL NUMBER(7,2),
	COMM NUMBER(7,2),
	DEPTNO NUMBER(2,0) not null);
DESC Emp;
INSERT into Emp values(7369,'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20);
INSERT INTO Emp VALUES(7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30);
INSERT INTO Emp VALUES(7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30);
INSERT INTO Emp VALUES(7566,'JONES','MANAGER',7839,'02-APR-81',2975,NULL,20);
INSERT INTO Emp VALUES(7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30);
INSERT INTO Emp VALUES(7698,'BLAKE','MANAGER',7839,'01-MAY-81',2850,NULL,30);
INSERT INTO Emp VALUES(7782,'CLARK','MANAGER',7839,'09-JUN-81',2450,NULL,10);
INSERT INTO Emp VALUES(7788,'SCOTT','ANALYST',7566,'19-APR-87',3000,NULL,20);
INSERT INTO Emp VALUES(7839,'KING','PRESIDENT',NULL,'17-NOV-81',5000,NULL,10);
INSERT INTO Emp VALUES(7844,'TURNER','SALESMAN',7698,'08-SEP-81',1500,0,30);
INSERT INTO Emp VALUES(7876,'ADAMS','CLERK',7788,'23-MAY-87',1100,NULL,20);
INSERT INTO Emp VALUES(7900,'JAMES','CLERK',7698,'03-DEC-81',950,NULL,30);
INSERT INTO Emp VALUES(7902,'FORD','ANALYST',7566,'03-DEC-81',3000,NULL,20);
INSERT INTO Emp VALUES(7934,'MILLER','CLERK',7782,'23-JAN-82',1300,NULL,10);
commit;
select * from Emp;
drop table Dept;
create table Dept(
	deptno NUMBER(2,0) not null,
	dname VARCHAR2(14) not null,
	loc VARCHAR2(13) not null);
DESC Dept;
INSERT into Dept VALUES(10,'ACCOUNTING','NEW YORK');
INSERT into Dept VALUES(20,'RESEARCH','DALLAS');
INSERT into Dept VALUES(30,'SALES','CHICAGO');
INSERT into Dept VALUES(40,'OPERATIONS','BOSTON');
commit;
select * from Dept;
drop table Salgrade;
create table Salgrade(
	grade NUMBER,
	losal NUMBER,
	hisal NUMBER);
DESC Salgrade;
INSERT INTO Salgrade VALUES (1,700,1200);
INSERT INTO Salgrade VALUES (2,1201,1400);
INSERT INTO Salgrade VALUES  (3,1401,2000);
INSERT INTO Salgrade VALUES  (4,2001,3000);
INSERT INTO Salgrade VALUES  (5,3001,9999);
commit;
select * from Salgrade;
select DEPTNO,EMPNO,MGR from Emp;
select dname,loc from Dept;
select ENAME from Emp where DEPTNO=20;
select ENAME,SAL from Emp where SAL>2500;
select * from Emp where HIREDATE<'31-JUL-81';
select ENAME from Emp where JOB not like 'MANAGER';
select ENAME from Emp where ENAME like '%s';
select ENAME from Emp where length(ENAME)=5;
select ENAME from Emp where ENAME like '__R%';
select ENAME,SAL from Emp where SAL >= 1500 and SAL <= 3500 ;
select ENAME,MGR from Emp where MGR in (7902,7566,7789);
Select ENAME from Emp where Ename like 'J%' or Ename like 'T%';
select Ename,JOB from Emp where JOB like '%M%' or JOB like '%P%';
select distinct(JOB) from Emp;
select ENAME from Emp where DEPTNO in (10,20);
select ENAME,SAL, SAL+(SAL*0.15) as "RAISE SALARY" from Emp;
select MAX(SAL),MIN(SAL),AVG(SAL) from Emp;
select COUNT(distinct(JOB)) from Emp;
select MAX(SAL)-MIN(SAL) from Emp;
select SUM(SAL) from Emp;
select ENAME from Emp where DEPTNO in (20);
select ENAME from Emp where COMM is NULL;
select count(distinct(deptno)) from Emp;
select ENAME,JOB from Emp where MGR is NULL;
select ENAME from Emp where (SYSDATE-HIREDATE)/365<38;