-- Tailoring
-- moved to templates

-- Apprentice Tailors
/* In Patch 2.3, Tailoring profession trainers were changed to train up to Artisan level (skill level 300), 
and any redundant trainers in capitals were changed into simple apprentices without practical function.*/
-- DELETE FROM npc_trainer WHERE entry IN (1300,1703,2855,11048,11050,11051,16639,16746); -- -0
-- DELETE FROM `npc_trainer_template` WHERE `entry` = 1085; -- used by Apprentice Tailor, dont delete keep for progression
UPDATE creature_template SET NpcFlags = 1, TrainerType = 0, `SpeedWalk` = 1, `TrainerTemplateId` = 0 /*1085*/ WHERE entry IN (1300,1703,2855,11048,11050,11051,16639,16746);
UPDATE creature_template SET NpcFlags = 0 WHERE `entry` = 16746;
-- source trinitycore, gossip_menu exist in tbcmangos except 4269
UPDATE creature_template SET `GossipMenuId` = 4262 WHERE `entry` = 1300; -- exists
UPDATE creature_template SET `GossipMenuId` = 4264 WHERE `entry` = 1703;
UPDATE creature_template SET `GossipMenuId` = 4265 WHERE `entry` = 2855;
UPDATE creature_template SET `GossipMenuId` = 4268 WHERE `entry` = 11048;
UPDATE creature_template SET `GossipMenuId` = 4269 WHERE `entry` = 11050;
UPDATE creature_template SET `GossipMenuId` = 4266 WHERE `entry` = 11051; -- exists
UPDATE creature_template SET `GossipMenuId` = 8829 WHERE `entry` = 16639;

-- DELETE FROM gossip_menu WHERE entry IN(11048,11050,16639); -- wrong way to resolve this
-- INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
-- (11048,4268,0,0), -- something about mage trainer
-- (11050,4269,0,0), -- something about paladin trainer
-- (16639,8829,0,0); -- good day to be alive?!

DELETE FROM `npc_text` WHERE `Id` = 11459; -- gossip_menu 8829
INSERT INTO `npc_text_broadcast_text` (`Id`, `BroadcastTextId0`) VALUES (11459, 22513); -- trinitycore, else "UDB text missing"
DELETE FROM `gossip_menu` WHERE `entry` = 4269;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (4269, 5437, 0, 0);

-- Tailoring Trainer (teaching 101 spells)
DELETE FROM npc_trainer WHERE entry IN (1103,1346,2399,2627,3004,3363,3484,3523,3704,4159,4193,4576,5153,11052,11557,16366,16640,16729,17487,5041); -- 5041
UPDATE creature_template SET TrainerTemplateId = 1080 WHERE entry IN (1103,1346,2399,2627,3004,3363,3484,3523,3704,4159,4193,4576,5153,11052,16366,16640,16729,17487,11557,5041);
-- 11557 might be special, only teaches 77 spells in tbcwowhead - https://www.wowhead.com/tbc/npc=11557/meilosh#teaches-recipe
-- 5041	World Tailoring Trainer
DELETE FROM npc_trainer_template WHERE entry IN (1080);
INSERT INTO npc_trainer_template (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(1080,2385,50,197,10,0,0),
(1080,2386,200,197,65,0,0),
(1080,2392,50,197,40,0,0),
(1080,2393,25,197,1,0,0),
(1080,2394,50,197,40,0,0),
(1080,2395,300,197,70,0,0),
(1080,2396,200,197,70,0,0),
(1080,2397,200,197,60,0,0),
(1080,2399,300,197,85,0,0),
(1080,2401,300,197,95,0,0),
(1080,2402,250,197,75,0,0),
(1080,2406,200,197,100,0,0),
(1080,2964,100,197,75,0,0),
(1080,3755,100,197,45,0,0),
(1080,3757,200,197,80,0,0),
(1080,3813,800,197,150,0,0),
(1080,3839,500,197,125,0,0),
(1080,3840,100,197,35,0,0),
(1080,3841,200,197,60,0,0),
(1080,3842,300,197,70,0,0),
(1080,3843,400,197,85,0,0),
(1080,3845,300,197,80,0,0),
(1080,3848,500,197,110,0,0),
(1080,3850,500,197,110,0,0),
(1080,3852,750,197,130,0,0),
(1080,3855,750,197,125,0,0),
(1080,3859,750,197,150,0,0),
(1080,3861,1000,197,185,0,0),
(1080,3865,1000,197,175,0,0),
(1080,3866,250,197,110,0,0),
(1080,3871,500,197,170,0,0),
(1080,3911,10,0,0,5,0), -- 3908
(1080,3912,500,197,50,10,0), -- 3909
(1080,3913,5000,197,125,20,0), -- 3910
(1080,3914,50,197,30,0,0),
-- (1080,3915,25,197,1,0,0), -- 1085
(1080,6521,400,197,90,0,0),
(1080,6690,1000,197,135,0,0),
(1080,7623,50,197,30,0,0),
(1080,7624,50,197,30,0,0),
(1080,8465,50,197,40,0,0),
(1080,8467,250,197,110,0,0),
(1080,8483,500,197,160,0,0),
(1080,8489,750,197,175,0,0),
(1080,8758,600,197,140,0,0),
(1080,8760,600,197,145,0,0),
(1080,8762,750,197,160,0,0),
(1080,8764,900,197,170,0,0),
(1080,8766,1000,197,175,0,0),
(1080,8770,1000,197,190,0,0),
(1080,8772,1000,197,175,0,0),
(1080,8774,1000,197,180,0,0),
(1080,8776,50,197,15,0,0),
(1080,8791,2500,197,185,0,0),
(1080,8799,3000,197,195,0,0),
(1080,8804,5000,197,210,0,0),
-- (1080,12044,30,197,1,0,0), -- 1085
(1080,12045,50,197,20,0,0),
(1080,12046,300,197,75,0,0),
(1080,12048,4000,197,205,0,0),
(1080,12049,4000,197,205,0,0),
(1080,12050,4000,197,210,0,0),
(1080,12053,5000,197,215,0,0),
(1080,12061,2500,197,215,0,0),
(1080,12065,5000,197,225,0,0),
(1080,12067,5000,197,225,0,0),
(1080,12069,5000,197,225,0,0),
(1080,12070,5000,197,225,0,0),
(1080,12072,6000,197,230,0,0),
(1080,12073,6000,197,230,0,0),
(1080,12074,6000,197,230,0,0),
(1080,12077,5000,197,235,0,0),
(1080,12079,6500,197,235,0,0),
(1080,12088,7500,197,245,0,0),
(1080,12092,7500,197,250,0,0),
(1080,12181,50000,197,200,35,0), -- 12180
(1080,18401,10000,197,250,0,0),
(1080,18402,10000,197,255,0,0),
(1080,18403,10000,197,255,0,0),
(1080,18406,10000,197,260,0,0),
(1080,18407,10000,197,260,0,0),
(1080,18409,10000,197,265,0,0),
(1080,18410,10000,197,265,0,0),
(1080,18411,10000,197,265,0,0),
(1080,18413,10000,197,270,0,0),
(1080,18414,10000,197,270,0,0),
(1080,18415,10000,197,270,0,0),
(1080,18416,12500,197,275,0,0),
(1080,18417,12500,197,275,0,0),
(1080,18420,12500,197,275,0,0),
(1080,18421,12500,197,275,0,0),
(1080,18423,15000,197,280,0,0),
(1080,18424,15000,197,280,0,0),
(1080,18437,15000,197,285,0,0),
(1080,18438,15000,197,285,0,0),
(1080,18441,15000,197,290,0,0),
(1080,18442,15000,197,290,0,0),
(1080,18444,15000,197,295,0,0),
(1080,18446,15000,197,300,0,0),
(1080,18449,15000,197,300,0,0),
(1080,18450,15000,197,300,0,0),
(1080,18451,15000,197,300,0,0),
(1080,18453,15000,197,300,0,0);
-- (1080,63742,750,197,125,0,0);

-- Master Tailoring Trainer (teaching 110 spells)
DELETE FROM npc_trainer WHERE entry IN (18749,18772,16000); -- 16000
UPDATE creature_template SET TrainerTemplateId = 1081 WHERE entry IN (18749,18772,16000); -- 16000 World Master Tailoring Trainer
DELETE FROM npc_trainer_template WHERE entry IN (1081);
INSERT INTO npc_trainer_template (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(1081,2385,50,197,10,0,0),
(1081,2386,200,197,65,0,0),
(1081,2392,50,197,40,0,0),
(1081,2393,25,197,1,0,0),
(1081,2394,50,197,40,0,0),
(1081,2395,300,197,70,0,0),
(1081,2396,200,197,70,0,0),
(1081,2397,200,197,60,0,0),
(1081,2399,300,197,85,0,0),
(1081,2401,300,197,95,0,0),
(1081,2402,250,197,75,0,0),
(1081,2406,200,197,100,0,0),
(1081,2964,100,197,75,0,0),
(1081,3755,100,197,45,0,0),
(1081,3757,200,197,80,0,0),
(1081,3813,800,197,150,0,0),
(1081,3839,500,197,125,0,0),
(1081,3840,100,197,35,0,0),
(1081,3841,200,197,60,0,0),
(1081,3842,300,197,70,0,0),
(1081,3843,400,197,85,0,0),
(1081,3845,300,197,80,0,0),
(1081,3848,500,197,110,0,0),
(1081,3850,500,197,110,0,0),
(1081,3852,750,197,130,0,0),
(1081,3855,750,197,125,0,0),
(1081,3859,750,197,150,0,0),
(1081,3861,1000,197,185,0,0),
(1081,3865,1000,197,175,0,0),
(1081,3866,250,197,110,0,0),
(1081,3871,500,197,170,0,0),
(1081,3911,10,0,0,5,0), -- 3908
(1081,3912,500,197,50,10,0), -- 3909
(1081,3913,5000,197,125,20,0), -- 3910
(1081,3914,50,197,30,0,0),
(1081,6521,400,197,90,0,0),
(1081,6690,1000,197,135,0,0),
(1081,7623,50,197,30,0,0),
(1081,7624,50,197,30,0,0),
(1081,8465,50,197,40,0,0),
(1081,8467,250,197,110,0,0),
(1081,8483,500,197,160,0,0),
(1081,8489,750,197,175,0,0),
(1081,8758,600,197,140,0,0),
(1081,8760,600,197,145,0,0),
(1081,8762,750,197,160,0,0),
(1081,8764,900,197,170,0,0),
(1081,8766,1000,197,175,0,0),
(1081,8770,1000,197,190,0,0),
(1081,8772,1000,197,175,0,0),
(1081,8774,1000,197,180,0,0),
(1081,8776,50,197,15,0,0),
(1081,8791,2500,197,185,0,0),
(1081,8799,3000,197,195,0,0),
(1081,8804,5000,197,210,0,0),
(1081,12045,50,197,20,0,0),
(1081,12046,300,197,75,0,0),
(1081,12048,4000,197,205,0,0),
(1081,12049,4000,197,205,0,0),
(1081,12050,4000,197,210,0,0),
(1081,12053,5000,197,215,0,0),
(1081,12061,2500,197,215,0,0),
(1081,12065,5000,197,225,0,0),
(1081,12067,5000,197,225,0,0),
(1081,12069,5000,197,225,0,0),
(1081,12070,5000,197,225,0,0),
(1081,12072,6000,197,230,0,0),
(1081,12073,6000,197,230,0,0),
(1081,12074,6000,197,230,0,0),
(1081,12077,5000,197,235,0,0),
(1081,12079,6500,197,235,0,0),
(1081,12088,7500,197,245,0,0),
(1081,12092,7500,197,250,0,0),
(1081,12181,50000,197,200,35,0), -- 12180
(1081,18401,10000,197,250,0,0),
(1081,18402,10000,197,255,0,0),
(1081,18403,10000,197,255,0,0),
(1081,18406,10000,197,260,0,0),
(1081,18407,10000,197,260,0,0),
(1081,18409,10000,197,265,0,0),
(1081,18410,10000,197,265,0,0),
(1081,18411,10000,197,265,0,0),
(1081,18413,10000,197,270,0,0),
(1081,18414,10000,197,270,0,0),
(1081,18415,10000,197,270,0,0),
(1081,18416,12500,197,275,0,0),
(1081,18417,12500,197,275,0,0),
(1081,18420,12500,197,275,0,0),
(1081,18421,12500,197,275,0,0),
(1081,18423,15000,197,280,0,0),
(1081,18424,15000,197,280,0,0),
(1081,18437,15000,197,285,0,0),
(1081,18438,15000,197,285,0,0),
(1081,18441,15000,197,290,0,0),
(1081,18442,15000,197,290,0,0),
(1081,18444,15000,197,295,0,0),
(1081,18446,15000,197,300,0,0),
(1081,18449,15000,197,300,0,0),
(1081,18450,15000,197,300,0,0),
(1081,18451,15000,197,300,0,0),
(1081,18453,15000,197,300,0,0),
(1081,26745,20000,197,300,0,0),
(1081,26746,15000,197,315,0,0),
(1081,26764,15000,197,310,0,0),
(1081,26765,15000,197,310,0,0),
(1081,26770,20000,197,320,0,0),
(1081,26771,20000,197,325,0,0),
(1081,26772,20000,197,335,0,0), -- 20000
(1081,26791,100000,197,275,50,0), -- 26790
(1081,31460,20000,197,300,0,0);
-- (1081,60969,750000,197,340,0,0),
-- (1081,63742,750,197,125,0,0);

-- Master Shadoweave Tailor (teaching 5 spells)
-- DELETE FROM npc_trainer WHERE entry IN (4578,9584); -- not needed
-- UPDATE creature_template SET TrainerTemplateId = 1084 WHERE entry IN (4578,9584); -- not needed
DELETE FROM npc_trainer_template WHERE entry IN (1084);
INSERT INTO npc_trainer_template (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(1084,12052,1850,197,210,0,0),
(1084,12055,2000,197,215,0,0),
(1084,12071,2200,197,225,0,0),
(1084,12076,2600,197,235,0,0),
(1084,12082,2800,197,240,0,0);

-- Grand Master Tailoring Trainer -- Wotlk ONLY
-- DELETE FROM npc_trainer WHERE entry IN (26914,26964,26969,27001,28699,33580);
-- UPDATE creature_template SET TrainerTemplateId = 1086 WHERE entry IN (26914,26964,26969,27001,28699,33580);
DELETE FROM npc_trainer_template WHERE entry IN (1086); -- identical with 1081
INSERT INTO npc_trainer_template (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(1086,2385,50,197,10,0,0),
(1086,2386,200,197,65,0,0),
(1086,2392,50,197,40,0,0),
(1086,2393,25,197,1,0,0),
(1086,2394,50,197,40,0,0),
(1086,2395,300,197,70,0,0),
(1086,2396,200,197,70,0,0),
(1086,2397,200,197,60,0,0),
(1086,2399,300,197,85,0,0),
(1086,2401,300,197,95,0,0),
(1086,2402,250,197,75,0,0),
(1086,2406,200,197,100,0,0),
(1086,2964,100,197,75,0,0),
(1086,3755,100,197,45,0,0),
(1086,3757,200,197,80,0,0),
(1086,3813,800,197,150,0,0),
(1086,3839,500,197,125,0,0),
(1086,3840,100,197,35,0,0),
(1086,3841,200,197,60,0,0),
(1086,3842,300,197,70,0,0),
(1086,3843,400,197,85,0,0),
(1086,3845,300,197,80,0,0),
(1086,3848,500,197,110,0,0),
(1086,3850,500,197,110,0,0),
(1086,3852,750,197,130,0,0),
(1086,3855,750,197,125,0,0),
(1086,3859,750,197,150,0,0),
(1086,3861,1000,197,185,0,0),
(1086,3865,1000,197,175,0,0),
(1086,3866,250,197,110,0,0),
(1086,3871,500,197,170,0,0),
(1086,3911,10,0,0,5,0), -- 3908
(1086,3912,500,197,50,10,0), -- 3909
(1086,3913,5000,197,125,20,0), -- 3910
(1086,3914,50,197,30,0,0),
(1086,6521,400,197,90,0,0),
(1086,6690,1000,197,135,0,0),
(1086,7623,50,197,30,0,0),
(1086,7624,50,197,30,0,0), -- 49
(1086,8465,50,197,40,0,0), -- 49
(1086,8467,250,197,110,0,0),
(1086,8483,500,197,160,0,0),
(1086,8489,750,197,175,0,0),
(1086,8758,600,197,140,0,0),
(1086,8760,600,197,145,0,0),
(1086,8762,750,197,160,0,0),
(1086,8764,900,197,170,0,0),
(1086,8766,1000,197,175,0,0),
(1086,8770,1000,197,190,0,0),
(1086,8772,1000,197,175,0,0),
(1086,8774,1000,197,180,0,0),
(1086,8776,50,197,15,0,0),
(1086,8791,2500,197,185,0,0),
(1086,8799,3000,197,195,0,0),
(1086,8804,5000,197,210,0,0),
(1086,12045,50,197,20,0,0),
(1086,12046,300,197,75,0,0),
(1086,12048,4000,197,205,0,0),
(1086,12049,4000,197,205,0,0),
(1086,12050,4000,197,210,0,0),
(1086,12053,5000,197,215,0,0),
(1086,12061,2500,197,215,0,0),
(1086,12065,5000,197,225,0,0),
(1086,12067,5000,197,225,0,0),
(1086,12069,5000,197,225,0,0),
(1086,12070,5000,197,225,0,0),
(1086,12072,6000,197,230,0,0),
(1086,12073,6000,197,230,0,0),
(1086,12074,6000,197,230,0,0),
(1086,12077,5000,197,235,0,0),
(1086,12079,6500,197,235,0,0),
(1086,12088,7500,197,245,0,0),
(1086,12092,7500,197,250,0,0),
(1086,12181,50000,197,200,35,0), -- 12180
(1086,18401,10000,197,250,0,0),
(1086,18402,10000,197,255,0,0),
(1086,18403,10000,197,255,0,0),
(1086,18406,10000,197,260,0,0),
(1086,18407,10000,197,260,0,0),
(1086,18409,10000,197,265,0,0),
(1086,18410,10000,197,265,0,0),
(1086,18411,10000,197,265,0,0),
(1086,18413,10000,197,270,0,0),
(1086,18414,10000,197,270,0,0),
(1086,18415,10000,197,270,0,0),
(1086,18416,12500,197,275,0,0),
(1086,18417,12500,197,275,0,0),
(1086,18420,12500,197,275,0,0),
(1086,18421,12500,197,275,0,0),
(1086,18423,15000,197,280,0,0),
(1086,18424,15000,197,280,0,0),
(1086,18437,15000,197,285,0,0),
(1086,18438,15000,197,285,0,0),
(1086,18441,15000,197,290,0,0),
(1086,18442,15000,197,290,0,0),
(1086,18444,15000,197,295,0,0),
(1086,18446,15000,197,300,0,0),
(1086,18449,15000,197,300,0,0),
(1086,18450,15000,197,300,0,0),
(1086,18451,15000,197,300,0,0),
(1086,18453,15000,197,300,0,0),
(1086,26745,20000,197,300,0,0),
(1086,26746,15000,197,315,0,0),
(1086,26764,15000,197,310,0,0),
(1086,26765,15000,197,310,0,0),
(1086,26770,20000,197,320,0,0),
(1086,26771,20000,197,325,0,0),
(1086,26772,20000,197,335,0,0),
(1086,26791,100000,197,275,50,0), -- 26790
(1086,31460,20000,197,300,0,0);

