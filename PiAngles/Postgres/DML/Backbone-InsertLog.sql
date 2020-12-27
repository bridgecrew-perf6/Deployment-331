DROP PROCEDURE IF EXISTS Backbone.InsertLog;

CREATE PROCEDURE Backbone.InsertLog 
(
	IN TraceId	varchar(36),
	IN LoggingTS TIMESTAMP,

	IN HostName varchar(255),
	IN LoginId varchar(25),
	IN ProcessName varchar(50),
	IN ProcessId varchar(15),
	
	IN ThreadId varchar(50),
	IN CategoryLevel INT,
	IN Category varchar(10),
	IN ClassName varchar(150),
	IN LineNumber varchar(10),
	IN Message varchar(2048),
	IN ExceptionStackTrace varchar(32000)
) 
AS $$
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
	
END
$$ LANGUAGE plpgsql;