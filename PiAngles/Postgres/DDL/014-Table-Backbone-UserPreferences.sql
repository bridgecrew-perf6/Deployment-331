DROP TABLE IF EXISTS Backbone.UserPreferences;
CREATE TABLE Backbone.UserPreferences
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	UserId VARCHAR(25)  NOT NULL,
	Properties TEXT   NOT NULL
);


CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.UserPreferences FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();