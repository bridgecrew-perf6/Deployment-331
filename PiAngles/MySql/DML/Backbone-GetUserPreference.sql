USE Backbone;
DROP PROCEDURE IF EXISTS GetUserPreference;

DELIMITER //

CREATE PROCEDURE GetUserPreference
(
	IN UserId VARCHAR(12)
) 
BEGIN
	#call DebugLog(ComponentId);
	
    SELECT Properties from UserPreferences prefs WHERE prefs.UserId = UserId;
END //
DELIMITER ;
