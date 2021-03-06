UPDATE `creature` SET `guid`=151035 WHERE `guid`=64994 AND `id`=18202;
UPDATE `creature` SET `guid`=151036 WHERE `guid`=64995 AND `id`=18202;
UPDATE `creature` SET `guid`=151037 WHERE `guid`=64996 AND `id`=18202;
UPDATE `creature` SET `guid`=151038 WHERE `guid`=64997 AND `id`=18203;
UPDATE `creature` SET `guid`=151039 WHERE `guid`=64998 AND `id`=18203;
UPDATE `creature` SET `guid`=151040 WHERE `guid`=64999 AND `id`=18203;
UPDATE `creature` SET `guid`=151041 WHERE `guid`=65000 AND `id`=18203;
UPDATE `creature` SET `guid`=151042 WHERE `guid`=65001 AND `id`=18203;
UPDATE `creature` SET `guid`=151043 WHERE `guid`=65002 AND `id`=18203;
UPDATE `creature` SET `guid`=151044 WHERE `guid`=65003 AND `id`=18203;

-- I set orientations to 0, because it's a nightmare to handle formations otherwise
DELETE FROM `creature` WHERE `id`=18205 AND (`guid` BETWEEN 64995 AND 65003);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
('65003', '18205', '530', '1', '0', '0', '-2742.54', '7690.18', '-16.677244', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('65002', '18205', '530', '1', '0', '0', '-2742.54', '7674.18', '-13.797708', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('65001', '18205', '530', '1', '0', '0', '-2750.54', '7682.18', '-15.378448', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('65000', '18205', '530', '1', '0', '0', '-2758.54', '7690.18', '-14.593490', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('64999', '18205', '530', '1', '0', '0', '-2758.54', '7674.18', '-13.769660', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('64998', '18205', '530', '1', '0', '0', '-2237.26', '7996.52', '-28.632681', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('64997', '18205', '530', '1', '0', '0', '-2237.26', '8020.52', '-32.244053', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('64996', '18205', '530', '1', '0', '0', '-2255.26', '8000.52', '-34.271194', '0', '300', '0', '0', '5715', '0', '0', '0'), -- Clefthoof
('64995', '18205', '530', '1', '0', '0', '-2255.26', '8016.52', '-34.562717', '0', '300', '0', '0', '5715', '0', '0', '0'); -- Clefthoof

-- Relocate and add 1 missing Clefthoof Calf spawn
UPDATE `creature` SET `guid`=151047 WHERE `guid`=68628 AND `id`=19183;
UPDATE `creature` SET `guid`=151048 WHERE `guid`=68629 AND `id`=19183;
UPDATE `creature` SET `guid`=151049 WHERE `guid`=68630 AND `id`=19183;
UPDATE `creature` SET `guid`=151050 WHERE `guid`=68631 AND `id`=19183;
UPDATE `creature` SET `guid`=151051 WHERE `guid`=68632 AND `id`=19183;

DELETE FROM `creature` WHERE `id`=19183 AND `guid`=151046;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
('151046', '19183', '530', '1', '0', '0', '-2245.26', '8009.52', '-33.153984', '0', '300', '0', '0', '5715', '0', '0', '0'); -- Calf

-- Pathing and Linking

-- ***************************
-- Pack 1
-- 1 Bull, 5 Clefthoof, 0 Calf
-- ***************************
UPDATE `creature` SET `position_x`=-2698.51,`position_y`=7802.92,`position_z`=-36.425102,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65056; -- Clefthoof
UPDATE `creature` SET `position_x`=-2698.51,`position_y`=7786.92,`position_z`=-34.114407,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65055; -- Clefthoof
UPDATE `creature` SET `position_x`=-2706.51,`position_y`=7794.92,`position_z`=-34.177650,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65057; -- Clefthoof
UPDATE `creature` SET `position_x`=-2714.51,`position_y`=7802.92,`position_z`=-34.844006,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65052; -- Clefthoof
UPDATE `creature` SET `position_x`=-2714.51,`position_y`=7786.92,`position_z`=-32.872513,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65051; -- Clefthoof
-- 18      8
-- 18     -8
-- 26      0
-- 34      8
-- 34     -8
DELETE FROM `creature_linking` WHERE `master_guid`=59987;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(65056,59987,1536),
(65055,59987,1536),
(65057,59987,1536),
(65052,59987,1536),
(65051,59987,1536);

-- Pathing for  Entry: 17132 'UDB FORMAT' 
SET @GUID := 59987;
SET @POINT := 0;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`orientation`=0 WHERE `guid`=@GUID; 
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,@POINT := @POINT + '1',-2649.058,7819.751,-42.16552,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2625.69,7845.158,-45.1545,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2604.82,7867.244,-50.159,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2582.719,7885.581,-54.62816,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2567.891,7885.896,-53.94903,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2523.687,7879.201,-51.91026,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2513.863,7839.92,-48.37919,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2525.054,7828.949,-45.29484,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2543.11,7815.13,-44.15993,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2558.591,7794.416,-41.86953,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2569.043,7777,-39.92451,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2578.232,7763.182,-37.44819,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2585.56,7746.999,-33.98311,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2590.046,7732.152,-30.76868,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2597.008,7717.748,-28.50545,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2610.855,7704.224,-25.33329,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2637.715,7689.391,-23.94638,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2648.707,7685.59,-20.62652,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2665.613,7681.574,-18.39218,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2686.677,7679.188,-18.69512,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2710.835,7676.221,-14.20121,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2733.511,7672.114,-12.80436,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2744.733,7669.799,-12.1274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2760.551,7666.779,-12.13447,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2776.92,7683.984,-10.61778,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2779.63,7703.997,-12.72672,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2765.256,7734.458,-20.69319,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2755.092,7744.958,-22.13419,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2723.601,7766.869,-30.32949,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2695.65,7783.267,-33.61748,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,@POINT := @POINT + '1',-2679.206,7796.113,-39.4891,0,0,0,0,0,0,0,0,0,0,0,0);

-- ***************************
-- Pack 2
-- 1 Bull, 4 Clefthoof, 2 Calf
-- ***************************
UPDATE `creature` SET `position_x`=-2762.54,`position_y`=7760.91,`position_z`=-23.338301,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65049; -- Clefthoof
UPDATE `creature` SET `position_x`=-2762.54,`position_y`=7784.91,`position_z`=-27.259602,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65050; -- Clefthoof
UPDATE `creature` SET `position_x`=-2780.54,`position_y`=7764.91,`position_z`=-21.484152,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65048; -- Clefthoof
UPDATE `creature` SET `position_x`=-2780.54,`position_y`=7780.91,`position_z`=-22.000635,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65054; -- Clefthoof
UPDATE `creature` SET `position_x`=-2776.54,`position_y`=7771.91,`position_z`=-23.041786,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=151050; -- Calf
UPDATE `creature` SET `position_x`=-2770.54,`position_y`=7773.91,`position_z`=-24.315739,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=151048; -- Calf

DELETE FROM `creature_linking` WHERE `master_guid`=59986;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(65049,59986,1536),
(65050,59986,1536),
(65048,59986,1536),
(65054,59986,1536),
(151050,59986,1536),
(151048,59986,1536);

-- Pathing for  Entry: 17132 'UDB FORMAT' 
SET @GUID := 59986;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`orientation`=0 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-2749.328,7855.484,-34.06189,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-2728.664,7860.593,-39.103,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-2711.897,7862.271,-42.26756,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-2695.868,7863.63,-43.16758,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-2673.683,7868.456,-45.53575,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-2650.029,7872.975,-48.53274,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-2625.483,7876.098,-49.58039,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-2602.635,7879.193,-52.35776,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-2596.499,7880.02,-53.19814,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-2577.097,7879.104,-53.44668,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-2523.105,7878.628,-51.8253,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-2503.91,7877.2,-51.24072,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-2475.22,7874.914,-49.30717,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-2453.79,7845.399,-44.59027,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,15,-2449.699,7830.946,-41.18454,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,16,-2462.256,7814.089,-40.9869,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,17,-2487.967,7801.904,-40.27177,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,18,-2532.932,7801.175,-41.0661,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,19,-2546.34,7801.104,-42.39443,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,20,-2568.648,7801.215,-42.28034,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,21,-2629.898,7795.53,-39.8434,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,22,-2658.01,7793.965,-40.11377,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,23,-2681.57,7788.672,-37.4698,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,24,-2706.089,7778.329,-31.97561,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,25,-2735.795,7773.435,-29.87989,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,26,-2756.661,7773.131,-25.51587,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,27,-2773.296,7777.635,-24.23773,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,28,-2788.555,7791.825,-19.11279,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,29,-2793.622,7804.069,-20.21746,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,30,-2782.241,7841.168,-28.69229,0,0,0,0,0,0,0,0,0,0,0,0);

-- ***************************
-- Pack 3
-- 1 Bull, 5 Clefthoof, 0 Calf
-- ***************************
-- 18      8
-- 18     -8
-- 26      0
-- 34      8
-- 34     -8

DELETE FROM `creature_linking` WHERE `master_guid`=59983;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(65003,59983,1536),
(65002,59983,1536),
(65001,59983,1536),
(65000,59983,1536),
(64999,59983,1536);

-- Pathing for  Entry: 17132 'UDB FORMAT' 
SET @GUID := 59983;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`orientation`=0 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-2694.656,7679.033,-18.07502,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-2656.974,7670.048,-15.47376,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-2652.402,7668.645,-15.52887,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-2610.103,7654.216,-14.01661,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-2591.153,7645.637,-12.02162,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-2561.323,7643.456,-12.74269,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-2539.129,7661.876,-17.8188,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-2532.55,7689.64,-21.56883,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-2552.986,7730.301,-31.19198,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-2575.109,7746.987,-34.45193,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-2600.145,7759.794,-34.74297,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-2631.829,7764.492,-35.17498,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-2655.625,7767.865,-36.75452,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-2674.65,7765.183,-34.21177,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,15,-2701.452,7765.449,-30.58504,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,16,-2717.85,7769.892,-31.09562,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,17,-2756.941,7778.824,-26.23858,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,18,-2778.562,7780.571,-22.80194,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,19,-2789.014,7771.145,-18.52184,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,20,-2799.009,7751.888,-14.10312,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,21,-2799.733,7749.706,-14.27131,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,22,-2780.255,7692.592,-10.98975,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,23,-2764.832,7687.478,-12.73743,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,24,-2738.414,7683.993,-15.75019,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,25,-2708.645,7682.698,-16.07082,0,0,0,0,0,0,0,0,0,0,0,0);
-- 0x203AF4424010BB0000004E000722A885 .go -2694.656 7679.033 -18.07502

-- ***************************
-- Pack 4
-- 1 Bull, 4 Clefthoof, 2 Calf
-- ***************************
UPDATE `creature` SET `position_x`=-2224.84,`position_y`=7643.56,`position_z`=-16.184685,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65058; -- Clefthoof
UPDATE `creature` SET `position_x`=-2224.84,`position_y`=7667.56,`position_z`=-14.762169,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65059; -- Clefthoof
UPDATE `creature` SET `position_x`=-2242.84,`position_y`=7647.56,`position_z`=-13.764086,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65060; -- Clefthoof
UPDATE `creature` SET `position_x`=-2242.84,`position_y`=7663.56,`position_z`=-11.639965,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=65053; -- Clefthoof
UPDATE `creature` SET `position_x`=-2238.84,`position_y`=7654.56,`position_z`=-13.862029,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=151051; -- Calf
UPDATE `creature` SET `position_x`=-2232.84,`position_y`=7655.56,`position_z`=-14.889411,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=151049; -- Calf
-- 11       -12
-- 11        12
-- 29       -8
-- 29        8
-- 25       -1
-- 19        1
DELETE FROM `creature_linking` WHERE `master_guid`=59989;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(65058,59989,1536),
(65059,59989,1536),
(65060,59989,1536),
(65053,59989,1536),
(151051,59989,1536),
(151049,59989,1536);

-- Pathing for  Entry: 17132 'UDB FORMAT' 
SET @GUID := 59989;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`orientation`=0 WHERE `guid`=@GUID; 
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`textid1`,`textid2`,`textid3`,`textid4`,`textid5`,`emote`,`spell`,`orientation`,`model1`,`model2`) VALUES
(@GUID,1,-2212.798,7642.844,-18.30746,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,2,-2227.222,7624.214,-15.17053,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,3,-2280.136,7612.526,-9.260273,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,4,-2304.362,7615.188,-4.701969,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,5,-2344.053,7630.318,-4.197508,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,6,-2372.733,7664.014,-6.959114,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,7,-2394.948,7683.438,-11.36308,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,8,-2419.933,7707.627,-15.30166,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,9,-2447.639,7730.747,-20.63128,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,10,-2489.186,7730.752,-27.74808,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,11,-2521.405,7717.604,-25.86868,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,12,-2544.926,7722.098,-28.68562,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,13,-2566.218,7725.047,-30.99588,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,14,-2604.167,7725.69,-28.86899,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,15,-2631.105,7723.376,-30.03154,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,16,-2670.957,7717.24,-27.27287,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,17,-2702.072,7721.095,-25.46005,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,18,-2726.141,7728.657,-23.23393,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,19,-2739.961,7733.432,-22.1667,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,20,-2782.29,7739.2,-17.89948,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,21,-2794.905,7723.167,-13.05616,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,22,-2796.92,7698.82,-10.37669,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,23,-2731.029,7695.752,-16.89625,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,24,-2710.537,7694.048,-18.32459,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,25,-2683.458,7693.71,-22.34031,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,26,-2680.466,7693.592,-22.78121,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,27,-2637.307,7663.331,-14.99821,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,28,-2627.46,7652.215,-12.57934,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,29,-2609.165,7637.314,-10.93683,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,30,-2595.587,7628.897,-9.749682,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,31,-2573.082,7614.742,-7.182268,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,32,-2565.584,7610.026,-6.558776,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,33,-2531.74,7601.503,-3.30106,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,34,-2512.573,7605.456,-4.437243,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,35,-2488.788,7616.915,-3.758238,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,36,-2467.339,7638.91,-4.340944,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,37,-2453.296,7659.895,-6.978621,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,38,-2418.779,7678.434,-9.857171,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,39,-2397.988,7688.753,-12.80805,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,40,-2373.26,7707.588,-18.84068,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,41,-2358.61,7708.731,-20.29558,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,42,-2338.563,7708.34,-19.30795,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,43,-2327.801,7707.166,-18.06245,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,44,-2298.427,7708.467,-19.59582,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,45,-2283.09,7716.009,-21.19913,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,46,-2249.317,7722.6,-19.36967,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,47,-2238.224,7718.114,-16.09093,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,48,-2222.575,7695.965,-13.21361,0,0,0,0,0,0,0,0,0,0,0,0),
(@GUID,49,-2214.83,7669.182,-16.78953,0,0,0,0,0,0,0,0,0,0,0,0);
-- 0x203AF4424010BB0000004E0000247BAB .go -2212.798 7642.844 -18.30746

-- ***************************
-- Banthar
-- ***************************
-- Already had his path, just needs his follower pack
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`orientation`=0 WHERE `guid`=65529; 

-- 1 Banthar, 4 Clefthoof, 2 Calf
UPDATE `creature` SET `position_x`=-2251.26,`position_y`=8007.52,`position_z`=-33.884232,`orientation`=0,`spawndist`=0,`MovementType`=0 WHERE `guid`=151047; -- Calf
-- 11       -12
-- 11        12
-- 29       -8
-- 29        8
-- 25       -1
-- 19        1

DELETE FROM `creature_linking` WHERE `master_guid`=65529;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(64998,65529,1536),
(64997,65529,1536),
(64996,65529,1536),
(64995,65529,1536),
(151047,65529,1536),
(151046,65529,1536);
