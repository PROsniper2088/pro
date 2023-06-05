
SET SURVEROUTPUT ON
DECLARE
	Vempno emp.empno%type;
	Vename emp.ename%type;
	Vsal emp.sal%type;
	Vdeptno emp.deptno%type;
URSOR C1 is SELECT empno,ename,sal,deptno from emp 
where sal+NVL(comm.,0) > 25000;
	BEGIN
		OPENC1;
		LOOP
			FETCH C1 INTO Vempno,Vname,Vsal, Vdeptno;
			IF C1%FOUND THEN
				Dbms_output.put_line(Vempno||’ ‘ || Vname||’  ‘ || Vsal ||’ ‘ ||Vdeptno);
			ELSE
				EXIT;
			END IF;
		END LOOP;
    		CLOSE C1;
	END;


SET SURVEROUTPUT ON
DECLARE
	CURSOR C2 IS SELECT empno, sal, ename from emp order by sal desc;
BEGIN
	FOR record1 IN C1
LOOP
	INSERT INTO message (EmpNumber, Name,Salary) 
VALUES (record1.empno, record1.sal, record1.ename);
EXIT WHEN C1%ROWCOUNT=5;
		END LOOP;
		COMMIT;
END;

Create table emp_sal
(emp_id varchar2(8) Primary key,
  cur_sal number(7,2) NOT NULL;
  inc_date date NOT NULL
);
SET SURVEROUTPUT ON
DECLARE
	inc number;
	emp_sal_rec emp_sal%ROWTYPE;
	CURSOR cur is select * from emp where deptno = (select deptno from dept 
where dname LIKE ‘RESEARCH’);

BEGIN
	FOR emp_sal_rec in cur
	LOOP
		inc := emp_sal_rec.sal*1.02;
		insert into emp_sal values (emp_sal_rec.empno, inc, sysdate);
	END LOOP;
END;

DECLARE
dno number := &deptno;
BEGIN
	update dept set loc =’KOLKATA’ where deptno = dno; 
	if (SQL%FOUND) then
		DBMS_OUTPUT.PUT_LINE(‘Updated’);
	else
		DBMS_OUTPUT.PUT_LINE(‘Data NOT Found’);
	end if;
END;

SET SURVEROUTPUT ON
DECLARE
	user_error EXCEPTION;
	PRAGMA EXECPTION_INIT(user_error, -0150);
BEGIN
	insert into emp values( NULL, ‘Subir’, ‘REARCH’, 7900, ’12-MAY-2002’, 90000,1200,200);
	EXECPTION
		WHEN user_error THEN
			DBMS_OUTPUT.PUT_LINE (‘CANNOT INSERT NULL VALUES’);
	END;	

