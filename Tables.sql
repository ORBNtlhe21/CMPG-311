CREATE TABLE CUSTOMER (
    Customer_ID Number(4) CONSTRAINT customer_id PRIMARY KEY,
    Cust_FName VARCHAR2(10) NOT NULL,
    Cust_LName VARCHAR2(15) NOT NULL,
    Cust_Num NUMBER(10) NOT NULL,
    Cust_Email VARCHAR2(30)
);

CREATE TABLE EMPLOYEE(
    Emp_Id NUMBER(4) CONSTRAINT emp_id PRIMARY KEY,
    Emp_Fname VARCHAR2(15) NOT NULL,
    Emp_Lname VARCHAR2(15) NOT NULL,
    Emp_IDNum VARCHAR2(13) NOT NULL,
    Emp_email VARCHAR2(25) NOT NULL,
    Emp_CellNum NUMBER(10) NOT NULL,
    Emp_Address VARCHAR2(10) NOT NULL,
    Emp_Type char NOT NULL
);

CREATE TABLE BOOKINGS(
    Bookings_Id NUMBER(4) CONSTRAINT bookings_id PRIMARY KEY,
    Customer_Id NUMBER(13) FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
    Emp_Id NUMBER(8) FOREIGN KEY(emp_id) REFERENCES Employee(emp_id),
    Table_Num NUMBER(4) NOT NULL,
    Booking_Date DATE NOT NULL,
    booking_Time DATETIME NOT NULL
);