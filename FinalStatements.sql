INSERT INTO EMPLOYEE(Emp_Id,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_email,Emp_CellNum,Emp_Address,Emp_Type)
    VALUES(1025, "Oratile", "Negama", "0103154785625", "member@gmail.com", "0739932256", 'C');
INSERT INTO EMPLOYEE(Emp_Id,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_email,Emp_CellNum,Emp_Address,Emp_Type)
    VALUES(1029, "Oletlile", "Mekgwe", "0103158974625", "memberNinety@gmail.com", "0739947852", 'T');

INSERT INTO CUSTOMER_ORDER(Customer_Id, product_Id,Quantity,Quantity_Cost)
    VALUES(1026,2256,2,100);

INSERT INTO MANAGER(Emp_Id, Salary_Amt,Num_Hours_Worked) 
    VALUES(2569,25000,8);
INSERT INTO MANAGER(Emp_Id,Salary_Amt,Num_Hours_Worked)
    VALUES(2478,13000,7);

INSERT INTO CHEF(Emp_Id, Salary_Amt,Num_Hours_Worked)
    VALUES(1548,25000,15);

INSERT INTO PRODUCT_SUPPLIED(Product_Id,Supplier_Id,Quantity,Prod_Cost)
    VALUES(2256,2536,4,15000);

UPDATE EMPLOYEE SET(Emp_email = "juniorjj@gmail.com") WHERE Emp_Id = 1025;
UPDATE CUSTOMER_ORDER SET(Quantity = 4) WHERE Customer_Id = 1026;

DELETE FROM EMPLOYEE WHERE Emp_Id = 1029;
DELETE FROM MANAGER WHERE Emp_Id = 2478;

SELECT * FROM EMPLOYEE WHERE INITCAP(Emp_Fname) OR INITCAP(Emp_Lname) LIKE '%a';
SELECT Quantity_Cost FROM CUSTOMER_ORDER WHERE Customer_Id = 1025 AND product_Id = 2256;
SELECT * FROM CUSTOMER WHERE UPPER(Cust_FName) LIKE '%a%' AND UPPER(Cust_LName) LIKE '%t%';


TRUNCATE TABLE EMPLOYEE;
TRUNCATE TABLE CUSTOMER_ORDER;
TRUNCATE TABLE MANAGER;

SELECT AVG(Salary_Amt) FROM CHEF;
SELECT MIN(DISTINCT Salary_Amt) FROM MANAGER;
SELECT COUNT(Bookings_Id) FROM BOOKINGS;
SELECT COUNT(Quantity) FROM PRODUCT_SUPPLIED;
