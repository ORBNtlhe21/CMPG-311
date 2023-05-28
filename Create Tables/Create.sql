CREATE TABLE PRODUCT(
    Product_ID NUMBER(5) CONSTRAINT product_id_pk PRIMARY KEY,
    Prod_Name VARCHAR2(30) NOT NULL,
    Prod_Desc VARCHAR2(30) NOT NULL,
    Prod_Price NUMBER(8,2) NOT NULL
);

CREATE TABLE CUSTOMER (
    Customer_ID NUMBER(4) CONSTRAINT customer_id_pk PRIMARY KEY,
    Cust_FName VARCHAR2(20) NOT NULL,
    Cust_LName VARCHAR2(30) NOT NULL,
    Cust_CellNum VARCHAR2(10) NOT NULL,
    Cust_Email VARCHAR2(40),
    CONSTRAINT cust_cell_uk UNIQUE(Cust_CellNum),
    CONSTRAINT cust_email_uk UNIQUE(Cust_Email)
);

CREATE TABLE CUSTOMER_ORDER(
    CONSTRAINT Cust_Order_ID PRIMARY KEY(Customer_ID,Product_ID),
    Customer_ID NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Product_ID NOT NULL REFERENCES PRODUCT(Product_ID),
    Quantity NUMBER,
    Total_Price NUMBER(8,2) NOT NULL,
    Type_Of_Payment VARCHAR2(10) NOT NULL,
    Date_Of_Order DATE NOT NULL
);

CREATE TABLE EMPLOYEE(
    Emp_ID NUMBER(5) CONSTRAINT emp_id_pk PRIMARY KEY,
    Emp_Fname VARCHAR2(30) NOT NULL,
    Emp_Lname VARCHAR2(30) NOT NULL,
    Emp_IDNum VARCHAR2(13) NOT NULL,
    Emp_Email VARCHAR2(40) NOT NULL,
    Emp_CellNum VARCHAR2(10) NOT NULL,
    Emp_Type VARCHAR2(15) NOT NULL,
    Salary_Amt NUMBER(8,2) NOT NULL,
    Num_Hours_Worked NUMBER(3) NOT NULL,
    CONSTRAINT emp_idNum_uk UNIQUE(Emp_IDNum),
    CONSTRAINT emp_cell_uk UNIQUE(Emp_CellNum),
    CONSTRAINT emp_email_uk UNIQUE(Emp_Email)
);

CREATE TABLE BOOKINGS(
    Bookings_ID NUMBER(4) CONSTRAINT bookings_id_pk PRIMARY KEY,
    Emp_ID NOT NULL REFERENCES EMPLOYEE(Emp_ID),
    Customer_ID NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Table_Num NUMBER(2) NOT NULL,
    Booking_Date DATE NOT NULL,
    Booking_Time TIMESTAMP NOT NULL
);

CREATE TABLE SUPPLIER(
    Supplier_ID NUMBER(4) CONSTRAINT supplier_id_pk PRIMARY KEY,
    Supplier_Name VARCHAR2(30) NOT NULL,
    Supplier_Email VARCHAR2(60) NOT NULL,
    Supplier_Num VARCHAR2(10) NOT NULL,
    CONSTRAINT supp_num UNIQUE(Supplier_Num),
    CONSTRAINT supp_email UNIQUE(Supplier_Email)
);

CREATE TABLE PRODUCT_SUPPLIED (
  CONSTRAINT productSupplied_id_pk PRIMARY KEY (Supplier_ID,Product_ID),
  Supplier_ID NUMBER(4) REFERENCES SUPPLIER(Supplier_ID),
  Product_ID NUMBER(5) REFERENCES PRODUCT(Product_ID),
  Quantity NUMBER(2),
  Prod_Cost NUMBER(8,2) NOT NULL,
  Shipment_Date DATE NOT NULL,
  Type_Of_Payment VARCHAR2(10) NOT NULL
);

CREATE TABLE EVENTS(
    Event_ID NUMBER(4) CONSTRAINT event_id_pk PRIMARY KEY,
    Event_Name VARCHAR2(20) NOT NULL,
    Event_Type VARCHAR2(30) NOT NULL,
    Event_Date DATE NOT NULL
);

CREATE TABLE TICKETS (
    Ticket_ID NUMBER(4) CONSTRAINT ticket_id_pk PRIMARY KEY,
    Event_ID NOT NULL REFERENCES EVENTS(Event_ID),
    Customer_ID NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Ticket_Price NUMBER(8,2) NOT NULL,
    Num_Of_Tickets NUMBER NOT NULL,
    Type_Of_Payment VARCHAR2(10) NOT NULL,
    Date_Of_Transaction DATE NOT NULL
);