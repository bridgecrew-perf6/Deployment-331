//Roll back the constrains
USE Backbone;
DROP TABLE IF EXISTS UserProfile;
CREATE TABLE UserProfile
(
	Id INT(32) SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	UserId varchar(25)  NOT NULL,
	FirstName varchar(50)  NULL,
	LastName varchar(50)  NULL,
	EMailId varchar(250)  NULL PRIMARY KEY,
	PhoneNo varchar(25)  NULL PRIMARY KEY
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.UserProfile FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();