DROP PROCEDURE IF EXISTS Backbone.RetrieveUserProfile;

CREATE PROCEDURE Backbone.RetrieveUserProfile
(
	IN UserId VARCHAR(25)
) 
AS $$
BEGIN

	SELECT UserId, FirstName, LastName, EMailId, PhoneNo FROM UserProfile up
	WHERE up.UserId = UserId;
    
END
$$ LANGUAGE plpgsql;