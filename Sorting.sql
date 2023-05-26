
/*Sorting*/
    SELECT *
    FROM Customer_Order
    ORDER BY Order_Date DESC;

    /**Extract a week worth of data*/
    SELECT *
    FROM customer_order
    WHERE order_date BETWEEN '20-May-23' AND '30-May-23';

    /**Extract a month worth of data*/
    SELECT *
    FROM customer_order
    WHERE order_date BETWEEN '30-April-23' AND '1-June-23';

/*Joins(Inner and Outer)*/


/* */
