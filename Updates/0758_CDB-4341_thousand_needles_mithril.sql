-- https://github.com/cmangos/classic-db/commit/b4908867b738fc9e36a8c90813b450ab843d5805
-- https://www.wowhead.com/classic/object=2040/mithril-deposit ~ 12 nodes instead of >200
-- Mithril Deposit
DELETE FROM `gameobject` WHERE `guid` BETWEEN 112548 AND 112553;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 112548 AND 112553;
DELETE FROM `pool_pool` WHERE `pool_id` = 9214;
DELETE FROM `pool_template` WHERE `entry` = 9214;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110176 AND 110181;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110176 AND 110181;
DELETE FROM `pool_pool` WHERE `pool_id` = 8769;
DELETE FROM `pool_template` WHERE `entry` = 8769;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110182 AND 110187;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110182 AND 110187;
DELETE FROM `pool_pool` WHERE `pool_id` = 8770;
DELETE FROM `pool_template` WHERE `entry` = 8770;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110056 AND 110061;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110056 AND 110061;
DELETE FROM `pool_pool` WHERE `pool_id` = 8749;
DELETE FROM `pool_template` WHERE `entry` = 8749;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110068 AND 110073;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110068 AND 110073;
DELETE FROM `pool_pool` WHERE `pool_id` = 8751;
DELETE FROM `pool_template` WHERE `entry` = 8751;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 109468 AND 109473;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 109468 AND 109473;
DELETE FROM `pool_pool` WHERE `pool_id` = 8651;
DELETE FROM `pool_template` WHERE `entry` = 8651;

-- bad nodes
DELETE FROM `gameobject` WHERE `guid` BETWEEN 110110 AND 110115;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110110 AND 110115;
DELETE FROM `pool_pool` WHERE `pool_id` = 8758;
DELETE FROM `pool_template` WHERE `entry` = 8758;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 109960 AND 109965;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 109960 AND 109965;
DELETE FROM `pool_pool` WHERE `pool_id` = 8733;
DELETE FROM `pool_template` WHERE `entry` = 8733;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 109762 AND 109767;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 109762 AND 109767;
DELETE FROM `pool_pool` WHERE `pool_id` = 8700;
DELETE FROM `pool_template` WHERE `entry` = 8700;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110050 AND 110055;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110050 AND 110055;
DELETE FROM `pool_pool` WHERE `pool_id` = 8748;
DELETE FROM `pool_template` WHERE `entry` = 8748;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 109756 AND 109761;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 109756 AND 109761;
DELETE FROM `pool_pool` WHERE `pool_id` = 8699;
DELETE FROM `pool_template` WHERE `entry` = 8699;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 110152 AND 110157;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110152 AND 110157;
DELETE FROM `pool_pool` WHERE `pool_id` = 8765;
DELETE FROM `pool_template` WHERE `entry` = 8765;

-- nonexistant
DELETE FROM `pool_pool` WHERE `pool_id` = 8698; -- 2055	0	Mineral Spawn Point 170 - Thousand Needles

-- 2055	50	Master Mineral Pool - Thousand Needles
DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2055) AND `description` LIKE '%Mithril%'); -- 247 wrong small thorium nodes in Thousand Needles
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2055) AND `description` LIKE '%Mithril%'; -- 247 wrong small thorium nodes in Thousand Needles
UPDATE `pool_gameobject` SET `chance` = 25 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2055) AND `description` LIKE '%Iron%';
-- 108736	8529	0	Mineral Spawn Point 1 - Copper -> 49
-- 108737	8529	26	Mineral Spawn Point 1 - Tin
-- 108738	8529	15	Mineral Spawn Point 1 - Iron -> 25
-- 108739	8529	10	Mineral Spawn Point 1 - Mithril -> 0
-- 108740	8529	5	Mineral Spawn Point 1 - Silver
-- 108741	8529	5	Mineral Spawn Point 1 - Gold

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 95520;
SET @OBJECT_2 = 95521;
SET @OBJECT_3 = 95522;
SET @OBJECT_4 = 95523;
SET @OBJECT_5 = 95524;
SET @OBJECT_6 = 95525;

SET @GROUP_ID = 10101;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -4871.50830078125, -2358.7026367187500, -53.7004394531250000, 4.310965538024902343, 0, 0, -0.83388519287109375, 0.551937937736511230, 600, 900),
(@OBJECT_2, 0, 1, 1, -4912.88330078125, -2400.7690429687500, -53.0078392028808593, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003, 600, 900),
(@OBJECT_3, 0, 1, 1, -4941.10937500000, -2333.8369140625000, -54.8899459838867187, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939, 600, 900),
(@OBJECT_4, 0, 1, 1, -4949.51611328125, -2293.5302734375000, -82.4419097900390625, 3.176533222198486328, 0, 0, -0.99984741210937500, 0.017469281330704689, 600, 900),
(@OBJECT_5, 0, 1, 1, -4900.70800781250, -2266.3300781250000, -70.3889770507812500, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 600, 900),
(@OBJECT_6, 0, 1, 1, -4888.65869140625, -2285.1181640625000, -59.6998634338378906, 5.375615119934082031, 0, 0, -0.43837070465087890, 0.898794233798980712, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Thousand Needles - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 95530;
SET @OBJECT_2 = 95531;
SET @OBJECT_3 = 95532;
SET @OBJECT_4 = 95533;
SET @OBJECT_5 = 95534;
SET @OBJECT_6 = 95535;

SET @GROUP_ID = 10102;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -5207.28027343750, -1218.4539794921875, 49.23474884033203125, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126, 600, 900),
(@OBJECT_2, 0, 1, 1, -5132.91601562500, -1050.3582763671875, 2.170691013336181640, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432, 600, 900),
(@OBJECT_3, 0, 1, 1, -5138.89306640625, -910.05358886718750, -4.12245702743530273, 2.949595451354980468, 0, 0, 0.995395660400390625, 0.095851235091686248, 600, 900),
(@OBJECT_4, 0, 1, 1, -5047.21240234375, -952.89355468750000, -3.82195305824279785, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 900),
(@OBJECT_5, 0, 1, 1, -4996.55517578125, -856.46276855468750, -4.48618507385253906, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 600, 900),
(@OBJECT_6, 0, 1, 1, -4909.80712890625, -920.93316650390625, -4.00124216079711914, 4.502951622009277343, 0, 0, -0.77714538574218750, 0.629321098327636718, 600, 900);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Thousand Needles - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

