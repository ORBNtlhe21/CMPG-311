CREATE TABLE BOOKINGS(
    Bookings_ID NUMBER(4) CONSTRAINT bookings_id PRIMARY KEY,
    Customer_ID NUMBER(4) NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Emp_ID NUMBER(5) NOT NULL REFERENCES EMPLOYEE(Emp_ID),
    Table_Num NUMBER(2) NOT NULL,
    Booking_Date DATE NOT NULL,
    booking_Time TIMESTAMP NOT NULL
);