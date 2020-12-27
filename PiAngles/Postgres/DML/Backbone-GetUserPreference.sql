DROP PROCEDURE IF EXISTS Backbone.GetUserPreference;

CREATE PROCEDURE Backbone.GetUserPreference
(
	IN UserId VARCHAR(12)
)
AS $$
BEGIN
	
    SELECT Properties from UserPreferences prefs WHERE prefs.UserId = UserId;
END
$$ LANGUAGE plpgsql;