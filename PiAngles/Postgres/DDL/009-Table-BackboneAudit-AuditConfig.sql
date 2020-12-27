USE BackboneAudit;
DROP TABLE IF EXISTS Config;
CREATE TABLE Config
(
	Id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT,
	InsertedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

	HostName varchar(255)  NOT NULL,
	LoginId varchar(25)  NOT NULL,
	ProcessName varchar(50)  NOT NULL,
	ProcessId varchar(15)  NOT NULL,
	ThreadId varchar(50)  NOT NULL,

	ComponentId varchar(50)  NOT NULL,
	ClassName varchar(150) NOT NULL,
	LineNumber varchar(10) NOT NULL,
	StackTrace varchar(32000)  NOT NULL,
	
	INDEX(InsertedTS),
	INDEX (ComponentId),
    KEY(Id)
);
ALTER TABLE Config ADD CONSTRAINT PK_Id PRIMARY KEY(Id);
