USE Backbone;
DROP PROCEDURE IF EXISTS SetCredential;

DELIMITER //

CREATE PROCEDURE SetCredential
(
	IN UserId VARCHAR(25),
	IN LoginId VARCHAR(250),
	IN OldPassword VARCHAR(100),
	IN NewPassword VARCHAR(100),
	IN Token VARCHAR(100),
	IN TokenExpirationTime TIMESTAMP
) 
BEGIN
	#call DebugLog(ComponentId);
	
	IF OldPassword IS NOT NULL AND NewPassword IS NOT NULL THEN
		#User is updating the password
		UPDATE Credentials cred 
			SET cred.Password = NewPassword
		WHERE cred.UserId = UserId AND cred.Password = OldPassword;
	ELSEIF LoginId IS NOT NULL AND Token IS NOT NULL AND TokenExpirationTime IS NOT NULL THEN
		#System is updating Token 
		UPDATE Credentials cred 
			SET cred.Token = Token, cred.TokenExpirationTime = TokenExpirationTime, cred.NoOfAttempts = 1
		WHERE cred.LoginId = LoginId;
	ELSEIF Token IS NOT NULL AND NewPassword IS NOT NULL THEN
		#User is in MidAuthentication phase and needs to update password
		UPDATE Credentials cred 
			SET cred.Password = NewPassword, cred.Token = NULL, cred.TokenExpirationTime = NULL, cred.NoOfAttempts = 1
		WHERE cred.UserId = UserId AND cred.Token = Token;
	END IF;
    
END //
DELIMITER ;
