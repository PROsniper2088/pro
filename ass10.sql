
set serveroutput on
declare
vname emp.ename%type;
vjob emp.job%type;
begin
select ename,job into vname,vjob from emp1 where hiredate between '01-Jan-97' and '31-Jan-97';
dbms_output.put_line(vname||' '||vjob);
exception 
when no_data_found then
dbms_output.put_line('No employee hired in 1997');
end;
/


set serveroutput on
declare
out_of_stock exception;
qty_on_hand number(5);
begin 
if qty_on_hand<1 then
raise out_of_stock;
end if;
exception
when out_of_stock then
dbms_output.put_line('Insufficient stock');
end;
/


set serveroutput on;
declare 
user_error exception;
pragma exception_init(user_error,-01400);
begin
insert into emp values (NULL,'abc','Intern',7900,'12-May-22',9000,120,20);
exception
when user_error then
dbms_output.put_line('Cannot insert NULL values');
end;
/


 