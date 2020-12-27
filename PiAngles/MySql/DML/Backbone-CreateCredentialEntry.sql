USE Backbone;
DROP PROCEDURE IF EXISTS CreateCredentialEntry;

DELIMITER //

CREATE PROCEDURE CreateCredentialEntry
(
	IN UserId VARCHAR(25),
	IN LoginId VARCHAR(250),
	IN Password VARCHAR(100)
) 
BEGIN
	#call DebugLog(ComponentId);
	
    INSERT INTO Credentials (UserId, LoginId, Password)
    VALUES (UserId, LoginId, Password);
END //
DELIMITER ;
