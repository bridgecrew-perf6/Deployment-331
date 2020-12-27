DROP PROCEDURE IF EXISTS Backbone.CreateUserProfile;

CREATE PROCEDURE Backbone.CreateUserProfile
(
	IN UserId VARCHAR(25),
	IN FirstName VARCHAR(50),
	IN LastName VARCHAR(50),
	IN EMailId VARCHAR(250),
	IN PhoneNo VARCHAR(25)
) 
AS $$
BEGIN

	INSERT INTO UserProfile (UserId, FirstName, LastName, EMailId, PhoneNo)
	VALUES (UserId, FirstName, LastName, EMailId, PhoneNo);
    
END
$$ LANGUAGE plpgsql;
