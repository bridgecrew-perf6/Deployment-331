USE Backbone;
DROP PROCEDURE IF EXISTS CreateTokenBasedCredentialEntry;

DELIMITER //

CREATE PROCEDURE CreateTokenBasedCredentialEntry
(
	IN UserId VARCHAR(25),
	IN Token VARCHAR(250)
) 
BEGIN
	#call DebugLog(ComponentId);
	
    INSERT INTO TokenBasedCredentials (UserId, Token)
    VALUES (UserId, Token);
END //
DELIMITER ;
