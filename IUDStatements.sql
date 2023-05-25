    /*Bookings Table*/
                /* Insert statements*/
INSERT INTO BOOKINGS(Bookings_Id,Customer_Id,Emp_Id,Table_Num,Booking_Date,booking_Time)
    VALUES (1001, 1254, 10125896, 2012,TO_DATE( '07-03-2023', 'DD/MM/YYYY'),TO_TIMESTAMP());

INSERT INTO BOOKINGS(Bookings_Id,Customer_Id,Emp_Id,Table_Num,Booking_Date,booking_Time)
    VALUES (1478, 3256, 52147852, 2547,TO_DATE('27-04-2023', 'DD/MM/YYYY'),TO_TIMESTAMP());

                /*Update statements*/
UPDATE BOOKINGS SET(Table_Num = 2563) WHERE Bookings_Id = 1001;
UPDATE BOOKINGS SET(Booking_Date = TO_DATE('10-03-2023', 'DD/MM/YYYY')) WHERE Bookings_Id = 1478;

                /*Delete statements*/
DELETE FROM BOOKINGS WHERE bookings_id = 1478 AND Booking_Date = TO_DATE('27-04-2023', 'DD/MM/YYYY');
DELETE FROM BOOKINGS WHERE bookings_id = 1001 AND Booking_Date = TO_DATE('07-03-2023', 'DD/MM/YYYY');

                /*Select statements*/
SELECT Booking_Date FROM BOOKINGS WHERE Bookings_Id LIKE 1478;
SELECT Customer_Id FROM BOOKINGS WHERE Table_Num LIKE 2547 AND Bookings_Id LIKE 1478 ;

    /* Employees table */
    
                /*Insert statements*/
INSERT INTO EMPLOYEE(Emp_Id,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_email,Emp_CellNum,Emp_Address,Emp_Type)
    VALUES(1025, "Oratile", "Negama", "0103154785625", "member@gmail.com", "0739932256", 'C');

INSERT INTO EMPLOYEE(Emp_Id,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_email,Emp_CellNum,Emp_Address,Emp_Type)
    VALUES(2015, "Katlego", "Molapo", "0102589654123", "junior2@gmail.com", "0736985214", 'T');

                /*Update statemets*/
UPDATE EMPLOYEE SET(Emp_email = "juniorjj@gmail.com") WHERE Emp_Id = 2015;
UPDATE EMPLOYEE SET(Emp_Lname = "Lobola") WHERE Emp_Id=1025;

                /*Delete statements*/
DELETE FROM EMPLOYEE WHERE Emp_Id = 1025;
DELETE FROM EMPLOYEE WHERE Emp_Id = 2015;

                /*SELECT STATEMETS*/
SELECT * FROM EMPLOYEE WHERE Emp_Fname OR Emp_Lname LIKE '%a';
SELECT * FROM EMPLOYEE WHERE Emp_email LIKE '%or%';