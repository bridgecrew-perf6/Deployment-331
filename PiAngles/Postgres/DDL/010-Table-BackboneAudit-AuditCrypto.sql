USE BackboneAudit;
DROP TABLE IF EXISTS Crypto;
CREATE TABLE Crypto
(
  Id int(32) unsigned NOT NULL AUTO_INCREMENT,
  InsertedTS timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   
  TraceId varchar(36) NOT NULL,
  Action varchar(15) NOT NULL,
  Outcome varchar(10) NOT NULL,
  ResourceId varchar(50) NOT NULL,
  HostName varchar(255) NOT NULL,
  LoginId varchar(25) NOT NULL,
  ProcessName varchar(50) NOT NULL,
  ProcessId varchar(15) NOT NULL,
  ThreadId varchar(50) NOT NULL,
  AuthorizationId varchar(50) NOT NULL,
  ClassName varchar(150) NOT NULL,
  LineNumber varchar(10) NOT NULL,
  StackTrace varchar(32000) NOT NULL,
	
  KEY(Id)
);
ALTER TABLE Crypto ADD CONSTRAINT PK_Id PRIMARY KEY(Id);
