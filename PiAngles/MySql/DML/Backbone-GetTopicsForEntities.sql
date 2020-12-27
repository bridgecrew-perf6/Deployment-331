USE Backbone;
DROP PROCEDURE IF EXISTS GetTopicsForEntities;

DELIMITER //

CREATE PROCEDURE GetTopicsForEntities
(
	IN EntityType VARCHAR(20),
	IN entityIdArray VARCHAR(250)
) 
BEGIN
	#call DebugLog(ComponentId);
	
    SELECT entities.Topic, entities.PartitionNo,  topicDetails.Compacted
	FROM MessagingEntities entities 
	LEFT JOIN MessagingTopicDetails topicDetails ON
	entities.TypeName = EntityType AND  FIND_IN_SET(entities.TypeValue, entityIdArray)  AND entities.Topic = topicDetails.Topic;
END //
DELIMITER ;
