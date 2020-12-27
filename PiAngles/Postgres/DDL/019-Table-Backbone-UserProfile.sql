DROP TABLE IF EXISTS Backbone.UserProfile;
CREATE TABLE Backbone.UserProfile
(
	Id SERIAL NOT NULL,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	UserId varchar(25)  NOT NULL  PRIMARY KEY,
	FirstName varchar(50)  NOT NULL,
	LastName varchar(50)  NOT NULL,
	EMailId varchar(250)  NOT NULL,
	PhoneNo varchar(25)  NOT NULL
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.UserProfile FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();