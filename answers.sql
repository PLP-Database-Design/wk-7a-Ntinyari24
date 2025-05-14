#Question1

SELECT 
  OrderID,
  CustomerName,
  LTRIM(RTRIM(value)) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');


#Question2
-- Table 1: Orders (removes partial dependency)
SELECT DISTINCT 
  OrderID, 
  CustomerName
FROM OrderDetails;

-- Table 2: OrderItems (normalized)
SELECT 
  OrderID, 
  Product, 
  Quantity
FROM OrderDetails;
