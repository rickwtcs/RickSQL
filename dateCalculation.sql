SELECT
	JobTitle,
	HireDate,
	convert(char(8), HireDate, 3) AS [dayMonthYear UK],
	convert(char(8), HireDate, 1) AS [monthDayYear US],
	convert(char(10), HireDate, 101) AS [monthDayYear US],
	DATENAME(DW, HireDate) + ' ' + DATENAME(MM, HireDate) + ' ' + 
	datename(DD, HireDate) + ', ' + datename(YYYY, HireDate),
	datediff(DD, HireDate, getdate()) AS [days hired ago],
	datediff(YY, HireDate, getdate()) AS [years hired ago],
	dateadd(YY, datediff(YY, HireDate, getdate()), HireDate),
	case
		when dateadd(YY, datediff(YY, HireDate, getdate()), HireDate) > getdate()
		then datediff(YY, HireDate, getdate()) - 1
		else datediff(YY, HireDate, getdate())
	end
FROM
	HumanResources.Employee