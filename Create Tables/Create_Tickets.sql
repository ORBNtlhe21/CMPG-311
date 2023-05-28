CREATE TABLE TICKETS (
    Ticket_ID NUMBER(4) CONSTRAINT ticket_id_pk PRIMARY KEY,
    Event_ID NOT NULL REFERENCES EVENTS(Event_ID),
    Customer_ID NOT NULL REFERENCES CUSTOMER(Customer_ID),
    Ticket_Price NUMBER(8,2) NOT NULL,
    Num_Of_Tickets NUMBER NOT NULL,
    Type_Of_Payment VARCHAR2(10) NOT NULL,
    Date_Of_Transaction DATE NOT NULL
);