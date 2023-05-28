
/*Group Customer_Order Weekly(Weekly Sales)*/
SELECT TRUNC(Date_Of_Order, 'IW') AS Week_Start_Date
SUM(Total_Price) AS Total_Sales
FROM CUSTOMER_ORDER
GROUP BY TRUNC(Date_Of_Order,'IW')
ORDER BY Week_Start_Date ASC;


/*Group Customer_Order Monthly(Monthly Sales)*/
SELECT TRUNC(Date_Of_Order, 'MM') AS Month_Start_Date
SUM(Total_Price) AS Total_Sales
FROM CUSTOMER_ORDER
GROUP BY TRUNC(Date_Of_Order,'MM')
ORDER BY Month_Start_Date ASC;