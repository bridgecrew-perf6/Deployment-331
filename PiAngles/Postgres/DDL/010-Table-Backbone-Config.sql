DROP TABLE IF EXISTS Backbone.Config;
CREATE TABLE Backbone.Config
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,

	ApplicationId varchar(50) NOT NULL,
	ComponentId varchar(100) NOT NULL,
	ComponentDescription varchar(250) NOT NULL,
	Name varchar(100) NOT NULL,
	Value varchar(100) NOT NULL
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.Config FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();
