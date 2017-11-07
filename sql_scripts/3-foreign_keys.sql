

--accepted: AlTER TABLE `tblcollectionobject` ADD KEY `parentcontainer_uuid` (`parentcontainer_uuid`), ADD FOREIGN KEY (`parentcontainer_uuid`) REFERENCES `tblcollectionobject` (`uuid`);
--accepted: ALTER TABLE `tbltaxon` ADD KEY `accepted_uuid` (`accepted_uuid`), ADD FOREIGN KEY (`accepted_uuid`) REFERENCES `tbltaxon` (`uuid`);

--error: parent_uuid=... not present
ALTER TABLE `tbltaxon` ADD KEY `parent_uuid` (`parent_uuid`), ADD FOREIGN KEY (`parent_uuid`) REFERENCES `tbltaxon` (`uuid`);

--error: institution_uuid="..." not present
ALTER TABLE `tblagent` ADD KEY `institution_uuid` (`institution_uuid`), ADD FOREIGN KEY (`institution_uuid`) REFERENCES `tblinstitution` (`uuid`);

--accepted: ALTER TABLE `tblcollobjectimages` ADD KEY `collectionobject_uuid` (`collectionobject_uuid`), ADD FOREIGN KEY (`collectionobject_uuid`) REFERENCES `tblcollectionobject` (`uuid`);

--error: taxon_uuid="..." not present
ALTER TABLE `tbldetermination` ADD KEY `taxon_uuid` (`taxon_uuid`), ADD FOREIGN KEY (`taxon_uuid`) REFERENCES `tbltaxon` (`uuid`);

--uuid? only taxon_uuid is present
ALTER TABLE `tbltaxon` ADD KEY `taxon_uuid` (`taxon_uuid`), ADD FOREIGN KEY (`taxon_uuid`) REFERENCES `tbltaxon` (`uuid`);


--accepted: ALTER TABLE `tblcollectingevent` ADD KEY `locality_uuid` (`locality_uuid`), ADD FOREIGN KEY (`locality_uuid`) REFERENCES `tbllocality` (`uuid`);
--accepted: ALTER TABLE `tblcollectionobject` ADD KEY `collectingevent_uuid` (`collectingevent_uuid`), ADD FOREIGN KEY (`collectingevent_uuid`) REFERENCES `tblcollectingevent` (`uuid`);
--accepted: ALTER TABLE `tblcollectionobject` ADD KEY `collobjecttype_uuid` (`collobjecttype_uuid`), ADD FOREIGN KEY (`collobjecttype_uuid`) REFERENCES `tblcollobjecttype` (`uuid`);
--accepted:ALTER TABLE `tblcollectionobject` ADD KEY `lifestage_uuid` (`lifestage_uuid`), ADD FOREIGN KEY (`lifestage_uuid`) REFERENCES `tbllifestage` (`uuid`);

--error: No unique constraint (missing primary key in tblsex, set tblsex.uuid as pk in Postgis.
	--afterwards accepted: ALTER TABLE `tblcollectionobject` ADD KEY `sex_uuid` (`sex_uuid`), ADD FOREIGN KEY (`sex_uuid`) REFERENCES `tblsex` (`uuid`);

--accepted:ALTER TABLE `tblcollector` ADD KEY `agent_uuid` (`agent_uuid`), ADD FOREIGN KEY (`agent_uuid`) REFERENCES `tblagent` (`uuid`);
--accepted:ALTER TABLE `tblcollector` ADD KEY `collectingevent_uuid` (`collectingevent_uuid`), ADD FOREIGN KEY (`collectingevent_uuid`) REFERENCES `tblcollectingevent` (`uuid`);
--accepted:ALTER TABLE `tbldetermination` ADD KEY `collectionobject_uuid` (`collectionobject_uuid`), ADD FOREIGN KEY (`collectionobject_uuid`) REFERENCES `tblcollectionobject` (`uuid`);
--accepted:ALTER TABLE `tbldetermination` ADD KEY `qualifier_uuid` (`qualifier_uuid`), ADD FOREIGN KEY (`qualifier_uuid`) REFERENCES `tblqualifier` (`uuid`);

--error: Tbltypestatus missing pk, after fixing
	--accepted:ALTER TABLE `tbldetermination` ADD KEY `typestatus_uuid` (`typestatus_uuid`), ADD FOREIGN KEY (`typestatus_uuid`) REFERENCES `tbltypestatus` (`uuid`);

--accepted:ALTER TABLE `tbldeterminator` ADD KEY `agent_uuid` (`agent_uuid`), ADD FOREIGN KEY (`agent_uuid`) REFERENCES `tblagent` (`uuid`);
--accepted:ALTER TABLE `tbldeterminator` ADD KEY `determination_uuid` (`determination_uuid`), ADD FOREIGN KEY (`determination_uuid`) REFERENCES `tbldetermination` (`uuid`);
--accepted:ALTER TABLE `tblpreparation` ADD KEY `agent_uuid` (`agent_uuid`), ADD FOREIGN KEY (`agent_uuid`) REFERENCES `tblagent` (`uuid`);
--accepted:ALTER TABLE `tblpreparation` ADD KEY `collectionobject_uuid` (`collectionobject_uuid`), ADD FOREIGN KEY (`collectionobject_uuid`) REFERENCES `tblcollectionobject` (`uuid`);
--accepted:ALTER TABLE `tblpreparation` ADD KEY `lifestage_uuid` (`lifestage_uuid`), ADD FOREIGN KEY (`lifestage_uuid`) REFERENCES `tbllifestage` (`uuid`);

--error: missing pk in tblpreparation, after fixing: preparationtype_uuid "..." is  not present in tblcollobjecttype.
ALTER TABLE `tblpreparation` ADD KEY `preparationtype_uuid` (`preparationtype_uuid`), ADD FOREIGN KEY (`preparationtype_uuid`) REFERENCES `tblpreparationtype` (`uuid`);

--accepted:ALTER TABLE `tblpreparation` ADD KEY `sex_uuid` (`sex_uuid`), ADD FOREIGN KEY (`sex_uuid`) REFERENCES `tblsex` (`uuid`);

--error: missing pk in tblsiteimages, after fixing:
	--accepted:ALTER TABLE `tblsiteimages` ADD KEY `collectingevent_uuid` (`collectingevent_uuid`), ADD FOREIGN KEY (`collectingevent_uuid`) REFERENCES `tblcollectingevent` (`uuid`);

--accepted:ALTER TABLE `tbltaxon` ADD KEY `rank_uuid` (`rank_uuid`), ADD FOREIGN KEY (`rank_uuid`) REFERENCES `tblrank` (`uuid`);
--accepted:ALTER TABLE `tblcollectingevent` ADD KEY `collectingtrip_uuid` (`collectingtrip_uuid`), ADD FOREIGN KEY (`collectingtrip_uuid`) REFERENCES `tblcollectingtrip` (`uuid`);
