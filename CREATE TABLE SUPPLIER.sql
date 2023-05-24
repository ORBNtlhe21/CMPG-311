CREATE TABLE SUPPLIER
(
    Supplier_ID Number(4) CONSTRAINT supplier_id_pk PRIMARY KEY,
    Supplier_Name varchar2(30) NOT NULL,
    Last_Email varchar2(60) UNIQUE,
    Supplier_Num varchar2(10) NOT NULL UNIQUE
);
CREATE PRODUCT_SUPPLIED
(
    Supplier_ID Number(4) REFERENCES SUPPLIER(Supplier_ID), 
    Product_ID Number (4) REFERENCES PRODUCT(Product_ID),
    Quantity INT(6),
    Prod_Cost Number(8,2) NOT NULL 
    CONSTRAINT Product_Supplied_ID_PK PRIMARY KEY (Supplier_ID, Product_ID)
);
