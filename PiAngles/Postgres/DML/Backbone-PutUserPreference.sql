DROP PROCEDURE IF EXISTS Backbone.PutUserPreference;

CREATE PROCEDURE Backbone.PutUserPreference
(
	IN UserId VARCHAR(12),
	IN Properties TEXT
) 
AS $$
BEGIN

	INSERT INTO UserPreferences (UserId, Properties) VALUES (UserId, Properties) ON CONFLICT(UserId) DO UPDATE
	SET UserId = UserId, Properties = Properties;
END
$$ LANGUAGE plpgsql;