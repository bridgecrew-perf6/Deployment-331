USE Backbone;
DROP TABLE IF EXISTS AddendumPreferences;
CREATE TABLE AddendumPreferences
(
	Id INT(32) SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,

	Action varchar(10) NOT NULL,
	Name varchar(100) NOT NULL,
	Value varchar(100) NOT NULL
);
CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.AddendumPreferences FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();
