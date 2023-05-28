CREATE TABLE PRODUCT_SUPPLIED (
  CONSTRAINT productSupplied_id_pk PRIMARY KEY (Supplier_ID,Product_ID),
  Supplier_ID NUMBER(4) REFERENCES SUPPLIER(Supplier_ID),
  Product_ID NUMBER(5) REFERENCES PRODUCT(Product_ID),
  Quantity NUMBER(2),
  Prod_Cost NUMBER(8,2) NOT NULL,
  Shipment_Date DATE NOT NULL,
  Type_Of_Payment VARCHAR2(10) NOT NULL
);