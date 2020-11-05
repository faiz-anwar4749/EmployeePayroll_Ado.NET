Select * from sys.databases;
CREATE DATABASE PayrollService;
USE PayrollService;

CREATE TABLE employeePayroll
(
  id int IDENTITY(1,1),
  name varchar(30) not null,
  salary money not null,
  start date not null,
);

SELECT * FROM employeePayroll;

INSERT INTO employeePayroll values
('Billy' , 100000.00, '2018-01-03'),
('Teresa' , 200000.00, '2019-11-13'),
('Charlie' , 300000.00, '2015-01-03');
SELECT * FROM employeePayroll;

SELECT * FROM employeePayroll where start between CAST('2018-01-01' AS DATE) AND CAST('2020-01-01' AS DATE);

ALTER TABLE employeePayroll ADD gender char(1);
UPDATE employeePayroll SET gender='M' WHERE name='Billy' or name= 'Charlie';
UPDATE employeePayroll SET gender='F' WHERE name='Teresa';

ALTER TABLE employeePayroll ADD Phone_number varchar(14);
ALTER TABLE employeePayroll ADD Address varchar(50);

ALTER TABLE employeePayroll ADD CONSTRAINT Default_Address DEFAULT 'Indian' FOR Address;

ALTER TABLE employeePayroll ADD department varchar(20);

INSERT INTO employeePayroll(name, salary,start) values ('nill', 30000, '2018-07-09');

sp_rename 'employeePayroll.salary' , 'basic_pay';

ALTER TABLE employeePayroll ADD
Deduction float,
taxable_pay real,
incometax float,
netpay real;

SELECT * FROM employeePayroll;
UPDATE employeePayroll SET department='designer' WHERE name='nill';



