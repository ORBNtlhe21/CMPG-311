CREATE TABLE EMPLOYEE(
    Emp_ID NUMBER(5) CONSTRAINT emp_id_pk PRIMARY KEY,
    Emp_Fname VARCHAR2(30) NOT NULL,
    Emp_Lname VARCHAR2(30) NOT NULL,
    Emp_IDNum VARCHAR2(13) NOT NULL,
    Emp_Email VARCHAR2(40) NOT NULL,
    Emp_CellNum VARCHAR2(10) NOT NULL,
    Emp_Address VARCHAR2(40) NOT NULL,
    Emp_Type VARCHAR2(15) NOT NULL,
    Salary_Amt NUMBER(8,2) NOT NULL,
    Num_Hours_Worked NUMBER(3) NOT NULL,
    CONSTRAINT emp_idNum_uk UNIQUE(Emp_IDNum),
    CONSTRAINT emp_cell_uk UNIQUE(Emp_CellNum),
    CONSTRAINT emp_email_uk UNIQUE(Emp_Email)
);