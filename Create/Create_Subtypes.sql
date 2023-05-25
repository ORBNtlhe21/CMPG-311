CREATE TABLE WAITER (
  Emp_ID NUMBER(5) NOT NULL REFERENCES EMPLOYEE(Emp_ID),
  Salary_Amt NUMBER(8,2),
  Num_Hours_Worked NUMBER(2),
  CONSTRAINT emp_waiter_id PRIMARY KEY(Emp_ID),
  CONSTRAINT min_salary_amt CHECK (Salary_Amt > 0),
  CONSTRAINT min_hours CHECK(Num_Hours_Worked > 0)
);