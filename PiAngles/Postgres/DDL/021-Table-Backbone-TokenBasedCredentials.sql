DROP TABLE IF EXISTS Backbone.TokenBasedCredentials;
CREATE TABLE Backbone.TokenBasedCredentials
(
	Id SERIAL NOT NULL,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	UserId VARCHAR(25)  NOT NULL,
	Token VARCHAR(100) NOT NULL PRIMARY KEY,
	TokenExpirationTime TIMESTAMP NULL,
	
	Active BOOLEAN NOT NULL DEFAULT true
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.TokenBasedCredentials FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();