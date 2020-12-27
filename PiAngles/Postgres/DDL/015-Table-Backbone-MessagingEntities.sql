USE Backbone;
DROP TABLE IF EXISTS MessagingEntities;
CREATE TABLE MessagingEntities
(
	Id INT(32) UNSIGNED NOT NULL AUTO_INCREMENT,
	
	TypeName varchar(25)  NOT NULL,
	TypeValue varchar(25)  NOT NULL,
	Topic varchar(150)  NOT NULL,
	PartitionNo INT(32) DEFAULT -1,

	InsertedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	UpdatedTS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    KEY(Id)
);
