USE Backbone;
DROP PROCEDURE IF EXISTS InsertLog;

DELIMITER //

CREATE PROCEDURE InsertLog 
(
	IN TraceId	varchar(36),
	IN LoggingTS TIMESTAMP,

	IN HostName varchar(255),
	IN LoginId varchar(25),
	IN ProcessName varchar(50),
	IN ProcessId varchar(15),
	
	IN ThreadId varchar(50),
	IN CategoryLevel INT(8),
	IN Category varchar(10),
	IN ClassName varchar(150),
	IN LineNumber varchar(10),
	IN Message varchar(2048),
	IN ExceptionStackTrace varchar(32000)
) 
BEGIN

	INSERT INTO Logs
	(
		TraceId,
		LoggingTS,
	
		HostName,
		LoginId,
		ProcessName,
		ProcessId,
		
		ThreadId,
		CategoryLevel,
		Category,
		ClassName,
		LineNumber,
		Message,
		ExceptionStackTrace
	)
	VALUES
	(
		TraceId,
		LoggingTS,
	
		HostName,
		LoginId,
		ProcessName,
		ProcessId,
		
		ThreadId,
		CategoryLevel,
		Category,
		ClassName,
		LineNumber,
		Message,
		ExceptionStackTrace
	);
	
END //
DELIMITER ;
