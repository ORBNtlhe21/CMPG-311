CREATE TABLE CUSTOMER (
    Customer_ID NUMBER(4) CONSTRAINT customer_id_pk PRIMARY KEY,
    Cust_FName VARCHAR2(20) NOT NULL,
    Cust_LName VARCHAR2(30) NOT NULL,
    Cust_CellNum VARCHAR2(10) NOT NULL,
    Cust_Email VARCHAR2(40),
    CONSTRAINT cust_cell_uk UNIQUE(Cust_CellNum),
    CONSTRAINT cust_email_uk UNIQUE(Cust_Email)
);