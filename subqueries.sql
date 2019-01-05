Select
	ReferenceOrderID, --commenting
	productID
from
	Production.TransactionHistory
where
	ActualCost = (select
						max(ActualCost)
					from
						Production.TransactionHistory)
/*
Select
	ReferenceOrderID,
	productID
from
	Production.TransactionHistory
where
	ActualCost >= (select
						AVG(ActualCost)
					from
						Production.TransactionHistory)
*/