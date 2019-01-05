SELECT
	JobTitle,
	UPPER(JobTitle) AS upperTitle,
	HireDate,
	DATENAME(M, HireDate) AS Month,
	DATENAME(YY, HireDate) AS Year,
	DATEDIFF(D,HireDate, GetDate()) AS diff
FROM
	HumanResources.Employee