DROP PROCEDURE IF EXISTS Backbone.UpdateUserProfile;

CREATE PROCEDURE Backbone.UpdateUserProfile
(
	IN UserId VARCHAR(25),
	IN FirstName VARCHAR(50),
	IN LastName VARCHAR(50),
	IN EMailId VARCHAR(250),
	IN PhoneNo VARCHAR(25)
) 
AS $$
BEGIN

	UPDATE UserProfile up
		SET up.FirstName = FirstName, up.LastName = LastName, up.EMailId = EMailId, up.PhoneNo = PhoneNo
	WHERE up.UserId = UserId;
    
END
$$ LANGUAGE plpgsql;