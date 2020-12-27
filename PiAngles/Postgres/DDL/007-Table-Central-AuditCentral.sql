DROP TABLE IF EXISTS Central.AuditCentral;
CREATE TABLE Central.AuditCentral
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),

	RemoteAddress varchar(50)  NOT NULL,
	RemoteHost varchar(255)  NOT NULL,
	RemotePort INT NOT NULL,
	RemoteUser varchar(50)  NULL,
	RequestedServiceName varchar(50) NULL,
	RequestedValue varchar(250) NULL
);
