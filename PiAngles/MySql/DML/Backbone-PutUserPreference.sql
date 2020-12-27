USE Backbone;
DROP PROCEDURE IF EXISTS PutUserPreference;

DELIMITER //

CREATE PROCEDURE PutUserPreference
(
	IN UserId VARCHAR(12),
	IN Properties LONGTEXT
) 
BEGIN

	INSERT INTO UserPreferences (UserId, Properties) VALUES (UserId, Properties) ON DUPLICATE KEY UPDATE
	UserId = UserId, Properties = Properties;
END //
DELIMITER ;
