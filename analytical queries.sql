use project_data;
GO


--1. Ventes totales par trimestre
SELECT
    Year,
    Quarter,
    SUM(TotalAmount) AS TotalSalesAmount
FROM FactSales fs
JOIN DimDate dd ON fs.DateKey = dd.DateKey
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

--2. Produits les plus vendus (par quantité)

SELECT
    p.ProductName,
    SUM(fs.QuantitySold) AS TotalQuantitySold
FROM FactSales fs
JOIN DimProduct p ON fs.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantitySold DESC;

--3. Montant total des ventes par client
SELECT
    c.CustomerName,
    SUM(fs.TotalAmount) AS TotalSalesAmount
FROM FactSales fs
JOIN DimCustomer c ON fs.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalSalesAmount DESC;


--4. Ventes par méthode de paiement
SELECT
    pm.PaymentMethodName,
    COUNT(*) AS TotalSalesCount
FROM FactSales fs
JOIN DimPaymentMethod pm ON fs.PaymentMethodID = pm.PaymentMethodID
GROUP BY pm.PaymentMethodName
ORDER BY TotalSalesCount DESC;


--5. Détails des ventes pour une promotion spécifique
SELECT
    fs.OrderID,
    p.ProductName,
    fs.QuantitySold,
    fs.TotalAmount,
    dp.PromotionName
FROM FactSales fs
JOIN DimProduct p ON fs.ProductID = p.ProductID
JOIN DimPromotion dp ON fs.PromotionID = dp.PromotionID
WHERE dp.PromotionName = 'New Year Sale';

--6. Ventes par catégorie de produit
SELECT
    p.Category,
    SUM(fs.QuantitySold) AS TotalQuantitySold,
    SUM(fs.TotalAmount) AS TotalSalesAmount
FROM FactSales fs
JOIN DimProduct p ON fs.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSalesAmount DESC;


--7. Montant total des ventes par mois
SELECT
    Year,
    Month,
    SUM(TotalAmount) AS TotalSalesAmount
FROM FactSales fs
JOIN DimDate dd ON fs.DateKey = dd.DateKey
GROUP BY Year, Month
ORDER BY Year, Month;


--8. Détails des ventes effectuées par un client spécifique
SELECT
    fs.OrderID,
    p.ProductName,
    fs.QuantitySold,
    fs.TotalAmount,
    fs.OrderDate
FROM FactSales fs
JOIN DimProduct p ON fs.ProductID = p.ProductID
WHERE fs.CustomerID = 1;


--9. Ventes avec coûts d'expédition élevés


SELECT
    fs.OrderID,
    p.ProductName,
    fs.QuantitySold,
    fs.TotalAmount,
    ds.ShippingMethod,
    ds.ShippingCost
FROM FactSales fs
JOIN DimProduct p ON fs.ProductID = p.ProductID
JOIN DimShipping ds ON fs.ShippingID = ds.ShippingID
WHERE ds.ShippingCost > 10.00;


--10. Nombre de ventes par jour pour une période spécifique
SELECT
    dd.FullDate,
    COUNT(*) AS TotalSalesCount
FROM FactSales fs
JOIN DimDate dd ON fs.DateKey = dd.DateKey
WHERE dd.FullDate BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY dd.FullDate
ORDER BY dd.FullDate;