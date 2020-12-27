USE Central;
DROP PROCEDURE IF EXISTS GetDiscoveryProperties;

DELIMITER //

CREATE PROCEDURE GetDiscoveryProperties 
(
	IN HostName VARCHAR(255),
	IN ServiceName VARCHAR(255)
) 
BEGIN
	DECLARE Environment VARCHAR(3);
    
	#Check if the Host is authorized need a separate point or return value.
	SELECT hosts.Environment into Environment FROM Hosts hosts WHERE hosts.HostName=HostName;

	#call DebugLog(Environment);
	
	#If Properties are not set handle it.
    SELECT Name, Value from Discovery discovery WHERE discovery.Environment = Environment and discovery.ServiceName = ServiceName;
END //
DELIMITER ;
