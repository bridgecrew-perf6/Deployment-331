//Roll back the constrains
USE Backbone;
DROP TABLE IF EXISTS UserProfile;
CREATE TABLE UserProfile
(
	Id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT,
	
	UserId varchar(25)  NOT NULL,
	FirstName varchar(50)  NULL,
	LastName varchar(50)  NULL,
	EMailId varchar(250)  NULL PRIMARY KEY,
	PhoneNo varchar(25)  NULL PRIMARY KEY,

	InsertedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	UpdatedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    KEY(Id)
);
