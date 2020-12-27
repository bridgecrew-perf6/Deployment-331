DROP PROCEDURE IF EXISTS Backbone.GetTopicsForEntities;

CREATE PROCEDURE Backbone.GetTopicsForEntities
(
	IN EntityType VARCHAR(20),
	IN entityIdArray VARCHAR(250)
)
AS $$
BEGIN
	
    SELECT entities.Topic, entities.PartitionNo,  topicDetails.Compacted
	FROM MessagingEntities entities 
	LEFT JOIN MessagingTopicDetails topicDetails ON
	entities.TypeName = EntityType AND  FIND_IN_SET(entities.TypeValue, entityIdArray)  AND entities.Topic = topicDetails.Topic;
END
$$ LANGUAGE plpgsql;
