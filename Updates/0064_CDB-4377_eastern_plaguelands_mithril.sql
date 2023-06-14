
-- https://github.com/cmangos/classic-db/commit/982af095a1a44b9bd03f241e489e963adf7f56bc
/*
03 10
03 07
04 06
01 09
02 09
05 11
02 08
02 08
04 08
04 06
01 10
05 10
-- --------------
01 02 03 04 05
06 07 08 09 10 11
*/

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74570 AND 74574;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74570 AND 74574;
DELETE FROM `pool_pool` WHERE `pool_id` = 4654;
DELETE FROM `pool_template` WHERE `entry` = 4654;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74680 AND 74684;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74680 AND 74684;
DELETE FROM `pool_pool` WHERE `pool_id` = 4676;
DELETE FROM `pool_template` WHERE `entry` = 4676;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74675 AND 74679;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74675 AND 74679;
DELETE FROM `pool_pool` WHERE `pool_id` = 4675;
DELETE FROM `pool_template` WHERE `entry` = 4675;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74745 AND 74749;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74745 AND 74749;
DELETE FROM `pool_pool` WHERE `pool_id` = 4689;
DELETE FROM `pool_template` WHERE `entry` = 4689;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74560 AND 74564;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74560 AND 74564;
DELETE FROM `pool_pool` WHERE `pool_id` = 4652;
DELETE FROM `pool_template` WHERE `entry` = 4652;

-- extra bad nodes
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74316 AND 74319;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74316 AND 74319;
DELETE FROM `pool_pool` WHERE `pool_id` = 4603;
DELETE FROM `pool_template` WHERE `entry` = 4603;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74331 AND 74334;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74331 AND 74334;
DELETE FROM `pool_pool` WHERE `pool_id` = 4606;
DELETE FROM `pool_template` WHERE `entry` = 4606;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74321 AND 74324;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74321 AND 74324;
DELETE FROM `pool_pool` WHERE `pool_id` = 4604;
DELETE FROM `pool_template` WHERE `entry` = 4604;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74361 AND 74364;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74361 AND 74364;
DELETE FROM `pool_pool` WHERE `pool_id` = 4612;
DELETE FROM `pool_template` WHERE `entry` = 4612;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74371 AND 74374;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74371 AND 74374;
DELETE FROM `pool_pool` WHERE `pool_id` = 4614;
DELETE FROM `pool_template` WHERE `entry` = 4614;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74386 AND 74389;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74386 AND 74389;
DELETE FROM `pool_pool` WHERE `pool_id` = 4617;
DELETE FROM `pool_template` WHERE `entry` = 4617;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74546 AND 74549;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74546 AND 74549;
DELETE FROM `pool_pool` WHERE `pool_id` = 4649;
DELETE FROM `pool_template` WHERE `entry` = 4649;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74566 AND 74569;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74566 AND 74569;
DELETE FROM `pool_pool` WHERE `pool_id` = 4653;
DELETE FROM `pool_template` WHERE `entry` = 4653;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74656 AND 74659;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74656 AND 74659;
DELETE FROM `pool_pool` WHERE `pool_id` = 4671;
DELETE FROM `pool_template` WHERE `entry` = 4671;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 74691 AND 74694;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74691 AND 74694;
DELETE FROM `pool_pool` WHERE `pool_id` = 4678;
DELETE FROM `pool_template` WHERE `entry` = 4678;

-- https://www.wowhead.com/tbc/object=2040/mithril-deposit
DELETE FROM `pool_gameobject` where `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2010) AND `description` LIKE '%Mithril%';
DELETE FROM `gameobject` WHERE `guid` IN (74300,74305,74310,74315,74320,74325,74330,74335,74340,74345,74350,74355,74360,74365,74370,74375,74380,74385,74390,74395,74400,74405,74410,74415,
74420,74425,74430,74435,74440,74445,74455,74460,74465,74470,74475,74480,74485,74490,74495,74500,74505,74510,74515,74525,74530,74535,74540,74545,74550,74555,74565,74575,74580,74585,74590,
74595,74600,74605,74610,74615,74620,74625,74630,74635,74640,74645,74650,74655,74660,74665,74670,74685,74690,74695,74700,74705,74710,74715,74720,74725,74730,74735,74740);

-- https://www.wowhead.com/tbc/object=1734/gold-vein
DELETE FROM `pool_gameobject` where `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2010) AND `description` LIKE '%Gold%';
DELETE FROM `gameobject` WHERE `guid` IN (74303,74308,74313,74318,74323,74328,74333,74338,74343,74348,74353,74358,74363,74368,74373,74378,74383,74388,74393,74398,74403,74408,74413,74418,
74423,74428,74433,74438,74443,74448,74458,74463,74468,74473,74478,74483,74488,74493,74498,74503,74508,74513,74518,74528,74533,74538,74543,74548,74553,74558,74568,74578,74583,74588,74593,
74598,74603,74608,74613,74618,74623,74628,74633,74638,74643,74648,74653,74658,74663,74668,74673,74688,74693,74698,74703,74708,74713,74718,74723,74728,74733,74738,74743);

-- 74300	4600	0	Mineral Spawn Point 1 - Mithril -> removed
-- 74301	4600	30	Mineral Spawn Point 1 - Small Thorium
-- 74302	4600	30	Mineral Spawn Point 1 - Rich Thorium
-- 74303	4600	10	Mineral Spawn Point 1 - Gold -> removed
-- 74304	4600	20	Mineral Spawn Point 1 - Truesilver
UPDATE `pool_gameobject` SET `chance` = 0 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2010) AND `description` LIKE '%Small Thorium%';
UPDATE `pool_gameobject` SET `chance` = 20 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2010) AND `description` LIKE '%Rich Thorium%';

UPDATE `pool_template` SET `max_limit` = 15 WHERE `entry` = 2010; -- 2010	23	Master Mineral Pool - Eastern Plaguelands

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- DELETE FROM `gameobject` WHERE (`guid` IN (74300, 74305, 74310, 74315, 74320, 74325, 74330, 74335, 74340, 74345, 74350, 74355, 74360, 74365, 74370, 74375, 74380, 74385, 74390, 74395,
-- 74400, 74405, 74410, 74415, 74420, 74425, 74430, 74435, 74440, 74445, 74450, 74455, 74460, 74465, 74470, 74475, 74480, 74485, 74490, 74495, 74500, 74505, 74510, 74515, 74520, 74525,
-- 74530, 74535, 74540, 74545, 74550, 74555, 74560, 74565, 74570, 74575, 74580, 74585, 74590, 74595, 74600, 74605, 74610, 74615, 74620, 74625, 74630, 74635, 74640, 74645, 74650, 74655,
-- 74660, 74665, 74670, 74675, 74680, 74685, 74690, 74695, 74700, 74705, 74710, 74715, 74720, 74725, 74730, 74735, 74740, 74745));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (74300, 74305, 74310, 74315, 74320, 74325, 74330, 74335, 74340, 74345, 74350, 74355, 74360, 74365, 74370, 74375, 74380, 74385, 74390, 74395,
-- 74400, 74405, 74410, 74415, 74420, 74425, 74430, 74435, 74440, 74445, 74450, 74455, 74460, 74465, 74470, 74475, 74480, 74485, 74490, 74495, 74500, 74505, 74510, 74515, 74520, 74525,
-- 74530, 74535, 74540, 74545, 74550, 74555, 74560, 74565, 74570, 74575, 74580, 74585, 74590, 74595, 74600, 74605, 74610, 74615, 74620, 74625, 74630, 74635, 74640, 74645, 74650, 74655,
-- 74660, 74665, 74670, 74675, 74680, 74685, 74690, 74695, 74700, 74705, 74710, 74715, 74720, 74725, 74730, 74735, 74740, 74745));

-- DELETE FROM `gameobject` WHERE (`guid` IN (74303, 74308, 74313, 74318, 74323, 74328, 74333, 74338, 74343, 74348, 74353, 74358, 74363, 74368, 74373, 74378, 74383, 74388, 74393, 74398,
-- 74403, 74408, 74413, 74418, 74423, 74428, 74433, 74438, 74443, 74448, 74453, 74458, 74463, 74468, 74473, 74478, 74483, 74488, 74493, 74498, 74503, 74508, 74513, 74518, 74523, 74528,
-- 74533, 74538, 74543, 74548, 74553, 74558, 74563, 74568, 74573, 74578, 74583, 74588, 74593, 74598, 74603, 74608, 74613, 74618, 74623, 74628, 74633, 74638, 74643, 74648, 74653, 74658,
-- 74663, 74668, 74673, 74678, 74683, 74688, 74693, 74698, 74703, 74708, 74713, 74718, 74723, 74728, 74733, 74738, 74743, 74748));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (74303, 74308, 74313, 74318, 74323, 74328, 74333, 74338, 74343, 74348, 74353, 74358, 74363, 74368, 74373, 74378, 74383, 74388, 74393, 74398,
-- 74403, 74408, 74413, 74418, 74423, 74428, 74433, 74438, 74443, 74448, 74453, 74458, 74463, 74468, 74473, 74478, 74483, 74488, 74493, 74498, 74503, 74508, 74513, 74518, 74523, 74528,
-- 74533, 74538, 74543, 74548, 74553, 74558, 74563, 74568, 74573, 74578, 74583, 74588, 74593, 74598, 74603, 74608, 74613, 74618, 74623, 74628, 74633, 74638, 74643, 74648, 74653, 74658,
-- 74663, 74668, 74673, 74678, 74683, 74688, 74693, 74698, 74703, 74708, 74713, 74718, 74723, 74728, 74733, 74738, 74743, 74748));

-- DELETE FROM `gameobject` WHERE (`guid` IN (74564, 74574, 74679, 74684, 74749));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (74564, 74574, 74679, 74684, 74749));

-- DELETE FROM `gameobject` WHERE (`guid` IN (74561, 74571, 74676, 74681, 74746));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (74561, 74571, 74676, 74681, 74746));

-- DELETE FROM `gameobject` WHERE (`guid` IN (74562, 74572, 74677, 74682, 74747));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (74562, 74572, 74677, 74682, 74747));

-- DELETE FROM `pool_template` WHERE (`entry` IN (6218, 6229, 6232, 6245, 6247));

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET @OGUID := 141410;
SET @SGUID := 337;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 0, 1, 1897.5024414062500, -3642.021240234375, 132.6244659423828125, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 600, 900),
(@OGUID + 01, 0, 0, 1, 1853.9729003906250, -3791.303955078125, 144.3201293945312500, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 600, 900),
(@OGUID + 02, 0, 0, 1, 1786.4692382812500, -2717.858398437500, 86.93231964111328125, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 600, 900),
(@OGUID + 03, 0, 0, 1, 1630.6082763671875, -2992.621093750000, 86.30981445312500000, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724, 600, 900),
(@OGUID + 04, 0, 0, 1, 1651.9489746093750, -3570.088378906250, 130.9889678955078125, 3.944445848464965820, 0, 0, -0.92050457000732421, 0.390731811523437500, 600, 900),
(@OGUID + 05, 0, 0, 1, 1528.0147705078125, -3881.086914062500, 157.0419769287109375, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352, 600, 900);


INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 00, 'Eastern Plaguelands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, '-1'),
(@SGUID + 00, @OGUID + 01, '-1'),
(@SGUID + 00, @OGUID + 02, '-1'),
(@SGUID + 00, @OGUID + 03, '-1'),
(@SGUID + 00, @OGUID + 04, '-1'),
(@SGUID + 00, @OGUID + 05, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, '2040', '0', '0', '0'),
(@SGUID + 00, '1734', '0', '0', '5'),
(@SGUID + 00, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 10, 0, 0, 1, 2226.7082519531250, -2750.540771484375, 88.32784271240234375, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 600, 900),
(@OGUID + 11, 0, 0, 1, 2212.9543457031250, -3043.523437500000, 102.8322372436523437, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 600, 900),
(@OGUID + 12, 0, 0, 1, 2071.1606445312500, -2985.419921875000, 91.12676239013671875, 1.361356139183044433, 0, 0, 0.629320144653320312, 0.777146160602569580, 600, 900),
(@OGUID + 13, 0, 0, 1, 1903.4377441406250, -3134.222412109375, 107.3956222534179687, 5.218535900115966796, 0, 0, -0.50753784179687500, 0.861629426479339599, 600, 900),
(@OGUID + 14, 0, 0, 1, 1848.9742431640625, -3361.271728515625, 121.2647171020507812, 1.762782454490661621, 0, 0, 0.771624565124511718, 0.636078238487243652, 600, 900);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 01, 'Eastern Plaguelands - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 01, @OGUID + 10, '-1'),
(@SGUID + 01, @OGUID + 11, '-1'),
(@SGUID + 01, @OGUID + 12, '-1'),
(@SGUID + 01, @OGUID + 13, '-1'),
(@SGUID + 01, @OGUID + 14, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 01, '2040', '0', '0', '0'),
(@SGUID + 01, '1734', '0', '0', '5'),
(@SGUID + 01, '2047', '0', '0', '5');
