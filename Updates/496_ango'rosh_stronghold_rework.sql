-- ---------------------------
-- Templates
-- ---------------------------
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(8/7) WHERE entry IN(20444,18121,18121);

-- ---------------------------
-- Spawns
-- ---------------------------
DELETE FROM creature WHERE id IN(18121,18120,20444);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Ango'rosh Shadowmage
(151905,20444,530,1,0,0,1666.691,8472.706,-58.50379,4.999947,300,300,3,0,4422,2620,0,1), -- Not Pooled
(151906,20444,530,1,0,0,1647.51,8506.494,-53.5848,5.214083,300,300,3,0,4422,2620,0,1), -- Not Pooled
(151907,20444,530,1,0,0,1709.144,8555.455,-45.73468,2.583087,300,300,3,0,4422,2620,0,1), -- Not Pooled
(151908,20444,530,1,0,0,1641.869,8460.966,-55.90679,0.7504916,300,300,0,0,4422,2620,0,0), -- Not Pooled
(151909,20444,530,1,0,0,1668.819,8576.738,-44.46692,4.016996,300,300,3,0,4422,2620,0,1), -- Not Pooled
(151910,20444,530,1,0,0,1667.708,8538.2,-49.89153,1.379532,300,300,3,0,4422,2620,0,1), -- Not Pooled
-- Ango'rosh Souleater
(151911,18121,530,1,0,0,1863.461,8429.606,-13.27356,2.797047,300,300,5,0,4422,2620,0,1), -- Pool 408
(151912,18121,530,1,0,0,1768.455,8566,-3.706832,3.656317,300,300,5,0,4422,2620,0,1), -- Pool 409
(151913,18121,530,1,0,0,1786.51,8449.509,-12.45547,1.200093,300,300,5,0,4422,2620,0,1), -- Pool 410
(151914,18121,530,1,0,0,1794.846,8505.497,-15.02415,4.050152,300,300,5,0,4422,2620,0,1), -- Pool 411
(151915,18121,530,1,0,0,1819.756,8422.95,-11.99755,4.454559,300,300,5,0,4422,2620,0,1), -- Pool 412
(151916,18121,530,1,0,0,1708.101,8631.746,10.62316,6.025427,300,300,5,0,4422,2620,0,1), -- Pool 413
(151917,18121,530,1,0,0,1602.422,8588.994,-30.91898,0.4657488,300,300,5,0,4422,2620,0,1), -- Pool 414
(151918,18121,530,1,0,0,1682.321,8443.496,-20.3154,3.652895,300,300,5,0,4422,2620,0,1), -- Pool 415
(151919,18121,530,1,0,0,1665.304,8595.31,10.66364,5.655083,300,300,5,0,4422,2620,0,1), -- Pool 416
(151920,18121,530,1,0,0,1596.089,8608.242,-32.87425,3.600213,300,300,0,0,4422,2620,0,2), -- Not Pooled, Pat 2
(151921,18121,530,1,0,0,1715.039,8481.7,-4.553346,3.01942,300,300,0,0,4422,2620,0,0), -- Pool 417
(151922,18121,530,1,0,0,1792.096,8613.085,-2.273724,5.014721,300,300,5,0,4422,2620,0,1), -- Pool 418
(151923,18121,530,1,0,0,1823.884,8482.911,-12.76176,4.887054,300,300,5,0,4422,2620,0,1), -- Pool 419
(151924,18121,530,1,0,0,1818.215,8548.067,-16.00315,1.53678,300,300,5,0,4422,2620,0,1), -- Pool 420
(151925,18121,530,1,0,0,1701.707,8476.47,-6.145284,2.561962,300,300,0,0,4422,2620,0,2), -- Pool 421, Pat 5
(151926,18121,530,1,0,0,1749.546,8638.385,7.363074,2.773718,300,300,5,0,4422,2620,0,1), -- Pool 422
(151927,18121,530,1,0,0,1658.215,8632.497,11.30147,3.306412,300,300,5,0,4422,2620,0,1), -- Pool 423
(151928,18121,530,1,0,0,1753.026,8483.39,-14.80944,2.109048,300,300,5,0,4422,2620,0,1), -- Pool 424
(151929,18121,530,1,0,0,1648.574,8585.886,8.309514,0.8550006,300,300,0,0,4422,2620,0,2), -- Pool 425, Pat 6
(151930,18121,530,1,0,0,1617.896,8513.907,-5.773952,5.675376,300,300,5,0,4422,2620,0,1), -- Pool 426
(151931,18121,530,1,0,0,1756.485,8422.815,-12.79272,5.534341,300,300,5,0,4422,2620,0,1), -- Pool 427
(151932,18121,530,1,0,0,1708.923,8468.693,-5.878263,2.338741,300,300,0,0,4422,2620,0,0), -- Not Pooled
(151933,18121,530,1,0,0,1709.723,8410.544,-23.60077,1.662653,300,300,5,0,4422,2620,0,1), -- Pool 428
(151934,18121,530,1,0,0,1641.139,8538.447,4.761725,1.2014,300,300,5,0,4422,2620,0,1), -- Pool 429
(151935,18121,530,1,0,0,1646.943,8484.375,-10.01903,4.263859,300,300,5,0,4422,2620,0,1), -- Pool 430
-- Ango'rosh Mauler
(151936,18120,530,1,0,0,1709.723,8410.544,-23.60077,3.57603,300,300,5,0,5527,0,0,1), -- Pool 428
(151937,18120,530,1,0,0,1756.485,8422.815,-12.79272,6.182742,300,300,5,0,5527,0,0,1), -- Pool 427
(151938,18120,530,1,0,0,1823.884,8482.911,-12.76176,5.953075,300,300,5,0,5527,0,0,1), -- Pool 419
(151939,18120,530,1,0,0,1794.846,8505.497,-15.02415,3.959562,300,300,5,0,5527,0,0,1), -- Pool 411
(151940,18120,530,1,0,0,1818.215,8548.067,-16.00315,2.30606,300,300,5,0,5527,0,0,1), -- Pool 420
(151941,18120,530,1,0,0,1646.943,8484.375,-10.01903,0.7717146,300,300,5,0,5527,0,0,1), -- Pool 430
(151942,18120,530,1,0,0,1699.818,8539.679,-47.93219,3.172683,300,300,0,0,5527,0,0,2), -- Not Pooled, Pat 4
(151943,18120,530,1,0,0,1658.215,8632.497,11.30147,4.809118,300,300,5,0,5527,0,0,1), -- Pool 423
(151944,18120,530,1,0,0,1792.096,8613.085,-2.273724,4.999464,300,300,5,0,5527,0,0,1), -- Pool 418
(151945,18120,530,1,0,0,1768.455,8566,-3.706832,4.266097,300,300,5,0,5527,0,0,1), -- Pool 409
(151946,18120,530,1,0,0,1749.546,8638.385,7.363074,2.063121,300,300,5,0,5527,0,0,1), -- Pool 422
(151947,18120,530,1,0,0,1708.101,8631.746,10.62316,5.040704,300,300,5,0,5527,0,0,1), -- Pool 413
(151948,18120,530,1,0,0,1623.599,8606.832,-25.41986,0.4248646,300,300,0,0,5527,0,0,2), -- Not Pooled, Pat 3
(151949,18120,530,1,0,0,1484.301,8625.396,-22.35576,3.403392,300,300,0,0,5527,0,0,0), -- Not Pooled
(151950,18120,530,1,0,0,1483.268,8607.938,-21.24155,2.75762,300,300,0,0,5527,0,0,0), -- Not Pooled
(151951,18120,530,1,0,0,1648.574,8585.886,8.309514,0.8550006,300,300,0,0,5527,0,0,2), -- Pool 425, Pat 6
(151952,18120,530,1,0,0,1863.461,8429.606,-13.27356,4.662479,300,300,5,0,5527,0,0,1), -- Pool 408
(151953,18120,530,1,0,0,1786.51,8449.509,-12.45547,2.887873,300,300,5,0,5527,0,0,1), -- Pool 410
(151954,18120,530,1,0,0,1641.139,8538.447,4.761725,1.950963,300,300,5,0,5527,0,0,1), -- Pool 429
(151955,18120,530,1,0,0,1665.304,8595.31,10.66364,1.929922,300,300,5,0,5527,0,0,1), -- Pool 416
(151956,18120,530,1,0,0,1482.351,8615.929,-22.9888,3.202191,300,300,0,0,5527,0,0,2), -- Not Pooled, Pat 1
(151957,18120,530,1,0,0,1819.756,8422.95,-11.99755,3.737135,300,300,5,0,5527,0,0,1), -- Pool 412
(151958,18120,530,1,0,0,1715.039,8481.7,-4.553346,3.01942,300,300,0,0,5527,0,0,0), -- Pool 417
(151959,18120,530,1,0,0,1667.212,8525.352,0.6694573,4.572762,300,300,0,0,5527,0,0,0), -- Not Pooled
(151960,18120,530,1,0,0,1602.422,8588.994,-30.91898,0.4613827,300,300,5,0,5527,0,0,1), -- Pool 414
(151961,18120,530,1,0,0,1677.199,8525.006,-0.2606997,4.747295,300,300,0,0,5527,0,0,0), -- Not Pooled
(151962,18120,530,1,0,0,1753.026,8483.39,-14.80944,2.641144,300,300,5,0,5527,0,0,1), -- Pool 424
(151963,18120,530,1,0,0,1682.321,8443.496,-20.3154,6.128314,300,300,5,0,5527,0,0,1), -- Pool 415
(151964,18120,530,1,0,0,1617.896,8513.907,-5.773952,4.822847,300,300,5,0,5527,0,0,1), -- Pool 426
(151965,18120,530,1,0,0,1701.707,8476.47,-6.145284,2.561962,300,300,0,0,5527,0,0,2), -- Pool 421, Pat 5
(151966,18120,530,1,0,0,1692.694,8474.782,-6.991099,2.094395,300,300,0,0,5527,0,0,0); -- Not Pooled

-- One missing Greater Sporebat positioned on the floating rock next to Ango'rosh Stronghold
DELETE FROM creature WHERE guid=151967 AND id=18129;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(151967,18129,530,1,0,0,1908.838,8472.751,-2.826435,3.89315,300,300,5,0,5341,0,0,1);

-- ---------------------------
-- Pools
-- ---------------------------

DELETE FROM pool_template WHERE entry BETWEEN 408 AND 430;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(408,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 1'),
(409,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 2'),
(410,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 3'),
(411,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 4'),
(412,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 5'),
(413,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 6'),
(414,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 7'),
(415,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 8'),
(416,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 9'),
(417,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 10'),
(418,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 11'),
(419,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 12'),
(420,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 13'),
(421,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 14'),
(422,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 15'),
(423,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 16'),
(424,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 17'),
(425,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 18'),
(426,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 19'),
(427,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 20'),
(428,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 21'),
(429,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 22'),
(430,1,'Ango''rosh Stronghold - Ango''rosh Mauler/Souleater 23');

DELETE FROM pool_creature WHERE pool_entry BETWEEN 408 AND 430;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(151911,408,50,'Ango''rosh Stronghold - Ango''rosh Souleater 1'),
(151952,408,50,'Ango''rosh Stronghold - Ango''rosh Mauler 1'),

(151912,409,50,'Ango''rosh Stronghold - Ango''rosh Souleater 2'),
(151945,409,50,'Ango''rosh Stronghold - Ango''rosh Mauler 2'),

(151913,410,50,'Ango''rosh Stronghold - Ango''rosh Souleater 3'),
(151953,410,50,'Ango''rosh Stronghold - Ango''rosh Mauler 3'),

(151914,411,50,'Ango''rosh Stronghold - Ango''rosh Souleater 4'),
(151939,411,50,'Ango''rosh Stronghold - Ango''rosh Mauler 4'),

(151915,412,50,'Ango''rosh Stronghold - Ango''rosh Souleater 5'),
(151957,412,50,'Ango''rosh Stronghold - Ango''rosh Mauler 5'),

(151916,413,50,'Ango''rosh Stronghold - Ango''rosh Souleater 6'),
(151947,413,50,'Ango''rosh Stronghold - Ango''rosh Mauler 6'),

(151917,414,50,'Ango''rosh Stronghold - Ango''rosh Souleater 7'),
(151960,414,50,'Ango''rosh Stronghold - Ango''rosh Mauler 7'),

(151918,415,50,'Ango''rosh Stronghold - Ango''rosh Souleater 8'),
(151963,415,50,'Ango''rosh Stronghold - Ango''rosh Mauler 8'),

(151919,416,50,'Ango''rosh Stronghold - Ango''rosh Souleater 9'),
(151955,416,50,'Ango''rosh Stronghold - Ango''rosh Mauler 9'),

(151921,417,50,'Ango''rosh Stronghold - Ango''rosh Souleater 10'),
(151958,417,50,'Ango''rosh Stronghold - Ango''rosh Mauler 10'),

(151922,418,50,'Ango''rosh Stronghold - Ango''rosh Souleater 11'),
(151944,418,50,'Ango''rosh Stronghold - Ango''rosh Mauler 11'),

(151923,419,50,'Ango''rosh Stronghold - Ango''rosh Souleater 12'),
(151938,419,50,'Ango''rosh Stronghold - Ango''rosh Mauler 12'),

(151924,420,50,'Ango''rosh Stronghold - Ango''rosh Souleater 13'),
(151940,420,50,'Ango''rosh Stronghold - Ango''rosh Mauler 13'),

(151925,421,50,'Ango''rosh Stronghold - Ango''rosh Souleater 14'),
(151965,421,50,'Ango''rosh Stronghold - Ango''rosh Mauler 14'),

(151926,422,50,'Ango''rosh Stronghold - Ango''rosh Souleater 15'),
(151946,422,50,'Ango''rosh Stronghold - Ango''rosh Mauler 15'),

(151927,423,50,'Ango''rosh Stronghold - Ango''rosh Souleater 16'),
(151943,423,50,'Ango''rosh Stronghold - Ango''rosh Mauler 16'),

(151928,424,50,'Ango''rosh Stronghold - Ango''rosh Souleater 17'),
(151962,424,50,'Ango''rosh Stronghold - Ango''rosh Mauler 17'),

(151929,425,50,'Ango''rosh Stronghold - Ango''rosh Souleater 18'),
(151951,425,50,'Ango''rosh Stronghold - Ango''rosh Mauler 18'),

(151930,426,50,'Ango''rosh Stronghold - Ango''rosh Souleater 19'),
(151964,426,50,'Ango''rosh Stronghold - Ango''rosh Mauler 19'),

(151931,427,50,'Ango''rosh Stronghold - Ango''rosh Souleater 20'),
(151937,427,50,'Ango''rosh Stronghold - Ango''rosh Mauler 20'),

(151933,428,50,'Ango''rosh Stronghold - Ango''rosh Souleater 21'),
(151936,428,50,'Ango''rosh Stronghold - Ango''rosh Mauler 21'),

(151934,429,50,'Ango''rosh Stronghold - Ango''rosh Souleater 22'),
(151954,429,50,'Ango''rosh Stronghold - Ango''rosh Mauler 22'),

(151935,430,50,'Ango''rosh Stronghold - Ango''rosh Souleater 23'),
(151941,430,50,'Ango''rosh Stronghold - Ango''rosh Mauler 23');

-- ---------------------------
-- Waypoints
-- ---------------------------

-- Pat 1
DELETE FROM `creature_movement` WHERE `id`=151956;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151956,1,1461.683,8614.68,-12.70679,0,0,0),
(151956,2,1441.522,8607.562,-2.717291,0,0,0),
(151956,3,1424.441,8607.313,3.257421,0,0,0),
(151956,4,1409.568,8618.852,5.867712,0,0,0),
(151956,5,1394.517,8623.379,9.483105,0,0,0),
(151956,6,1367.01,8619.995,14.69728,0,0,0),
(151956,7,1348.54,8608.503,18.98279,0,0,0),
(151956,8,1330.298,8594.458,20.70809,0,0,0),
(151956,9,1312.62,8590.247,19.89278,0,0,0),
(151956,10,1271.029,8590.587,19.02531,0,0,0),
(151956,11,1312.62,8590.247,19.89278,0,0,0),
(151956,12,1330.298,8594.458,20.70809,0,0,0),
(151956,13,1348.514,8608.496,18.99512,0,0,0),
(151956,14,1367.01,8619.995,14.69728,0,0,0),
(151956,15,1394.517,8623.379,9.483105,0,0,0),
(151956,16,1409.568,8618.852,5.867712,0,0,0),
(151956,17,1424.441,8607.313,3.257421,0,0,0),
(151956,18,1441.44,8607.563,-2.581793,0,0,0),
(151956,19,1461.23,8614.597,-12.20679,0,0,0),
(151956,20,1484.593,8616.813,-23.64642,0,0,0);

-- Pat 2
DELETE FROM `creature_movement` WHERE `id`=151920;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151920,1,1549.829,8613.372,-33.60997,0,0,0),
(151920,2,1502.414,8615.582,-27.79394,0,0,0),
(151920,3,1483.504,8615.958,-23.3291,0,0,0),
(151920,4,1502.414,8615.582,-27.79394,0,0,0),
(151920,5,1502.414,8615.582,-27.79394,0,0,0),
(151920,6,1549.829,8613.372,-33.60997,0,0,0),
(151920,7,1595.268,8608.182,-32.85706,0,0,0);

-- Pat 3
DELETE FROM `creature_movement` WHERE `id`=151948;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151948,1,1630.667,8610.061,-27.07753,0,0,0),
(151948,2,1636.367,8611.652,-28.45675,0,0,0),
(151948,3,1643.823,8612.983,-31.12523,0,0,0),
(151948,4,1653.174,8612.425,-33.30414,0,0,0),
(151948,5,1659.041,8606.214,-35.02042,0,0,0),
(151948,6,1663.339,8595.787,-39.44561,0,0,0),
(151948,7,1668.673,8580.869,-43.56666,0,0,0),
(151948,8,1672.773,8571.901,-45.45685,0,0,0),
(151948,9,1683.156,8565.985,-47.1842,0,0,0),
(151948,10,1706.897,8560.648,-45.62053,0,0,0),
(151948,11,1683.156,8565.985,-47.1842,0,0,0),
(151948,12,1672.773,8571.901,-45.45685,0,0,0),
(151948,13,1668.673,8580.869,-43.56666,0,0,0),
(151948,14,1663.339,8595.787,-39.44561,0,0,0),
(151948,15,1659.041,8606.214,-35.02042,0,0,0),
(151948,16,1653.174,8612.425,-33.30414,0,0,0),
(151948,17,1643.826,8612.983,-31.12594,0,0,0),
(151948,18,1636.367,8611.652,-28.45675,0,0,0),
(151948,19,1631.083,8610.185,-27.22039,0,0,0),
(151948,20,1624.009,8607.951,-25.66858,0,0,0);

-- Pat 4
DELETE FROM `creature_movement` WHERE `id`=151942;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151942,1,1687.687,8539.301,-49.16026,0,0,0),
(151942,2,1673.364,8538.981,-49.88889,0,0,0),
(151942,3,1664.266,8535.215,-51.21607,0,0,0),
(151942,4,1654.654,8521.531,-53.58354,0,0,0),
(151942,5,1649.625,8510.094,-54.18151,0,0,0),
(151942,6,1648.938,8498.171,-53.77597,0,0,0),
(151942,7,1656.672,8485.056,-55.70976,0,0,0),
(151942,8,1668.375,8473.033,-58.77278,0,0,0),
(151942,9,1682.668,8469.868,-61.03943,0,0,0),
(151942,10,1693.718,8469.74,-60.26743,0,0,0),
(151942,11,1702.251,8470.647,-59.44333,0,0,0),
(151942,12,1715.028,8473.496,-57.53704,0,0,0),
(151942,13,1702.251,8470.647,-59.44333,0,0,0),
(151942,14,1693.747,8469.74,-60.29449,0,0,0),
(151942,15,1682.668,8469.868,-61.03943,0,0,0),
(151942,16,1668.375,8473.033,-58.77278,0,0,0),
(151942,17,1656.672,8485.056,-55.70976,0,0,0),
(151942,18,1648.938,8498.171,-53.77597,0,0,0),
(151942,19,1649.625,8510.094,-54.18151,0,0,0),
(151942,20,1654.654,8521.531,-53.58354,0,0,0),
(151942,21,1664.266,8535.215,-51.21607,0,0,0),
(151942,22,1673.347,8538.975,-49.87442,0,0,0),
(151942,23,1687.687,8539.301,-49.16026,0,0,0),
(151942,24,1698.444,8539.608,-48.22756,0,0,0);

-- Pat 5.1
DELETE FROM `creature_movement` WHERE `id`=151925;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151925,1,1689.134,8484.7,-7.435247,0,0,0),
(151925,2,1677.826,8494.035,-8.564032,0,0,0),
(151925,3,1672.206,8501.249,-7.81,0,0,0),
(151925,4,1665.907,8502.825,-6.924901,0,0,0),
(151925,5,1654.69,8501.367,-6.633519,0,0,0),
(151925,6,1644.64,8504.219,-7.020604,0,0,0),
(151925,7,1631.158,8510.858,-6.801638,0,0,0),
(151925,8,1622.581,8518.366,-5.849367,0,0,0),
(151925,9,1615.581,8524.725,-6.334841,0,0,0),
(151925,10,1611.307,8535.476,-8.693747,0,0,0),
(151925,11,1609.289,8548.758,-14.15615,0,0,0),
(151925,12,1608.688,8551.909,-15.61611,0,0,0),
(151925,13,1606.189,8568.754,-21.79966,0,0,0),
(151925,14,1608.48,8584.462,-29.34727,0,0,0),
(151925,15,1606.189,8568.754,-21.79966,0,0,0),
(151925,16,1608.679,8551.937,-15.42959,0,0,0),
(151925,17,1609.289,8548.758,-14.15615,0,0,0),
(151925,18,1611.307,8535.476,-8.693747,0,0,0),
(151925,19,1615.581,8524.725,-6.334841,0,0,0),
(151925,20,1622.581,8518.366,-5.849367,0,0,0),
(151925,21,1631.158,8510.858,-6.801638,0,0,0),
(151925,22,1644.64,8504.219,-7.020604,0,0,0),
(151925,23,1654.69,8501.367,-6.633519,0,0,0),
(151925,24,1665.907,8502.825,-6.924901,0,0,0),
(151925,25,1672.206,8501.249,-7.81,0,0,0),
(151925,26,1677.826,8494.035,-8.564032,0,0,0),
(151925,27,1689.134,8484.7,-7.435247,0,0,0),
(151925,28,1700.158,8477,-6.369071,0,0,0);
-- Pat 5.2
DELETE FROM `creature_movement` WHERE `id`=151965;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151965,1,1689.134,8484.7,-7.435247,0,0,0),
(151965,2,1677.826,8494.035,-8.564032,0,0,0),
(151965,3,1672.206,8501.249,-7.81,0,0,0),
(151965,4,1665.907,8502.825,-6.924901,0,0,0),
(151965,5,1654.69,8501.367,-6.633519,0,0,0),
(151965,6,1644.64,8504.219,-7.020604,0,0,0),
(151965,7,1631.158,8510.858,-6.801638,0,0,0),
(151965,8,1622.581,8518.366,-5.849367,0,0,0),
(151965,9,1615.581,8524.725,-6.334841,0,0,0),
(151965,10,1611.307,8535.476,-8.693747,0,0,0),
(151965,11,1609.289,8548.758,-14.15615,0,0,0),
(151965,12,1608.688,8551.909,-15.61611,0,0,0),
(151965,13,1606.189,8568.754,-21.79966,0,0,0),
(151965,14,1608.48,8584.462,-29.34727,0,0,0),
(151965,15,1606.189,8568.754,-21.79966,0,0,0),
(151965,16,1608.679,8551.937,-15.42959,0,0,0),
(151965,17,1609.289,8548.758,-14.15615,0,0,0),
(151965,18,1611.307,8535.476,-8.693747,0,0,0),
(151965,19,1615.581,8524.725,-6.334841,0,0,0),
(151965,20,1622.581,8518.366,-5.849367,0,0,0),
(151965,21,1631.158,8510.858,-6.801638,0,0,0),
(151965,22,1644.64,8504.219,-7.020604,0,0,0),
(151965,23,1654.69,8501.367,-6.633519,0,0,0),
(151965,24,1665.907,8502.825,-6.924901,0,0,0),
(151965,25,1672.206,8501.249,-7.81,0,0,0),
(151965,26,1677.826,8494.035,-8.564032,0,0,0),
(151965,27,1689.134,8484.7,-7.435247,0,0,0),
(151965,28,1700.158,8477,-6.369071,0,0,0);

-- Pat 6.1
DELETE FROM `creature_movement` WHERE `id`=151929;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151929,1,1655.826,8594.225,8.950456,0,0,0),
(151929,2,1664.974,8601.517,10.78405,0,0,0),
(151929,3,1675.004,8605.295,12.36166,0,0,0),
(151929,4,1681.696,8611.765,12.6384,0,0,0),
(151929,5,1689.124,8621.329,12.50693,0,0,0),
(151929,6,1699.805,8628.589,12.01016,0,0,0),
(151929,7,1717.921,8632.591,8.065008,0,0,0),
(151929,8,1729.123,8630.341,6.311835,0,0,0),
(151929,9,1744.3,8627.528,6.188718,0,0,0),
(151929,10,1755.779,8625.817,4.385007,0,0,0),
(151929,11,1764.717,8621.615,3.358396,0,0,0),
(151929,12,1770.793,8609.967,0.8600597,0,0,0),
(151929,13,1778.085,8581.91,-7.021969,0,0,0),
(151929,14,1781.569,8556.616,-9.007608,0,0,0),
(151929,15,1791.778,8532.473,-16.78218,0,0,0),
(151929,16,1806.07,8517.046,-16.52869,0,0,0),
(151929,17,1812.219,8498.097,-19.58127,0,0,0),
(151929,18,1805.245,8477.743,-19.69052,0,0,0),
(151929,19,1809.99,8468.151,-16.3652,0,0,0),
(151929,20,1822.48,8447.891,-16.88681,0,0,0),
(151929,21,1809.99,8468.151,-16.3652,0,0,0),
(151929,22,1805.245,8477.743,-19.69052,0,0,0),
(151929,23,1812.219,8498.097,-19.58127,0,0,0),
(151929,24,1806.07,8517.046,-16.52869,0,0,0),
(151929,25,1791.797,8532.447,-16.83393,0,0,0),
(151929,26,1781.569,8556.616,-9.007608,0,0,0),
(151929,27,1778.085,8581.91,-7.021969,0,0,0),
(151929,28,1770.793,8609.967,0.8600597,0,0,0),
(151929,29,1764.775,8621.494,3.295652,0,0,0),
(151929,30,1755.779,8625.817,4.385007,0,0,0),
(151929,31,1744.3,8627.528,6.188718,0,0,0),
(151929,32,1729.123,8630.341,6.311835,0,0,0),
(151929,33,1717.921,8632.591,8.065008,0,0,0),
(151929,34,1699.805,8628.589,12.01016,0,0,0),
(151929,35,1689.124,8621.329,12.50693,0,0,0),
(151929,36,1681.696,8611.765,12.6384,0,0,0),
(151929,37,1675.004,8605.295,12.36166,0,0,0),
(151929,38,1664.974,8601.517,10.78405,0,0,0),
(151929,39,1655.826,8594.225,8.950456,0,0,0),
(151929,40,1649.307,8586.103,8.346086,0,0,0);
-- Pat 6.2
DELETE FROM `creature_movement` WHERE `id`=151951;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151951,1,1655.826,8594.225,8.950456,0,0,0),
(151951,2,1664.974,8601.517,10.78405,0,0,0),
(151951,3,1675.004,8605.295,12.36166,0,0,0),
(151951,4,1681.696,8611.765,12.6384,0,0,0),
(151951,5,1689.124,8621.329,12.50693,0,0,0),
(151951,6,1699.805,8628.589,12.01016,0,0,0),
(151951,7,1717.921,8632.591,8.065008,0,0,0),
(151951,8,1729.123,8630.341,6.311835,0,0,0),
(151951,9,1744.3,8627.528,6.188718,0,0,0),
(151951,10,1755.779,8625.817,4.385007,0,0,0),
(151951,11,1764.717,8621.615,3.358396,0,0,0),
(151951,12,1770.793,8609.967,0.8600597,0,0,0),
(151951,13,1778.085,8581.91,-7.021969,0,0,0),
(151951,14,1781.569,8556.616,-9.007608,0,0,0),
(151951,15,1791.778,8532.473,-16.78218,0,0,0),
(151951,16,1806.07,8517.046,-16.52869,0,0,0),
(151951,17,1812.219,8498.097,-19.58127,0,0,0),
(151951,18,1805.245,8477.743,-19.69052,0,0,0),
(151951,19,1809.99,8468.151,-16.3652,0,0,0),
(151951,20,1822.48,8447.891,-16.88681,0,0,0),
(151951,21,1809.99,8468.151,-16.3652,0,0,0),
(151951,22,1805.245,8477.743,-19.69052,0,0,0),
(151951,23,1812.219,8498.097,-19.58127,0,0,0),
(151951,24,1806.07,8517.046,-16.52869,0,0,0),
(151951,25,1791.797,8532.447,-16.83393,0,0,0),
(151951,26,1781.569,8556.616,-9.007608,0,0,0),
(151951,27,1778.085,8581.91,-7.021969,0,0,0),
(151951,28,1770.793,8609.967,0.8600597,0,0,0),
(151951,29,1764.775,8621.494,3.295652,0,0,0),
(151951,30,1755.779,8625.817,4.385007,0,0,0),
(151951,31,1744.3,8627.528,6.188718,0,0,0),
(151951,32,1729.123,8630.341,6.311835,0,0,0),
(151951,33,1717.921,8632.591,8.065008,0,0,0),
(151951,34,1699.805,8628.589,12.01016,0,0,0),
(151951,35,1689.124,8621.329,12.50693,0,0,0),
(151951,36,1681.696,8611.765,12.6384,0,0,0),
(151951,37,1675.004,8605.295,12.36166,0,0,0),
(151951,38,1664.974,8601.517,10.78405,0,0,0),
(151951,39,1655.826,8594.225,8.950456,0,0,0),
(151951,40,1649.307,8586.103,8.346086,0,0,0);

