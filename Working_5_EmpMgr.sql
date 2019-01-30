Create Table EmpMgr
(
   Empno INT,
   Name varchar(30),
   Loc varchar(30),
   MgrNo INT,
   Primary Key(Empno)
)


INSERT INTO EmpMgr(Empno,Name,Loc,MgrNo)
values(1,'Anshuman','Mumbai',null),
(2,'Richa','Chennai',1),
(3,'Rashmi','Pune',1),
(4,'Dhanya','Chennai',2),
(5,'Shyam','Chennai',3),
(6,'Vaishnavi','Chennai',2),
(7,'Puja','Mumbai',3),
(8,'Vaibhav','Pune',2),
(9,'Lakshmi','Bangalore',1), 
(10,'Gajala','Mumbai',3)


select * from EmpMgr


SELECT EM1.EMPNO,EM2.EMPNO,
	   EM1.NAME AS MANAGER , EM2.NAME AS EMPLOYEE
FROM EMPMGR EM1 inner JOIN EMPMGR EM2
ON EM1.EMPNO = EM2.MGRNO 
ORDER BY EM1.EMPNO