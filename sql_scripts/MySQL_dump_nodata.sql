---------------------------------------------------------------------------------------Mysqldump starting point -----------------------------------------------------------------------------------------------------------


--dbms: mysql
--author: André Beuger




DELIMITER GO
USE `drupal__indobiosys_data`;
GO

DROP TABLE IF EXISTS `tblagent`
GO
CREATE TABLE IF NOT EXISTS `tblagent`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`agenttype` varchar(36)   DEFAULT NULL  
,
`firstname` varchar(255)   DEFAULT NULL  
,
`middleinitial` varchar(255)   DEFAULT NULL  
,
`lastname` varchar(255)   DEFAULT NULL  
,
`displayname` varchar(255)   DEFAULT NULL  
,
`institution_uuid` varchar(36)   DEFAULT NULL  
,
`email` varchar(128)   DEFAULT NULL  
,
`phone` varchar(128)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblcollectingevent`
GO
CREATE TABLE IF NOT EXISTS `tblcollectingevent`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`collectingtrip_uuid` varchar(36)   DEFAULT NULL  
,
`locality_uuid` varchar(36)   DEFAULT NULL  
,
`startdate` datetime   DEFAULT NULL  
,
`enddate` datetime   DEFAULT NULL  
,
`method` varchar(255)   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  
,
`info` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblcollectingtrip`
GO
CREATE TABLE IF NOT EXISTS `tblcollectingtrip`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`tripname` varchar(255)   DEFAULT NULL  
,
`startdate` datetime   DEFAULT NULL  
,
`enddate` datetime   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tblcollectionobject`
GO
CREATE TABLE IF NOT EXISTS `tblcollectionobject`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`parentcontainer_uuid` varchar(36)   DEFAULT NULL  
,
`gin` varchar(64)   DEFAULT NULL  
,
`foreign_id` varchar(64)   DEFAULT NULL  
,
`outerqrcode` varchar(64)   DEFAULT NULL  
,
`innerqrcode` varchar(64)   DEFAULT NULL  
,
`collection_uuid` varchar(36)   DEFAULT NULL  
,
`collectingevent_uuid` varchar(36)  NOT NULL   
,
`collobjecttype_uuid` varchar(36)  NOT NULL   
,
`reference_uuid` varchar(36)   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  
,
`lifestage_uuid` varchar(36)   DEFAULT NULL  
,
`sex_uuid` varchar(36)   DEFAULT NULL  
,
`liquidated` bit(1)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblcollector`
GO
CREATE TABLE IF NOT EXISTS `tblcollector`
(
`uuid` varchar(78)  NOT NULL  PRIMARY KEY 
,
`agent_uuid` varchar(36)  NOT NULL   
,
`collectingevent_uuid` varchar(36)  NOT NULL   
,
`isprimary` bit(1)   DEFAULT NULL  
,
`rank` int(1) UNSIGNED  DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblcollobjectimages`
GO
CREATE TABLE IF NOT EXISTS `tblcollobjectimages`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`collectionobject_uuid` varchar(36)  NOT NULL   
,
`initialfullpath` varchar(128)   DEFAULT NULL  
,
`actualpath` varchar(128)   DEFAULT NULL  
,
`imagename` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblcollobjecttype`
GO
CREATE TABLE IF NOT EXISTS `tblcollobjecttype`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`description` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tbldetermination`
GO
CREATE TABLE IF NOT EXISTS `tbldetermination`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`collectionobject_uuid` varchar(36)  NOT NULL   
,
`taxon_uuid` varchar(36)   DEFAULT NULL  
,
`current` bit(1)   DEFAULT NULL  
,
`confidence` varchar(64)   DEFAULT NULL  
,
`determineddate` datetime   DEFAULT NULL  
,
`method` varchar(255)   DEFAULT NULL  
,
`qualifier_uuid` varchar(36)   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  
,
`typestatus_uuid` varchar(36)   DEFAULT NULL  
,
`typestatusdescr` varchar(64)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tbldeterminator`
GO
CREATE TABLE IF NOT EXISTS `tbldeterminator`
(
`uuid` varchar(73)  NOT NULL  PRIMARY KEY 
,
`determination_uuid` varchar(36)  NOT NULL   
,
`agent_uuid` varchar(36)  NOT NULL   
,
`rank` int(1) UNSIGNED  DEFAULT NULL  
,
`isprimary` bit(1)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblinstitution`
GO
CREATE TABLE IF NOT EXISTS `tblinstitution`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`shortname` varchar(10)   DEFAULT NULL  
,
`longname` varchar(255)   DEFAULT NULL  
,
`url` varchar(255)   DEFAULT NULL  
,
`address1` varchar(255)   DEFAULT NULL  
,
`address2` varchar(255)   DEFAULT NULL  
,
`postalcode` varchar(16)   DEFAULT NULL  
,
`city` varchar(255)   DEFAULT NULL  
,
`country` varchar(255)   DEFAULT NULL  
,
`email` varchar(128)   DEFAULT NULL  
,
`phone` varchar(128)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tbllifestage`
GO
CREATE TABLE IF NOT EXISTS `tbllifestage`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`lifestage` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tbllocality`
GO
CREATE TABLE IF NOT EXISTS `tbllocality`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`geography_uuid` varchar(36)   DEFAULT NULL  
,
`locality_qrcode` varchar(64)   DEFAULT NULL  
,
`coordinates` varchar(255)   DEFAULT NULL  
,
`latlongtext_begin` varchar(100)   DEFAULT NULL  
,
`latlongtext_end` varchar(100)   DEFAULT NULL  
,
`latdec_begin` decimal(12,10)   DEFAULT NULL  
,
`latdec_end` decimal(12,10)   DEFAULT NULL  
,
`longdec_begin` decimal(13,10)   DEFAULT NULL  
,
`longdec_end` decimal(13,10)   DEFAULT NULL  
,
`maxelevation` double   DEFAULT NULL  
,
`minevelation` double   DEFAULT NULL  
,
`accuracy` double   DEFAULT NULL  
,
`localityname` varchar(255)   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  
,
`macrohabitat_notes` text   DEFAULT NULL  
,
`microhabitat_notes` text   DEFAULT NULL  
,
`trap` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblpreparation`
GO
CREATE TABLE IF NOT EXISTS `tblpreparation`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`collectionobject_uuid` varchar(36)  NOT NULL   
,
`innerqrcode` varchar(64)   DEFAULT NULL  
,
`outerqrcode` varchar(64)   DEFAULT NULL  
,
`agent_uuid` varchar(36)   DEFAULT NULL  
,
`count` int(4) UNSIGNED  DEFAULT NULL  
,
`preparationtype_uuid` varchar(36)   DEFAULT NULL  
,
`description` varchar(255)   DEFAULT NULL  
,
`prepareddate` datetime   DEFAULT NULL  
,
`remarks` text   DEFAULT NULL  
,
`lifestage_uuid` varchar(36)   DEFAULT NULL  
,
`sex_uuid` varchar(36)   DEFAULT NULL  
,
`females` int(4) UNSIGNED  DEFAULT NULL  
,
`males` int(4) UNSIGNED  DEFAULT NULL  
,
`storagelocation` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DROP TABLE IF EXISTS `tblpreparationtype`
GO
CREATE TABLE IF NOT EXISTS `tblpreparationtype`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`description` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tblqualifier`
GO
CREATE TABLE IF NOT EXISTS `tblqualifier`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`qualifier` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tblrank`
GO
CREATE TABLE IF NOT EXISTS `tblrank`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`rank` varchar(255)   DEFAULT NULL  
,
`rankcode` varchar(10)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tblsex`
GO
CREATE TABLE IF NOT EXISTS `tblsex`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`descr` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tblsiteimages`
GO
CREATE TABLE IF NOT EXISTS `tblsiteimages`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`collectingevent_uuid` varchar(36)  NOT NULL   
,
`initialfullpath` varchar(128)   DEFAULT NULL  
,
`actualpath` varchar(128)   DEFAULT NULL  
,
`imagename` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO


DROP TABLE IF EXISTS `tbltaxon`
GO
CREATE TABLE IF NOT EXISTS `tbltaxon`
(
`taxon_uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`rank_uuid` varchar(36)   DEFAULT NULL  
,
`parentname` varchar(255)   DEFAULT NULL  
,
`parent_uuid` varchar(36)   DEFAULT NULL  
,
`acceptedname` varchar(255)   DEFAULT NULL  
,
`accepted_uuid` varchar(36)   DEFAULT NULL  
,
`taxonomicStatus` varchar(36)   DEFAULT NULL  
,
`author` varchar(255)   DEFAULT NULL  
,
`taxonname` varchar(255)   DEFAULT NULL  
,
`genus` varchar(255)   DEFAULT NULL  
,
`subgenus` varchar(255)   DEFAULT NULL  
,
`specificEpithet` varchar(255)   DEFAULT NULL  
,
`infraspecificEpithet` varchar(255)   DEFAULT NULL  
,
`infraspecificMarker` varchar(255)   DEFAULT NULL  
,
`kingdom` varchar(255)   DEFAULT NULL  
,
`phylum` varchar(255)   DEFAULT NULL  
,
`class` varchar(255)   DEFAULT NULL  
,
`order` varchar(255)   DEFAULT NULL  
,
`superFamily` varchar(255)   DEFAULT NULL  
,
`family` varchar(255)   DEFAULT NULL  
,
`subfamily` varchar(255)   DEFAULT NULL  
,
`tribe` varchar(255)   DEFAULT NULL  
,
`source` varchar(255)   DEFAULT NULL  
,
`taxon_source_id` varchar(255)   DEFAULT NULL  
,
`version` varchar(255)   DEFAULT NULL  
,
`source_url` varchar(255)   DEFAULT NULL  
,
`source_database` varchar(255)   DEFAULT NULL  
,
`scientificName` varchar(255)   DEFAULT NULL  

)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tbltypestatus`
GO
CREATE TABLE IF NOT EXISTS `tbltypestatus`
(
`uuid` varchar(36)  NOT NULL  PRIMARY KEY 
,
`typestatus` varchar(255)   DEFAULT NULL  
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

GO



DELIMITER ;
