DROP TABLE IF EXISTS Backbone.Credentials;
CREATE TABLE Backbone.Credentials
(
	Id SERIAL NOT NULL,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	UserId VARCHAR(25)  NOT NULL  PRIMARY KEY,
	LoginId VARCHAR(250)  NULL,
	Password VARCHAR(100) NULL,
	Token VARCHAR(100) NULL,
	TokenExpirationTime TIMESTAMP,
	
	NoOfAttempts INT NOT NULL DEFAULT 1,
	
	Active BOOLEAN NOT NULL DEFAULT true
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.Credentials FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();