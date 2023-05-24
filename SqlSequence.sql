-- Create sequence for CUSTOMER table
CREATE SEQUENCE seq_customer
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for BOOKINGS table
CREATE SEQUENCE seq_bookings
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for EMPLOYEE table
CREATE SEQUENCE seq_employee
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for CUSTOMER_ORDER table
CREATE SEQUENCE seq_customer_order
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for PRODUCT table
CREATE SEQUENCE seq_product
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;
  
-- Create sequence for SUPPLIER table
CREATE SEQUENCE seq_supplier
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for CHEF table
CREATE SEQUENCE seq_chef
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for MANAGER table
CREATE SEQUENCE seq_manager
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for WAITER table
CREATE SEQUENCE seq_waiter
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999 
  NOCYCLE;

-- Create sequence for SECURITY table
CREATE SEQUENCE seq_security
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for BARTENDER table
CREATE SEQUENCE seq_bartender
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;

-- Create sequence for HOSTESS table
CREATE SEQUENCE seq_hostess
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999
  NOCYCLE;