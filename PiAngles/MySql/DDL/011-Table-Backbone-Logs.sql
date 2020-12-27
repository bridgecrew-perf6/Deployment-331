USE Backbone;
DROP TABLE IF EXISTS Logs;
CREATE TABLE Logs
(
	Id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT,
	InsertedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	LoggingTS TIMESTAMP NOT NULL,

	TraceId VARCHAR(36) NULL,

	HostName varchar(255)  NOT NULL,
	LoginId varchar(25)  NOT NULL,
	ProcessName varchar(50)  NOT NULL,
	ProcessId varchar(15)  NOT NULL,
	
	ThreadId varchar(50)  NOT NULL,
	CategoryLevel INT(8) NOT NULL,
	Category varchar(10) NOT NULL,
	ClassName varchar(150) NOT NULL,
	LineNumber varchar(10) NOT NULL,
	Message varchar(2048)  NULL,
	ExceptionStackTrace varchar(32000)  NULL,

	INDEX(InsertedTS),
	INDEX (HostName),
	INDEX (ProcessName),
    KEY(Id)
);
ALTER TABLE Logs ADD CONSTRAINT PK_Id PRIMARY KEY(Id);
