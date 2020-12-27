USE Backbone;
DROP PROCEDURE IF EXISTS IsTokenBasedCredentialValid;

DELIMITER //

CREATE PROCEDURE IsTokenBasedCredentialValid
(
	IN Token VARCHAR(250),
	OUT UserId VARCHAR(25),
	OUT IsActive BOOLEAN
) 
BEGIN
	SELECT cred.UserId, cred.Active INTO UserId, IsActive
	FROM TokenBasedCredentials cred 
	WHERE cred.Token = Token;

END //
DELIMITER ;
