USE Backbone;
DROP TABLE IF EXISTS MessagingAliases;
CREATE TABLE MessagingAliases
(
	Id INT(32) SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	Alias varchar(25)  NOT NULL,
	Topic varchar(150)  NOT NULL,
	PartitionNo INT(32) DEFAULT -1
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.MessagingAliases FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();