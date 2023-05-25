CREATE TABLE CUSTOMER_ORDER (
  Customer_ID NUMBER(4) REFERENCES CUSTOMER(Customer_ID),
  Product_ID NUMBER(5) REFERENCES PRODUCT(Product_ID),
  Quantity NUMBER(2),
  Total_Price DECIMAL(8,2) NOT NULL,
  Order_Date DATE NOT NULL,
  CONSTRAINT customerOrder_id_pk PRIMARY KEY (Customer_ID,Product_ID)
);