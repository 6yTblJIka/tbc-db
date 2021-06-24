-- add a few missing spawns and some variety
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('45125', '4283', '0', '0', '0', '2895.162353515625', '-757.13824462890625', '160.4161224365234375', '3.211405754089355468', '300', '300', '0', '0'),
('45152', '4283', '0', '0', '0', '2852.579833984375', '-775.14819335937500', '160.4161224365234375', '0.575958669185638427', '300', '300', '0', '0'),
('45161', '4283', '0', '0', '0', '2862.534667968750', '-799.89721679687500', '160.4161224365234375', '0.959931075572967529', '300', '300', '0', '0'),
('45154', '4283', '0', '0', '0', '2858.788330078125', '-764.08746337890625', '160.4161224365234375', '5.142890930175781250', '300', '300', '0', '2'),
('45174', '4283', '0', '0', '0', '2880.675048828125', '-751.92663574218750', '160.4160766601562500', '5.101121902465820312', '300', '300', '0', '2'),
('45134', '4283', '0', '0', '0', '2905.695800781250', '-783.82183837890625', '160.4161224365234375', '2.809980154037475585', '300', '300', '0', '0'), -- NEW
('45135', '0', '0', '0', '0', '2890.552978515625', '-810.98278808593750', '160.4161682128906250', '0.383972436189651489', '300', '300', '0', '0'), -- NEW
('45126', '0', '0', '0', '0', '2879.505859375000', '-743.71032714843750', '160.4161376953125000', '3.647738218307495117', '300', '300', '0', '0'),
('45139', '0', '0', '0', '0', '2875.575195312500', '-745.69909667968750', '160.4161376953125000', '0.436332315206527709', '300', '300', '0', '0'),
('45195', '0', '0', '0', '0', '2894.343017578125', '-809.55889892578125', '160.4161376953125000', '3.769911050796508789', '300', '300', '0', '0'),
('45137', '0', '0', '0', '0', '2881.247070312500', '-790.00408935546875', '160.4161376953125000', '0.052359879016876220', '300', '300', '0', '0'), -- NEW
('45146', '0', '0', '0', '0', '2884.769287109375', '-788.57659912109375', '160.4161682128906250', '3.141592741012573242', '300', '300', '0', '0'), -- NEW
('45172', '0', '0', '0', '0', '2857.659423828125', '-753.64984130859375', '160.4161376953125000', '3.403392076492309570', '300', '300', '0', '0'),
('45175', '0', '0', '0', '0', '2853.358886718750', '-755.75073242187500', '160.4161376953125000', '0.418879032135009765', '300', '300', '0', '0');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
('45135', '4284'), ('45135', '4285'),
('45126', '4284'), ('45126', '4285'),
('45139', '4284'), ('45139', '4285'),
('45195', '4284'), ('45195', '4285'),
('45137', '4284'), ('45137', '4285'),
('45146', '4284'), ('45146', '4285'),
('45172', '4284'), ('45172', '4285'),
('45175', '4284'), ('45175', '4285');

DELETE FROM `creature_movement` WHERE `id`='45174';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
('45174', '1', '2889.0250', '-772.31650', '160.33282', '100', '0', '0'),
('45174', '2', '2897.9004', '-794.28723', '160.33281', '100', '0', '0'),
('45174', '3', '2889.0837', '-772.46450', '160.33284', '100', '0', '0'),
('45174', '4', '2880.8113', '-751.64526', '160.33278', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id`='45154';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
('45154', '1', '2866.8254', '-781.58570', '160.33293', '100', '0', '0'),
('45154', '2', '2875.4553', '-800.77325', '160.33282', '100', '0', '0'),
('45154', '3', '2866.8254', '-781.58570', '160.33293', '100', '0', '0'),
('45154', '4', '2858.9734', '-764.14580', '160.33281', '100', '0', '0');

DELETE FROM `creature` WHERE `id` = 25171;
DELETE FROM `creature` WHERE `guid` = 45146 AND `id` = 16871; -- will be added back later
DELETE FROM `creature_addon` WHERE `guid` = 45134;
-- (Re)-move tbc-db creatures
-- Remove Zepplin Trigger Npcs, as implementation occured with wotlk - save location data
-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- (12401, 25171, 1, 1, 0, 0, 1315.62, -4667.87, 48.3677, 1.70589, 300, 300, 0, 0, 0, 0, 0, 0),
-- (12403, 25171, 1, 1, 0, 0, 1305.8, -4649.6, 49.2714, 4.84749, 300, 300, 0, 0, 0, 0, 0, 0),
-- (12404, 25171, 1, 1, 0, 0, 1307.01, -4668.61, 48.3663, 1.68844, 300, 300, 0, 0, 0, 0, 0, 0),
-- (12922, 25171, 1, 1, 0, 0, 1265.74, -4882.33, 48.4939, 4.68353, 300, 300, 0, 0, 0, 0, 0, 0),
-- (12923, 25171, 1, 1, 0, 0, 1281.65, -4832.64, 47.5902, 1.38575, 300, 300, 0, 0, 0, 0, 0, 0),
-- (12924, 25171, 1, 1, 0, 0, 1263.84, -4901.28, 47.5888, 1.52448, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45074, 25171, 0, 1, 0, 0, 2150.14, 296.879, 94.6136, 3.15898, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45076, 25171, 0, 1, 0, 0, 2226.13, 285.059, 100.505, 6.20221, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45077, 25171, 0, 1, 0, 0, 2227.25, 293.631, 100.504, 6.18475, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45100, 25171, 0, 1, 0, 0, 2234.27, 292.846, 101.181, 6.18006, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45101, 25171, 0, 1, 0, 0, 2253.08, 289.867, 102.086, 3.05592, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45102, 25171, 0, 1, 0, 0, 2233.1, 284.279, 101.182, 6.19751, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45134, 25171, 0, 1, 0, 0, 2050.55, 299.945, 91.4671, 6.04082, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45135, 25171, 0, 1, 0, 0, 2071.16, 302.348, 92.3708, 2.89923, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45137, 25171, 0, 1, 0, 0, 2053.04, 308.226, 91.4657, 6.02337, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45206, 25171, 0, 1, 0, 0, 2055.64, 307.412, 91.4791, 6.03136, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45207, 25171, 0, 1, 0, 0, 2073.8, 301.679, 92.3842, 2.90722, 300, 300, 0, 0, 0, 0, 0, 0),
-- (45209, 25171, 0, 1, 0, 0, 2053.22, 299.112, 91.4805, 6.04881, 300, 300, 0, 0, 0, 0, 0, 0);

-- (45146, 16871, 530, 1, 0, 0, -894.838, 1929.28, 67.0214, 0.506145, 300, 300, 0, 0, 0, 0, 0, 0),

