USE Backbone;
DROP PROCEDURE IF EXISTS GetTopicDetails;

DELIMITER //

CREATE PROCEDURE GetTopicDetails
(
	IN Topic VARCHAR(250)
) 
BEGIN
	#call DebugLog(ComponentId);
	
    SELECT topicDetails.Topic, topicDetails.PartitionerAlgorithm, topicDetails.Compacted 
    FROM MessagingTopicDetails topicDetails
    WHERE topicDetails.Topic = Topic;
END //
DELIMITER ;
