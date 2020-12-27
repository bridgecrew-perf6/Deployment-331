USE Backbone;
DROP PROCEDURE IF EXISTS UpdateUserProfile;

DELIMITER //

CREATE PROCEDURE UpdateUserProfile
(
	IN UserId VARCHAR(25),
	IN FirstName VARCHAR(50),
	IN LastName VARCHAR(50),
	IN EMailId VARCHAR(250),
	IN PhoneNo VARCHAR(25)
) 
BEGIN
	#call DebugLog(ComponentId);

	UPDATE UserProfile up
		SET up.FirstName = FirstName, up.LastName = LastName, up.EMailId = EMailId, up.PhoneNo = PhoneNo
	WHERE up.UserId = UserId;
    
END //
DELIMITER ;
