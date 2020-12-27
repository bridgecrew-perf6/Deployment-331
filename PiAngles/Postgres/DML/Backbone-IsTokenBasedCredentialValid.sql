DROP FUNCTION IF EXISTS Backbone.IsTokenBasedCredentialValid;

CREATE FUNCTION Backbone.IsTokenBasedCredentialValid
(
	IN Token VARCHAR(250),
	OUT UserId VARCHAR(25),
	OUT IsActive BOOLEAN
)
AS $$
BEGIN
	SELECT cred.UserId, cred.Active INTO UserId, IsActive
	FROM TokenBasedCredentials cred 
	WHERE cred.Token = Token;

END
$$ LANGUAGE plpgsql;