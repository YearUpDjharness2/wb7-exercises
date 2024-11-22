

-- 1 
SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName
FROM products
JOIN categories
	ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

---------------------------------------------------------------------------------------------
-- 2
-- Own Experiment 
SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
FROM products
JOIN suppliers
	ON products.SupplierID = suppliers.SupplierID;
    
-- Actual  
SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName
FROM products
JOIN suppliers
	ON products.SupplierID = suppliers.SupplierID
WHERE products.UnitPrice > 75
ORDER By ProductName;

------------------------------------------------------------------------------------------------------------------
-- 3
SELECT products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName, categories.CategoryName
FROM products
JOIN suppliers
	ON products.SupplierID = suppliers.SupplierID
JOIN categories
    ON products.CategoryID = categories.CategoryID
ORDER By ProductName;    

------------------------------------------------------------------------------------------------------------------
-- 4
-- Own Experiment 
SELECT categories.CategoryName, categories.Description, products.ProductID, products.ProductName, products.UnitPrice
FROM northwind.categories
JOIN products 
	ON products.CategoryID = categories.CategoryID;
    

SELECT products.ProductName, products.UnitPrice, categories.CategoryName
FROM products
JOIN categories
	ON categories.CategoryID =  products.CategoryID
WHERE products.UnitPrice = ( 
					SELECT max(UnitPrice) 
                    FROM products);
                    
------------------------------------------------------------------------------------------------------------------
-- 5
-- Own Experiment 
SELECT * FROM northwind.orders;

SELECT orders.OrderID, orders.ShipName, orders.ShipAddress, shippers.CompanyName
FROM orders
Join shippers
	ON shippers.ShipperID = orders.ShipVia
WHERE orders.ShipCountry like "%Germany%";


------------------------------------------------------------------------------------------------------------------
-- 6
SELECT * FROM northwind.orders;

SELECT orders.OrderID, orders.OrderDate, orders.ShipVia