-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
  Customer_ID NUMBER PRIMARY KEY,
  Cust_Fname VARCHAR2(50),
  Cust_Lname VARCHAR2(50),
  Cust_Num VARCHAR2(20),
  Cust_Email VARCHAR2(100)
);

-- Create BOOKINGS table
CREATE TABLE BOOKINGS (
  Bookings_ID NUMBER PRIMARY KEY,
  Customer_ID NUMBER,
  Emp_ID NUMBER,
  Table_Num NUMBER,
  Booking_Date DATE,
  Booking_Time TIMESTAMP,
  FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID),
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create EMPLOYEE table
CREATE TABLE EMPLOYEE (
  Emp_ID NUMBER PRIMARY KEY,
  Emp_Fname VARCHAR2(50),
  Emp_Lname VARCHAR2(50),
  Emp_Email VARCHAR2(100),
  Emp_Num VARCHAR2(20),
  Emp_Address VARCHAR2(200),
  Emp_Type VARCHAR2(50)
);

-- Create CUSTOMER_ORDER table
CREATE TABLE CUSTOMER_ORDER (
  Customer_ID NUMBER,
  Product_ID NUMBER,
  Quantity NUMBER,
  Order_Cost NUMBER,
  PRIMARY KEY (Customer_ID, Product_ID),
  FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID),
  FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);

-- Create PRODUCT table
CREATE TABLE PRODUCT (
  Product_ID NUMBER PRIMARY KEY,
  Prod_Name VARCHAR2(100),
  Prod_Desc VARCHAR2(200),
  Prod_Price NUMBER,
  isAlcohol VARCHAR2(1),
  isFood VARCHAR2(1)
);

-- Create SUPPLIER table
CREATE TABLE SUPPLIER (
  Supplier_ID NUMBER PRIMARY KEY,
  Supplier_Name VARCHAR2(100),
  Supplier_Email VARCHAR2(100),
  Supplier_Num VARCHAR2(20)
);

-- Create PRODUCT_SUPPLIED table
CREATE TABLE PRODUCT_SUPPLIED (
  Product_ID NUMBER,
  Supplier_ID NUMBER,
  Quantity NUMBER,
  Prod_Cost NUMBER,
  PRIMARY KEY (Product_ID, Supplier_ID),
  FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES SUPPLIER(Supplier_ID)
);

-- Create CHEF table
CREATE TABLE CHEF (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create MANAGER table
CREATE TABLE MANAGER (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create WAITER table
CREATE TABLE WAITER (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create SECURITY table
CREATE TABLE SECURITY (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create BARTENDER table
CREATE TABLE BARTENDER (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Create HOSTESS table
CREATE TABLE HOSTESS (
  Emp_ID NUMBER PRIMARY KEY,
  Salary_Amt NUMBER,
  Num_Hours_Worked NUMBER,
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);