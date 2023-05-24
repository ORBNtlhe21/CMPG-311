CREATE TABLE CUSTOMER_ORDER
(
    Customer_ID NUMBER(4),
    Product_ID NUMBER(5),
    Quantity INTEGER,
    Quantity_Cost NUMBER(8,2),
    PRIMARY KEY (Customer_ID, Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);

CREATE TABLE CHEF
(
    Emp_ID NUMBER(4),
    Salary_Amt NUMBER(6,2),
    Num_Hours_Worked NUMBER(5),
    PRIMARY KEY (Emp_ID),
    FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

CREATE TABLE MANAGER
(
    Emp_ID NUMBER(4),
    Salary_Amt NUMBER(6,2),
    Num_Hours_Worked NUMBER(5),
    PRIMARY KEY (Emp_ID),
    FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);
