CREATE TABLE PRODUCT(
    Product_ID NUMBER(5) CONSTRAINT product_id PRIMARY KEY,
    Prod_Name varchar(30) NOT NULL,
    Prod_Description varchar(30) NOT NULL,
    Prod_Price NUMBER(8,2) NOT NULL,
    isAlcohol CHAR(1) NOT NULL,
    isFood CHAR(1) NOT NULL
);