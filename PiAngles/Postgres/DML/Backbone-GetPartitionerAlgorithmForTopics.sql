DROP PROCEDURE IF EXISTS Backbone.GetPartitionerAlgorithmForTopics;

CREATE PROCEDURE Backbone.GetPartitionerAlgorithmForTopics
(
)
AS $$
BEGIN
	
    SELECT Topic, PartitionerAlgorithm from MessagingTopicDetails;
END
$$ LANGUAGE plpgsql;