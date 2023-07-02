
/*
03 08
05 10
03 12
05 08
05 10
04 08
06 07
03 08
02 07
01 11
06 09
04 08
04 12
06 08
03 07
05 12
-- --
01 02 03 04 05 06
07 08 09 10 11 12
*/

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Gromsblood
DELETE FROM `gameobject` WHERE (`guid` IN (16456, 16457, 16478, 16481, 16511, 16515, 16517, 47871));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (16456, 16457, 16478, 16481, 16511, 16515, 16517, 47871));

-- Pool
DELETE FROM `pool_template` WHERE (`entry` IN (8450));

SET @OGUID := 142060;
SET @SGUID := 10260;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 000, 0, 1, 1, 2142.3828125, -2982.276611328125, 115.1415786743164062, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 300, 600),
(@OGUID + 001, 0, 1, 1, 1987.0694580078125, -2988.453125, 106.5849990844726562, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 300, 600),
(@OGUID + 002, 0, 1, 1, 2049.30126953125, -3138.719970703125, 102.234771728515625, 1.919861555099487304, 0, 0, 0.819151878356933593, 0.573576688766479492, 300, 600),
(@OGUID + 003, 0, 1, 1, 1953.2421875, -3148.667724609375, 100.5338363647460937, 3.926995515823364257, 0, 0, -0.92387866973876953, 0.38268551230430603, 300, 600),
(@OGUID + 004, 0, 1, 1, 1773.656005859375, -3194.27294921875, 87.97472381591796875, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 300, 600),
(@OGUID + 005, 0, 1, 1, 1645.337890625, -3043.786376953125, 88.48065948486328125, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189, 300, 600);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 000, 'Ashenvale - Gromsblood (1) Herb 000', 1, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 000, @OGUID + 000, -1),
(@SGUID + 000, @OGUID + 001, -1),
(@SGUID + 000, @OGUID + 002, -1),
(@SGUID + 000, @OGUID + 003, -1),
(@SGUID + 000, @OGUID + 004, -1),
(@SGUID + 000, @OGUID + 005, -1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 142145, 0, 0, 0);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 010, 0, 1, 1, 1520.9664306640625, -2832.178466796875, 182.4700927734375, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066, 300, 600),
(@OGUID + 011, 0, 1, 1, 1595.373046875, -2869.7041015625, 181.057525634765625, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 300, 600),
(@OGUID + 012, 0, 1, 1, 1590.8587646484375, -2976.03125, 182.2991943359375, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046, 300, 600),
(@OGUID + 013, 0, 1, 1, 1664.288818359375, -3257.314208984375, 144.601104736328125, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 300, 600),
(@OGUID + 014, 0, 1, 1, 1666.02734375, -3411.135986328125, 143.7235260009765625, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691, 300, 600),
(@OGUID + 015, 0, 1, 1, 1704.390380859375, -3483.988037109375, 143.631439208984375, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507, 300, 600);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 001, 'Ashenvale - Gromsblood (1) Herb 001', 1, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 001, @OGUID + 010, -1),
(@SGUID + 001, @OGUID + 011, -1),
(@SGUID + 001, @OGUID + 012, -1),
(@SGUID + 001, @OGUID + 013, -1),
(@SGUID + 001, @OGUID + 014, -1),
(@SGUID + 001, @OGUID + 015, -1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 001, 142145, 0, 0, 0);
