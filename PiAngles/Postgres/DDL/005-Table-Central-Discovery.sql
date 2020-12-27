DROP TABLE IF EXISTS Central.Discovery;
CREATE TABLE Central.Discovery
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	Environment varchar(3) NOT NULL,
	ServiceName varchar(50) NOT NULL,
	Name varchar(250) NOT NULL,
	Value varchar(1000) NOT NULL
);
CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Central.Discovery FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();