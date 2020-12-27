DROP PROCEDURE IF EXISTS Backbone.GetTopicDetails;

CREATE PROCEDURE Backbone.GetTopicDetails
(
	IN Topic VARCHAR(250)
) 
AS $$
BEGIN
	
    SELECT topicDetails.Topic, topicDetails.PartitionerAlgorithm, topicDetails.Compacted 
    FROM MessagingTopicDetails topicDetails
    WHERE topicDetails.Topic = Topic;
END
$$ LANGUAGE plpgsql;
