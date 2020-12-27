DROP TABLE IF EXISTS Backbone.Config;
CREATE TABLE Backbone.Config
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),

	HostName varchar(255)  NOT NULL,
	LoginId varchar(25)  NOT NULL,
	ProcessName varchar(50)  NOT NULL,
	ProcessId varchar(15)  NOT NULL,
	ThreadId varchar(50)  NOT NULL,

	ComponentId varchar(50)  NOT NULL,
	ClassName varchar(150) NOT NULL,
	LineNumber varchar(10) NOT NULL,
	StackTrace varchar(32000)  NOT NULL
);
