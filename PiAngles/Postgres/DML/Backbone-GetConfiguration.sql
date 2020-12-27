DROP PROCEDURE IF EXISTS Backbone.GetConfiguration;

CREATE PROCEDURE Backbone.GetConfiguration 
(
	IN ComponentId VARCHAR(255)
)
AS $$
BEGIN
	
    SELECT Name, Value from Config config WHERE config.ComponentId = ComponentId;
END
$$ LANGUAGE plpgsql;
