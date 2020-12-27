DROP PROCEDURE IF EXISTS Backbone.CreateTokenBasedCredentialEntry;

CREATE PROCEDURE Backbone.CreateTokenBasedCredentialEntry
(
	IN UserId VARCHAR(25),
	IN Token VARCHAR(250)
) 
AS $$
BEGIN
	
    INSERT INTO TokenBasedCredentials (UserId, Token)
    VALUES (UserId, Token);
END
$$ LANGUAGE plpgsql;

