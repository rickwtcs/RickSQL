SELECT
	Name,
	LEFT(Name, CHARINDEX(' ', Name)-1),
	RIGHT(Name, LEN(Name)-CHARINDEX(' ', Name)),
	RIGHT(Name, LEN(Name)-CHARINDEX(' ', Name)) + ', ' + LEFT(Name, CHARINDEX(' ', Name)-1) AS [ReverseName]
FROM
	Person.ContactType