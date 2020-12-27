DROP PROCEDURE IF EXISTS Backbone.GetTopicsForAliases;

CREATE PROCEDURE Backbone.GetTopicsForAliases
(
	IN aliasArray VARCHAR(250)
) 
AS $$
BEGIN
	
	SELECT alias.Topic, alias.PartitionNo, topicDetails.Compacted FROM 
			MessagingAliases alias, MessagingTopicDetails topicDetails 
	WHERE FIND_IN_SET(alias.Alias, aliasArray) and alias.Topic = topicDetails.Topic;
END
$$ LANGUAGE plpgsql;