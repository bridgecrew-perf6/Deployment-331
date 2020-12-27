DROP TABLE IF EXISTS Backbone.MessagingTopicDetails;
CREATE TABLE Backbone.MessagingTopicDetails
(
	Id SERIAL NOT NULL PRIMARY KEY,
	InsertedTS TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedTS TIMESTAMP NOT NULL,
	
	Topic VARCHAR(150)  NOT NULL,
	PartitionerAlgorithm VARCHAR(50)  NOT NULL,
	Compacted BOOLEAN NOT NULL DEFAULT false
);

CREATE TRIGGER update_updated_timestamp BEFORE INSERT OR UPDATE ON Backbone.MessagingTopicDetails FOR EACH ROW EXECUTE PROCEDURE  public.update_updated_timestamp();