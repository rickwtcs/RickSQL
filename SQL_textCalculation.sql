SELECT TOP 100
	AddressLine1,
	StateProvinceID,
	AddressLine1 + ' province ID is: ' + CAST(StateProvinceID AS VARCHAR(3)),
	AddressLine1 + ' province ID is: ' + CONVERT(VARCHAR(3), StateProvinceID)
FROM
	Person.Address