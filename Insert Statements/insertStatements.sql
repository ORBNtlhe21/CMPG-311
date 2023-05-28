INSERT INTO customer(Customer_ID,Cust_FName,Cust_LName,Cust_CellNum,Cust_Email)
    VALUES(1234,'Lerato','moloko',0739952114,'lerato@gmail.com');
INSERT INTO customer(Customer_ID,Cust_FName,Cust_LName,Cust_CellNum,Cust_Email)
    VALUES(1245,'Ole','mbalula',0785452154,'oleMbalula@gmail.com');
INSERT INTO customer(Customer_ID,Cust_FName,Cust_LName,Cust_CellNum,Cust_Email)
    VALUES(2356,'Katlego','seloko',0782569853,'KatMonate@gmail.com');

INSERT INTO employee(Emp_ID,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_Email,Emp_CellNum,Emp_Type,Salary_Amt,Num_Hours_Worked)
    VALUES(12345,'Kemoratile','polokane','0102356987456','kemoRatii@gmail.com','0723658965','security',7000,8);
INSERT INTO employee(Emp_ID,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_Email,Emp_CellNum,Emp_Type,Salary_Amt,Num_Hours_Worked)
    VALUES(12896,'Onthatile','Tlokwe','0112589687456','Nthatii@gmail.com','0711258965','Chef',9500,4);
INSERT INTO employee(Emp_ID,Emp_Fname,Emp_Lname,Emp_IDNum,Emp_Email,Emp_CellNum,Emp_Type,Salary_Amt,Num_Hours_Worked)
    VALUES(85698,'Olebogeng','leeuw','0102356896547','oleleeuw@gmail.com','0723001236','waiter',12000,6);

INSERT INTO product(Product_ID,Prod_Name,Prod_Desc,Prod_Price)
    VALUES(11025,'luxo','Nice alcohol',180);
INSERT INTO product(Product_ID,Prod_Name,Prod_Desc,Prod_Price)
    VALUES(11897,'Russian Bear','cheap stuff',300);
INSERT INTO product(Product_ID,Prod_Name,Prod_Desc,Prod_Price)
    VALUES(11102,'Mogodu','Cooked',220);

INSERT INTO customer_order(Customer_ID,Product_ID,Quantity,Total_Price,Type_Of_Payment,Date_Of_Order)
    VALUES(1234,11025,3,540,'card',TO_DATE('26-06-2023','DD-MM-YYYY'));
INSERT INTO customer_order(Customer_ID,Product_ID,Quantity,Total_Price,Type_Of_Payment,Date_Of_Order)
    VALUES(1245,11897,1,300,'Cash',TO_DATE('29-05-2023','DD-MM-YYYY'));
INSERT INTO customer_order(Customer_ID,Product_ID,Quantity,Total_Price,Type_Of_Payment,Date_Of_Order)
    VALUES(2356,11102,2,440,'card',TO_DATE('20-06-2023','DD-MM-YYYY'));

INSERT INTO bookings(Bookings_ID,Emp_ID,Customer_ID, Table_Num,Booking_Date)
    VALUES(1458,12345,1245,4,TO_DATE('13-04-2023','DD-MM-YYYY'));
INSERT INTO bookings(Bookings_ID,Emp_ID,Customer_ID, Table_Num,Booking_Date)
    VALUES(1469,12345,1234,3,TO_DATE('13-06-2023','DD-MM-YYYY'));
INSERT INTO bookings(Bookings_ID,Emp_ID,Customer_ID, Table_Num,Booking_Date)
    VALUES(1785,85698,2356,9,TO_DATE('30-04-2023','DD-MM-YYYY'));

INSERT INTO supplier(Supplier_ID,Supplier_Name,Supplier_Email,Supplier_Num)
    VALUES(2589,'mac G','sovietUnion@gmail.com','0123654789');
INSERT INTO supplier(Supplier_ID,Supplier_Name,Supplier_Email,Supplier_Num)
    VALUES(5569,'gin boss','saviour@gmail.com','0214599632');
INSERT INTO supplier(Supplier_ID,Supplier_Name,Supplier_Email,Supplier_Num)
    VALUES(7895,'fast foodB','gentals@gmail.com','0114785236');

INSERT INTO product_supplied(Supplier_ID,Product_ID,Quantity,Prod_Cost,Shipment_Date,Type_Of_Payment)
    values(2589,11025,2,8563,TO_DATE('30-04-2023','DD-MM-YYYY'),'cash');
INSERT INTO product_supplied(Supplier_ID,Product_ID,Quantity,Prod_Cost,Shipment_Date,Type_Of_Payment)
    values(5569,11897,2,8563,TO_DATE('15-04-2023','DD-MM-YYYY'),'Card');
INSERT INTO product_supplied(Supplier_ID,Product_ID,Quantity,Prod_Cost,Shipment_Date,Type_Of_Payment)
    values(7895,11102,2,8563,TO_DATE('23-04-2023','DD-MM-YYYY'),'EFT');

INSERT INTO events(Event_ID,Event_Name,Event_Type,Event_Date)
    VALUES(2563,'campus jumpoff','concert',TO_DATE('02-05-2023','DD-MM-YYYY'));
INSERT INTO events(Event_ID,Event_Name,Event_Type,Event_Date)
    VALUES(9989,'campus cool','concert',TO_DATE('16-12-2023','DD-MM-YYYY'));
INSERT INTO events(Event_ID,Event_Name,Event_Type,Event_Date)
    VALUES(2232,'Magosha','event',TO_DATE('13-07-2023','DD-MM-YYYY'));

INSERT INTO tickets(Ticket_ID,Event_ID,Customer_ID,Ticket_Price,Num_Of_Tickets, Type_Of_Payment,Date_Of_Transaction)
    VALUES(9102,2563,1234,250,1,'cash',TO_DATE('13-01-2023','DD-MM-YYYY'));
INSERT INTO tickets(Ticket_ID,Event_ID,Customer_ID,Ticket_Price,Num_Of_Tickets, Type_Of_Payment,Date_Of_Transaction)
    VALUES(2256,9989,1245,300,2,'cash',TO_DATE('17-03-2023','DD-MM-YYYY'));
INSERT INTO tickets(Ticket_ID,Event_ID,Customer_ID,Ticket_Price,Num_Of_Tickets, Type_Of_Payment,Date_Of_Transaction)
    VALUES(1002,2232,2356,100,4,'EFT',TO_DATE('01-05-2023','DD-MM-YYYY'));