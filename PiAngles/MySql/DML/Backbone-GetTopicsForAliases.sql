USE Backbone;
DROP PROCEDURE IF EXISTS GetTopicsForAliases;

DELIMITER //

CREATE PROCEDURE GetTopicsForAliases
(
	IN aliasArray VARCHAR(250)
) 
BEGIN
	#call DebugLog(ComponentId);
	
	SELECT alias.Topic, alias.PartitionNo, topicDetails.Compacted FROM 
			MessagingAliases alias, MessagingTopicDetails topicDetails 
	WHERE FIND_IN_SET(alias.Alias, aliasArray) and alias.Topic = topicDetails.Topic;
END //
DELIMITER ;
