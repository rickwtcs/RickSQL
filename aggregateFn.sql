Select Top 300
	ReferenceOrderID,
	SUM(ActualCost) AS TotalCost
from
	Production.TransactionHistory
where 
	TransactionType = 'S'
group by
	ReferenceOrderID
having
	SUM(ActualCost) > 20000
order by
	SUM(ActualCost) DESC
/*
ISNULL
ROLLUP
*/