-- Orgrimmar Emissary - Updated
-- Orgrimmar Emissary Patrol
DELETE FROM creature_addon WHERE guid IN (110221,110220);
DELETE FROM creature_movement WHERE id IN (110221,110220);
DELETE FROM game_event_creature WHERE guid IN (110221,110220);
DELETE FROM game_event_creature_data WHERE guid IN (110221,110220);
DELETE FROM creature_battleground WHERE guid IN (110221,110220);
DELETE FROM creature_linking WHERE guid IN (110221,110220);
DELETE FROM creature where guid IN (110221,110220);
-- Make them sync with TDB
UPDATE creature SET guid = 190528, id = 15106 WHERE guid = 116064;
UPDATE creature SET guid = 190529, id = 15106 WHERE guid = 115473;
DELETE FROM game_event_creature WHERE guid IN (116064,115473);
DELETE FROM game_event_creature_data WHERE guid IN (190528,190529);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190528,18, 15106),
(190529,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190528,19, 15105),
(190529,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190528,20, 14990),
(190529,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190528,21, 22015),
(190529,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190528,25, 30567),
(190529,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190528,38, 34949),
(190529,38, 34949);
-- Spawn Groups
UPDATE creature SET position_x = 1727.276, position_y = -3968.8777, position_z = 48.99706, spawndist = 0, MovementType = 0 WHERE guid IN (190528,190529);
DELETE FROM `spawn_group` WHERE id = 19936;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19936, 'Orgrimmar - Battleground Emissary x2 - Patrol', 0, 0, 20549, 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19936;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19936, 190528, 0),
(19936, 190529, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19936;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19936, 2, 2, 0, 19936, 4, 'Orgrimmar - Battleground Emissary x2 - Patrol'); -- linear
DELETE FROM `waypoint_path` WHERE PathId = 19936;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19936,1 ,1727.276,-3968.8777,48.99706  ,100,0,0),
(19936,2 ,1738.9429,-3994.1401,47.261513,100,0,0),
(19936,3 ,1744.7015,-4021.279,46.039837 ,100,0,0),
(19936,4 ,1744.1469,-4044.9219,44.320282,100,0,0),
(19936,5 ,1732.2378,-4066.9475,44.946926,100,0,0),
(19936,6 ,1712.0581,-4083.2356,41.00097 ,100,0,0),
(19936,7 ,1673.1387,-4094.817,35.87418  ,100,0,0),
(19936,8 ,1633.5458,-4107.788,30.028599 ,100,0,0),
(19936,9 ,1601.3748,-4123.9365,30.017363,100,0,0),
(19936,10,1581.6244,-4155.522,34.720913 ,100,0,0),
(19936,11,1576.2188,-4172.626,37.67714  ,100,0,0),
(19936,12,1577.9584,-4194.4653,40.923416,100,0,0),
(19936,13,1588.4781,-4223.9863,44.517784,100,0,0),
(19936,14,1608.8318,-4252.061,45.83498  ,100,0,0),
(19936,15,1629.6212,-4270.522,47.50857  ,100,0,0),
(19936,16,1639.4277,-4272.541,47.929684 ,100,0,0),
(19936,17,1665.8574,-4255.824,51.621384 ,100,0,0),
(19936,18,1686.0176,-4246.5454,51.469612,100,0,0),
(19936,19,1704.0083,-4233.1562,49.90549 ,100,0,0),
(19936,20,1728.5651,-4223.695,45.864174 ,100,0,0),
(19936,21,1751.6704,-4214.096,42.878723 ,100,0,0),
(19936,22,1774.2223,-4220.266,39.976875 ,100,0,0),
(19936,23,1782.24,-4232.1484,40.077637  ,100,0,0),
(19936,24,1768.955,-4247.452,36.064896  ,100,0,0),
(19936,25,1746.8271,-4256.4575,27.252338,100,0,0),
(19936,26,1733.8201,-4269.225,19.538929 ,100,0,0),
(19936,27,1736.1244,-4285.6025,16.155838,100,0,0),
(19936,28,1742.3691,-4296.9126,14.40433 ,100,0,0),
(19936,29,1760.8243,-4307.5566,6.988098 ,100,0,0),
(19936,30,1777.4065,-4295.1426,6.7005496,100,0,0),
(19936,31,1799.9767,-4329.6797,-11.09390,100,0,0),
(19936,32,1814.266,-4363.2725,-9.415752 ,100,0,0),
(19936,33,1840.7018,-4401.254,4.306638  ,100,0,0),
(19936,34,1857.7817,-4419.2314,6.750847 ,100,0,0),
(19936,35,1876.0667,-4416.9,9.283608    ,100,0,0),
(19936,36,1894.2388,-4426.007,14.085804 ,100,0,0),
(19936,37,1897.5159,-4440.337,17.105082 ,100,0,0),
(19936,38,1887.676,-4472.2446,19.961067 ,100,0,0),
(19936,39,1906.863,-4488.971,22.717127  ,100,0,0),
(19936,40,1903.6641,-4512.9844,26.547865,100,0,0),
(19936,41,1889.9966,-4531.8203,27.988417,100,0,0),
(19936,42,1906.0494,-4556.4766,32.074303,100,0,0),
(19936,43,1924.2819,-4586.502,34.193607 ,100,0,0),
(19936,44,1892.1152,-4606.2476,34.20807 ,100,0,0),
(19936,45,1911.4679,-4636.461,31.327795 ,100,0,0),
(19936,46,1932.2648,-4665.656,27.215387 ,100,0,0),
(19936,47,1949.0104,-4691.046,26.855099 ,100,0,0),
(19936,48,1949.1077,-4713.243,36.056625 ,100,0,0),
(19936,49,1956.072,-4729.5967,45.980015 ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId = 19936;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19936,'Orgrimmar - Battleground Emissary x2 - Patrol');

-- we can reduce spawn numbers for all static spawns
DELETE FROM creature_addon WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM creature_movement WHERE Id IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM game_event_creature WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM game_event_creature_data WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM creature_battleground WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM creature_linking WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586)
 OR master_guid IN (110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
DELETE FROM creature WHERE guid IN 
(110237,110238,110233,110234,110235,110236,190591,190590,190585,190584,190587,190586);
-- Make them sync with TDB
UPDATE creature SET guid = 190401, id = 15106 WHERE guid = 115389;
UPDATE creature SET guid = 190400, id = 15106 WHERE guid = 116052;
UPDATE creature SET guid = 190408, id = 15106 WHERE guid = 115388;
UPDATE creature SET guid = 190409, id = 15106 WHERE guid = 116048;
UPDATE creature SET guid = 190424, id = 15106 WHERE guid = 115398;
UPDATE creature SET guid = 190425, id = 15106 WHERE guid = 116062;
UPDATE creature SET guid = 190416, id = 15106 WHERE guid = 115399;
UPDATE creature SET guid = 190417, id = 15106 WHERE guid = 116063;
DELETE FROM game_event_creature WHERE guid IN 
(115389,116052,115388,116048,115398,116062,115399,116063,190589,190588);
DELETE FROM game_event_creature_data WHERE guid IN 
(190401,190400,190408,190409,190424,190425,190416,190417,190589,190588);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190401,18, 15106),
(190400,18, 15106),
(190408,18, 15106),
(190409,18, 15106),
(190424,18, 15106),
(190425,18, 15106),
(190416,18, 15106),
(190417,18, 15106),
(190589,18, 15106),
(190588,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190401,19, 15105),
(190400,19, 15105),
(190408,19, 15105),
(190409,19, 15105),
(190424,19, 15105),
(190425,19, 15105),
(190416,19, 15105),
(190417,19, 15105),
(190589,19, 15105),
(190588,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190401,20, 14990),
(190400,20, 14990),
(190408,20, 14990),
(190409,20, 14990),
(190424,20, 14990),
(190425,20, 14990),
(190416,20, 14990),
(190417,20, 14990),
(190589,20, 14990),
(190588,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190401,21, 22015),
(190400,21, 22015),
(190408,21, 22015),
(190409,21, 22015),
(190424,21, 22015),
(190425,21, 22015),
(190416,21, 22015),
(190417,21, 22015),
(190589,21, 22015),
(190588,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190401,25, 30567),
(190400,25, 30567),
(190408,25, 30567),
(190409,25, 30567),
(190424,25, 30567),
(190425,25, 30567),
(190416,25, 30567),
(190417,25, 30567),
(190589,25, 30567),
(190588,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190401,38, 34949),
(190400,38, 34949),
(190408,38, 34949),
(190409,38, 34949),
(190424,38, 34949),
(190425,38, 34949),
(190416,38, 34949),
(190417,38, 34949),
(190589,38, 34949),
(190588,38, 34949);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 19935;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19935, 'Orgrimmar - Battleground Emissary x2 - Static ', 0, 0, 20549, 0x02 | 0x08); -- TBC will have WorldState = 19998
DELETE FROM `spawn_group_spawn` WHERE id = 19935;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19935,190401, -1),
(19935,190400, -1),
(19935,190408, -1),
(19935,190409, -1),
(19935,190424, -1),
(19935,190425, -1),
(19935,190416, -1),
(19935,190417, -1),
(19935,190589, -1),
(19935,190588, -1);