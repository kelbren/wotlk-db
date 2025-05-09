-- redone
DELETE FROM creature WHERE guid IN (114143,111501);
DELETE FROM creature_addon WHERE guid IN (114143,111501);
DELETE FROM creature_movement WHERE Id IN (114143,111501);
DELETE FROM game_event_creature WHERE guid IN (114143,111501);
DELETE FROM game_event_creature_data WHERE guid IN (114143,111501);
DELETE FROM creature_battleground WHERE guid IN (114143,111501);
DELETE FROM creature_linking WHERE guid IN (114143,111501)
 OR master_guid IN (114143,111501);

DELETE FROM creature WHERE guid IN(200071,200070);
DELETE FROM creature_movement WHERE id IN(200071,200070);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('200071', '18692', '530', '1', '1837.67004394531250000000', '7158.52978515625000000000', '364.39801025390625000000', '2.69354009628295900000', '43200', '86400', '0', '2'),
('200070', '18692', '530', '1', '2807.89990234375000000000', '7239.04980468750000000000', '365.24200439453125000000', '4.89663982391357400000', '43200', '86400', '0', '4');

SET @SGGUID := 23000; -- Blades Edge
DELETE FROM spawn_group WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+3, 'Blades Edge Mountains - Hemathion', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+3, 200071, -1),
(@SGGUID+3, 200070, -1);

SET @MOVID = 200070;

-- GUID: Full: 0x204CB04240124100000031000014DF68 Creature/0 R4908/S49 Map: 530 (Outland) Entry: 18692 (Hemathion) Low: 1367912 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '2837.0298', '7252.1763', '364.44064', '100', '0', '0', NULL),
(@MOVID + 0, '2', '2808.9368', '7233.487', '365.12796', '100', '0', '0', NULL),
(@MOVID + 0, '3', '2779.2063', '7215.696', '365.21423', '100', '0', '0', NULL),
(@MOVID + 0, '4', '2743.2402', '7205.8457', '366.07407', '100', '0', '0', NULL),
(@MOVID + 0, '5', '2716.3118', '7203.9404', '366.735', '100', '0', '0', NULL),
(@MOVID + 0, '6', '2682.0642', '7222.7305', '365.6341', '100', '0', '0', NULL),
(@MOVID + 0, '7', '2650.47', '7236.354', '365.0051', '100', '0', '0', NULL),
(@MOVID + 0, '8', '2616.3862', '7251.049', '364.58084', '100', '0', '0', NULL),
(@MOVID + 0, '9', '2582.6707', '7240.9683', '364.74887', '100', '0', '0', NULL),
(@MOVID + 0, '10', '2555.3489', '7214.7974', '366.146', '100', '0', '0', NULL),
(@MOVID + 0, '11', '2539.9646', '7186.0317', '364.59457', '100', '0', '0', NULL),
(@MOVID + 0, '12', '2522.817', '7155.4463', '366.41092', '100', '0', '0', NULL),
(@MOVID + 0, '13', '2494.8281', '7120.3867', '364.49292', '100', '0', '0', NULL),
(@MOVID + 0, '14', '2464.0735', '7095.2446', '364.7017', '100', '0', '0', NULL),
(@MOVID + 0, '15', '2422.0454', '7101.15', '365.7449', '100', '0', '0', NULL),
(@MOVID + 0, '16', '2378.7112', '7121.3774', '365.62885', '100', '0', '0', NULL);

SET @MOVID = 200071;

-- GUID: Full: 0x204CB04240124100000031000016525E Creature/0 R4908/S49 Map: 530 (Outland) Entry: 18692 (Hemathion) Low: 1462878 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '1883.8077', '7154.6685', '364.4753', '100', '0', '0', NULL),
(@MOVID + 0, '2', '1850.3485', '7146.592', '364.08423', '100', '0', '0', NULL),
(@MOVID + 0, '3', '1835.8881', '7151.5923', '364.62744', '100', '0', '0', NULL),
(@MOVID + 0, '4', '1809.3248', '7172.1577', '364.56863', '100', '0', '0', NULL),
(@MOVID + 0, '5', '1815.4443', '7204.8525', '364.6613', '100', '0', '0', NULL),
(@MOVID + 0, '6', '1842.5455', '7242.1455', '364.58124', '100', '0', '0', NULL),
(@MOVID + 0, '7', '1879.1588', '7258.3516', '363.8606', '100', '0', '0', NULL),
(@MOVID + 0, '8', '1915.9193', '7275.4014', '364.08768', '100', '0', '0', NULL),
(@MOVID + 0, '9', '1943.6177', '7285.0806', '364.20398', '100', '0', '0', NULL),
(@MOVID + 0, '10', '1976.6324', '7309.147', '364.54446', '100', '0', '0', NULL),
(@MOVID + 0, '11', '2014.2146', '7319.441', '364.4143', '100', '0', '0', NULL),
(@MOVID + 0, '12', '2045.8522', '7317.113', '364.71478', '100', '0', '0', NULL),
(@MOVID + 0, '13', '2081.9558', '7308.1196', '363.9342', '100', '0', '0', NULL),
(@MOVID + 0, '14', '2098.5938', '7282.903', '364.54718', '100', '0', '0', NULL),
(@MOVID + 0, '15', '2110.944', '7263.1353', '364.38232', '100', '0', '0', NULL),
(@MOVID + 0, '16', '2088.6677', '7240.7153', '364.611', '100', '0', '0', NULL),
(@MOVID + 0, '17', '2083.6614', '7218.6304', '364.0789', '100', '0', '0', NULL),
(@MOVID + 0, '18', '2051.243', '7208.448', '363.97937', '100', '0', '0', NULL),
(@MOVID + 0, '19', '2021.5369', '7208.5317', '364.381', '100', '0', '0', NULL),
(@MOVID + 0, '20', '1995.106', '7195.223', '364.1332', '100', '0', '0', NULL),
(@MOVID + 0, '21', '1970.7067', '7173.6484', '364.2836', '100', '0', '0', NULL),
(@MOVID + 0, '22', '1943.4314', '7162.6055', '364.56506', '100', '0', '0', NULL),
(@MOVID + 0, '23', '1918.5143', '7157.143', '364.2846', '100', '0', '0', NULL);