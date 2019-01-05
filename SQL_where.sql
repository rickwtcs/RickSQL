USE AdventureWorks2012

SELECT TOP 8 WITH TIES
	PurchaseOrderID AS purchID,
	PurchaseOrderDetailID AS detailID,
	DueDate,
	OrderQty AS qty,
	ProductID AS prodID,
	UnitPrice,
	LineTotal,
	ReceivedQty,
	RejectedQty,
	StockedQty,
	ModifiedDate AS mdate
FROM
	Purchasing.PurchaseOrderDetail

/*
WHERE
	UnitPrice <> 25 (greater than or less than 25. i.e. not equal to 25)
	DueDate LIKE '%2005%' (anything that has a 2005 in the string)
	DueDate LIKE '2005%' (gets anything that starts with 2005)
	DueDate LIKE '2005__'
	UnitPrice IN (25, 45, 37) (gets unitprice that equal 25, 45, and 37)
	UnitPrice BETWEEN 25 AND 50
	MONTH(DueDate) = 5 (gets DueDates that are in May)
*/
ORDER BY
	purchID

	