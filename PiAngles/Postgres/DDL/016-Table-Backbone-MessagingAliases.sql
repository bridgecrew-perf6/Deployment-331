DROP TABLE IF EXISTS Backbone.MessagingAliases;
CREATE TABLE Backbone.MessagingAliases
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	Alias varchar(25)  NOT NULL,
	Topic varchar(150)  NOT NULL,
	PartitionNo INT DEFAULT -1
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.MessagingAliases FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();