CREATE TABLE CUSTOMER (
    Customer_ID Number(4) CONSTRAINT customer_id pk PRIMARY KEY,
    Cust_FName VARCHAR2(10) NOT NULL,
    Cust_LName VARCHAR2(15) NOT NULL,
    Cust_Num NUMBER(10) NOT NULL,
    Cust_Email VARCHAR2(30)
);