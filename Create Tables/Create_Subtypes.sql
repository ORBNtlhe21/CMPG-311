CREATE TABLE CHEF (
  Emp_ID NUMBER(5) PRIMARY KEY,
  Salary_Amt NUMBER(8,2) NOT NULL,
  Num_Hours_Worked NUMBER(3) NOT NULL,
  CONSTRAINT min_salary_amt CHECK (Salary_Amt > 0),
  CONSTRAINT min_hours CHECK(Num_Hours_Worked > 0),
  CONSTRAINT chef_fk FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);