USE BackboneAudit;
DROP PROCEDURE IF EXISTS InsertAuditCrypto;

DELIMITER //

CREATE PROCEDURE InsertAuditCrypto
(
	IN TraceId varchar(36),
	IN Action varchar(15),
	IN Outcome varchar(10),
	IN ResourceId varchar(50),

	IN HostName varchar(255),
	IN LoginId varchar(25),
	IN ProcessName varchar(50),
	IN ProcessId varchar(15),
	IN ThreadId varchar(50),
	
	IN AuthorizationId varchar(50),
	IN ClassName varchar(150),
	IN LineNumber varchar(10),
	IN StackTrace varchar(32000)
) 
BEGIN


	INSERT INTO Crypto
	(
		TraceId,
		Action,
		Outcome,
		ResourceId,
		
		HostName,
		LoginId,
		ProcessName,
		ProcessId,
		ThreadId,
		
		AuthorizationId,
		ClassName,
		LineNumber,
		StackTrace
	)
	VALUES
	(
		TraceId,
		Action,
		Outcome,
		ResourceId,
	
		HostName,
		LoginId,
		ProcessName,
		ProcessId,
		ThreadId,
		
		AuthorizationId,
		ClassName,
		LineNumber,
		StackTrace
	);
	
END //
DELIMITER ;
