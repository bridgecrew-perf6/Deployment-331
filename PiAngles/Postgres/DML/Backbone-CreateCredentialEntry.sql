DROP PROCEDURE IF EXISTS Backbone.CreateCredentialEntry;

CREATE PROCEDURE Backbone.CreateCredentialEntry
(
	IN UserId VARCHAR(25),
	IN LoginId VARCHAR(250),
	IN Password VARCHAR(100)
)
AS $$
BEGIN
	
    INSERT INTO Credentials (UserId, LoginId, Password)
    VALUES (UserId, LoginId, Password);
END
$$ LANGUAGE plpgsql;
