SELECT 
	d.DepartmentID,
	d.Name,
	d.GroupName,
	g.BusinessEntityID,
	g.NationalIDNumber,
	g.loginID,
	g.jobTitle
FROM 
	HUmanResources.Employee AS g
	left outer JOIN HumanResources.Department AS d
		ON d.DepartmentID = g.BusinessEntityID
where
	d.DepartmentID is Null
