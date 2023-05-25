CREATE TABLE SUPPLIER
(
    Supplier_ID NUMBER(4) CONSTRAINT supplier_id_pk PRIMARY KEY,
    Supplier_Name VARCHAR2(30) NOT NULL,
    Supplier_Email VARCHAR2(60) UNIQUE,
    Supplier_Num VARCHAR2(10) NOT NULL UNIQUE
);