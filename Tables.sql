CREATE TABLE CUSTOMER (
    Customer_ID Number(4) CONSTRAINT customer_id pk PRIMARY KEY,
    Cust_FName VARCHAR2(10) NOT NULL,
    Cust_LName VARCHAR2(15) NOT NULL,
    Cust_Num NUMBER(10) NOT NULL,
    Cust_Email VARCHAR2(30)
);

CREATE TABLE EMPLOYEE(
    Emp_Id NUMBER(4) 
        CONSTRAINT Emp_Id PRIMARY KEY,
    Emp_Fname VARCHAR2(15)
        CONSTRAINT Emp_Num nn NOT NULL,
    Emp_Lname VARCHAR2(15) 
        CONSTRAINT Emp_LName nn NOT NULL,
    Emp_IDNum VARCHAR2(13)
        CONSTRAINT nn NOT NULL,
    Emp_email VARCHAR2(25) 
        CONSTRAINT Emp_email nn NOT NULL
        CONSTRAINT Emp_email uk UNIQUE,
    Emp_CellNum NUMBER(10)
        CONSTRAINT Emp_CellNum nn NOT NULL,
    Emp_Address VARCHAR2(10)
        CONSTRAINT nn NOT NULL,
    Emp_Type char 
        CONSTRAINT nn NOT NULL
);

CREATE TABLE BOOKINGS(
    Bookings_Id NUMBER(4) 
        CONSTRAINT Bookings_Id PRIMARY KEY,
    Customer_Id NUMBER(13)
        CONSTRAINT Customer_Id fk FOREIGN KEY (Customer_Id) 
        REFERENCES Customer(Customer_Id),
    Emp_Id NUMBER(8) 
        CONSTRAINT Emp_Id fk FOREIGN KEY (Emp_Id)
        REFERENCES Employee(Emp_Id),
    Table_Num NUMBER(4) 
        CONSTRAINT Table_num nn NOT NULL,
    Booking_Date DATE
        CONSTRAINT Booking_Date nn NOT NULL,
    booking_Time DATETIME 
        CONSTRAINT Booking_Time nn NOT NULL
);