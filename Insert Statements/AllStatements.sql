UPDATE employee SET Emp_email = 'juniorjj@gmail.com' WHERE Emp_Id = 12345;
UPDATE employee SET Emp_Lname = 'Oarabile' WHERE Emp_Id=12896;
UPDATE customer SET Cust_Email WHERE Customer_ID = 2356;

                /*Delete statements*/
DELETE FROM tickets WHERE Ticket_ID = 9102; 
DELETE FROM product_supplied WHERE Supplier_ID = 5569;
DELETE FROM bookings WHERE Bookings_ID = 1469; 

                /*Truncate Statements*/
TRUNCATE TABLE EMPLOYEE;
TRUNCATE TABLE CUSTOMER_ORDER;
TRUNCATE TABLE MANAGER;

                /*Select Statements*/
SELECT Cust_Email FROM customer;
SELECT Salary_Amt FROM employee;
SELECT * FROM product;
SELECT Emp_ID,Customer_ID FROM bookings; 
SELECT DISTINCT Customer_ID FROM customer;

                /*Aggregate functions*/                
SELECT AVG(Salary_Amt) FROM employees;
SELECT MIN(Ticket_Price) FROM tickets;
SELECT COUNT(Event_ID) FROM events;

                /*Like AND OR*/
SELECT Emp_Fname,Emp_Lname, Emp_Type FROM employee WHERE Emp_Type = 'chef' AND Salary_Amt > 700;
SELECT Table_Num FROM bookings WHERE Bookings_ID = 1458 AND Customer_ID = 1245;
SELECT * FROM customer_order WHERE Customer_ID = 1234 OR Customer_ID = 1245;
SELECT Cust_Email FROM customer WHERE Cust_Fname LIKE 'k%';
SELECT * FROM events WHERE Event_ID LIKE 2563;

                /*character functions*/
Select UPPER(Event_Name) FROM events;
SELECT SUBSTR(Event_Name,4) FROM events;
SELECT LENGTH(Supplier_Email) FROM supplier WHERE Supplier_ID = 2589;
SELECT INITCAP(Prod_Name) FROM product;
