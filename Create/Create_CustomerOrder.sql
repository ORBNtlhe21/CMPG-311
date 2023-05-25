CREATE TABLE CUSTOMER_ORDER (
  Customer_ID NUMBER(4) REFERENCES CUSTOMER(Customer_ID),
  Product_ID NUMBER(5) REFERENCES PRODUCT(Product_ID),
  Quantity NUMBER(2),
  Order_Cost NUMBER(8,2) NOT NULL,
  CONSTRAINT customerOrder_id_pk PRIMARY KEY (Customer_ID,Product_ID)
);