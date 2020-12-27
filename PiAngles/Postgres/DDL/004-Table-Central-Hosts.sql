DROP TABLE IF EXISTS Central.Hosts;
CREATE TABLE Central.Hosts
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,

	Environment varchar(3) NOT NULL,
	Type varchar(25) NOT NULL,
	Purpose varchar(25) NOT NULL, 
	HostName varchar(255)  NOT NULL,
	Description varchar(1000)  NOT NULL
);
CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Central.Hosts FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();