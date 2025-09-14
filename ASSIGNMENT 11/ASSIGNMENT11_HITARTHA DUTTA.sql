CREATE TABLE Orders (
   OrderID INT PRIMARY KEY,
   OrderDate DATE,
   Amount DECIMAL(10,2)
);


INSERT INTO Orders (OrderID, OrderDate, Amount) VALUES
   (1, '2024-11-01', 250.50),
   (2, '2024-11-02', 300.75),
   (3, '2024-11-03', 150.25);


SELECT CAST(Amount AS VARCHAR(20)) AS AmountText 
FROM Orders;


SELECT CONVERT(VARCHAR(10), OrderDate, 120) AS OrderDateText
FROM Orders;


SELECT CAST('2024-11-05' AS DATE) AS ConvertedDate;


SELECT YEAR(OrderDate) AS OrderYear 
FROM Orders;


SELECT CONVERT(VARCHAR(10), OrderDate, 120) 
       + ' - $' 
       + CAST(Amount AS VARCHAR(20)) AS Summary
FROM Orders;
