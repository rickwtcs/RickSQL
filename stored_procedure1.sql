create procedure spOrder
AS
BEGIN
	select
		productID,
		ReferenceOrderID,
		Quantity,
		TransactionDate
	from
		Production.TransactionHistory
	order by
		productID ASC
end 
