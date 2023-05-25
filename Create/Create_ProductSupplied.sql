CREATE TABLE PRODUCT_SUPPLIED (
  Supplier_ID NUMBER(4) REFERENCES SUPPLIER(Supplier_ID),
  Product_ID NUMBER(5) REFERENCES PRODUCT(Product_ID),
  Quantity NUMBER(2),
  Prod_Cost NUMBER(8,2) NOT NULL,
  Shipment_Date DATE NOT NULL,
  CONSTRAINT productSupplied_id_pk PRIMARY KEY (Supplier_ID,Product_ID)
);