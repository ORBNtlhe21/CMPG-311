CREATE TABLE ALCOHOL(
    Product_ID NUMBER(5) NOT NULL REFERENCES PRODUCT(product_id)
    CONSTRAINT Product_ID_PK PRIMARY KEY,
    Alcohol_Type varchar(20)
);

CREATE TABLE FOOD(
    Product_ID NUMBER(5) NOT NULL REFERENCES PRODUCT(product_id)
    CONSTRAINT Product_ID_PK1 PRIMARY KEY,
    Food_Type varchar(20)