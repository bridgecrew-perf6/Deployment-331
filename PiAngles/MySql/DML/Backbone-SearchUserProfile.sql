USE Backbone;
DROP PROCEDURE IF EXISTS SearchUserProfile;

DELIMITER //

CREATE PROCEDURE SearchUserProfile
(
	IN EMailId VARCHAR(250),
	IN PhoneNo VARCHAR(25),
	OUT UserId VARCHAR(25)
) 
BEGIN
	#call DebugLog(ComponentId);

	IF EMailId IS NOT NULL THEN
		SELECT up.UserId INTO UserId FROM UserProfile up WHERE up.EMailId = EMailId;
    END IF;
    
	IF UserId IS NULL AND PhoneNo IS NOT NULL THEN
		SELECT up.UserId INTO UserId FROM UserProfile up WHERE up.PhoneNo = PhoneNo;	
	END IF;
    
END //
DELIMITER ;
