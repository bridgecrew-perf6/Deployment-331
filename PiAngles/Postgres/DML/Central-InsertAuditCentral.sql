DROP PROCEDURE IF EXISTS Central.InsertAuditCentral;

CREATE PROCEDURE Central.InsertAuditCentral
(
	IN RemoteAddress varchar(50),
	IN RemoteHost varchar(255),
	IN RemotePort INT,
	IN RemoteUser varchar(50),
	IN RequestedServiceName varchar(50),
	IN RequestedValue varchar(250)
) 
AS $$
BEGIN

	INSERT INTO AuditCentral
	(
		RemoteAddress,
		RemoteHost,
		RemotePort,
		RemoteUser,
		RequestedServiceName,
		RequestedValue
	)
	VALUES
	(
		RemoteAddress,
		RemoteHost,
		RemotePort,
		RemoteUser,
		RequestedServiceName,
		RequestedValue
	);
	
END
$$ LANGUAGE plpgsql;