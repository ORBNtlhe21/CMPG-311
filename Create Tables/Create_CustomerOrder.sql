CREATE TABLE CUSTOMER_ORDER(
    CONSTRAINT Cust_Order_ID PRIMARY KEY(Customer_ID,Product_ID),
    Customer_ID NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Product_ID NOT NULL REFERENCES PRODUCT(Product_ID),
    Quantity NUMBER,
    Total_Price NUMBER(8,2) NOT NULL,
    Type_Of_Payment VARCHAR2(10) NOT NULL,
    Date_Of_Order DATE NOT NULL
);