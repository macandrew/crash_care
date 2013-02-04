-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Vert: localhost
-- Generert den: 04. Feb, 2013 14:23 PM
-- Tjenerversjon: 5.1.63
-- PHP-Versjon: 5.3.5-1ubuntu7.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `whitelist`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `slot_type` varchar(100) NOT NULL DEFAULT 'inventory',
  `slots` int(11) NOT NULL DEFAULT '1',
  `category` enum('weapon_primary','weapon_secondary','tool','consumable','clothing','backpack','ammo','vehiclepart','thrown','head','other') NOT NULL,
  `ammo_class` varchar(50) NOT NULL DEFAULT '',
  `ammosec_class` varchar(50) NOT NULL DEFAULT '',
  `spawns` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`classname`),
  UNIQUE KEY `classname` (`classname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `items`
--

INSERT INTO `items` (`name`, `classname`, `slot_type`, `slots`, `category`, `ammo_class`, `ammosec_class`, `spawns`) VALUES
('AK-74', 'AK_74', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 1),
('AKM', 'AK_47_M', 'weapon', 10, 'weapon_primary', '30Rnd_762x39_AK47', '', 1),
('AKS', 'AK_47_S', 'weapon', 10, 'weapon_primary', '30Rnd_762x39_AK47', '', 1),
('AKS-74 Kobra', 'AKS_74_kobra', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 1),
('Bizon PP-19 SD', 'bizon_silenced', 'weapon', 10, 'weapon_primary', '64Rnd_9x19_SD_Bizon', '', 1),
('M1014', 'M1014', 'weapon', 10, 'weapon_primary', '8Rnd_B_Beneli_74Slug', '', 1),
('M16A2', 'M16A2', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M16A2 / M203', 'M16A2GL', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M16A4 RCO', 'M16A4_ACG', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M4A1', 'M4A1', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M4A1 / M203 Holo', 'M4A1_HWS_GL', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M4A1 CCO', 'M4A1_Aim', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M4A1 CCO Camo SD', 'M4A1_AIM_SD_camo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_StanagSD', '', 1),
('MP5A5', 'MP5A5', 'weapon', 10, 'weapon_primary', '30rnd_9x19_MP5', '', 1),
('MP5SD6', 'MP5SD', 'weapon', 10, 'weapon_primary', '30rnd_9x19_MP5SD', '', 1),
('M240', 'M240', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 1),
('M249', 'M249', 'weapon', 10, 'weapon_primary', '200Rnd_556x45_M249', '', 1),
('CZ 550 Scoped', 'Huntingrifle', 'weapon', 10, 'weapon_primary', '5x_22_LR_17_HMR', '', 1),
('DMR', 'DMR', 'weapon', 10, 'weapon_primary', '20Rnd_762x51_DMR', '', 1),
('M24', 'M24', 'weapon', 10, 'weapon_primary', '5Rnd_762x51_M24', '', 1),
('SVD Camo', 'SVD_CAMO', 'weapon', 10, 'weapon_primary', '10Rnd_762x54_SVD', '', 1),
('M1911A1', 'Colt1911', 'weapon', 5, 'weapon_secondary', '', '7Rnd_45ACP_1911', 1),
('M9', 'M9', 'weapon', 5, 'weapon_secondary', '', '15Rnd_9x19_M9', 1),
('M9 Silenced', 'M9SD', 'weapon', 5, 'weapon_secondary', '', '15Rnd_9x19_M9SD', 1),
('Makarov PM', 'Makarov', 'weapon', 5, 'weapon_secondary', '', '8Rnd_9x18_Makarov', 1),
('Lee Enfield', 'LeeEnfield', 'weapon', 10, 'weapon_primary', '10x_303', '', 1),
('M14 Aimpoint', 'M14_EP1', 'weapon', 10, 'weapon_primary', '20Rnd_762x51_DMR', '', 1),
('M4A3 CCO', 'M4A3_CCO_EP1', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M107', 'm107', 'weapon', 10, 'weapon_primary', '10Rnd_127x99_M107', '', 1),
('Glock17', 'glock17_EP1', 'weapon', 5, 'weapon_secondary', '', '17Rnd_9x19_glock17', 1),
('Revolver', 'revolver_EP1', 'weapon', 5, 'weapon_secondary', '', '6Rnd_45ACP', 1),
('UZI (PDW)', 'UZI_EP1', 'weapon', 5, 'weapon_secondary', '30Rnd_9x19_UZI', '', 1),
('FN FAL', 'FN_FAL', 'weapon', 10, 'weapon_primary', '20Rnd_762x51_FNFAL', '', 1),
('FN FAL ANPVS4', 'FN_FAL_ANPVS4', 'weapon', 10, 'weapon_primary', '20Rnd_762x51_FNFAL', '', 1),
('L85A2 AWS', 'BAF_L85A2_RIS_CWS', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('Mk 48 Mod 0', 'Mk_48', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 1),
('AKS-74U', 'AKS_74_U', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 1),
('AK-107', 'AK_107_kobra', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 1),
('AK-107 / GP25', 'AK_107_GL_kobra', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '1Rnd_HE_GP25', 0),
('AK107 / GP25 PSO', 'AK_107_GL_pso', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '1Rnd_HE_GP25', 0),
('AK-107 PSO', 'AK_107_pso', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 0),
('AK-74 / GP25', 'AK_74_GL', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '1Rnd_HE_GP25', 0),
('AKS-74 PSO', 'AKS_74_pso', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 0),
('AKS-74UN Kobra', 'AKS_74_UN_kobra', 'weapon', 10, 'weapon_primary', '30Rnd_545x39_AK', '', 0),
('Bizon PP-19', 'Bizon', 'weapon', 10, 'weapon_primary', '64Rnd_9x19_Bizon', '', 0),
('G36', 'G36a', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_G36', '', 0),
('G36C', 'G36C', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_G36', '', 1),
('G36C Eotech SD', 'G36_C_SD_eotech', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_G36SD', '', 1),
('G36K', 'G36K', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_G36', '', 0),
('M16A4', 'M16A4', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('M16A4 / M203', 'M16A4_GL', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M16A4 / M203 RCO', 'M16A4_ACG_GL', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M4A1 / M203 Holo Camo', 'M4A1_HWS_GL_camo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M4A1 / M203 Holo SD', 'M4A1_HWS_GL_SD_Camo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_StanagSD', '1Rnd_HE_M203', 1),
('M4A1 / M203 RCO', 'M4A1_RCO_GL', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M4A1 CCO Camo', 'M4A1_Aim_camo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('Saiga 12K', 'Saiga12K', 'weapon', 10, 'weapon_primary', '8Rnd_B_Saiga12_74Slug', '', 0),
('PKP', 'Pecheneg', 'weapon', 10, 'weapon_primary', '100Rnd_762x54_PK', '', 0),
('PK', 'PK', 'weapon', 10, 'weapon_primary', '100Rnd_762x54_PK', '', 0),
('RPK-74', 'RPK_74', 'weapon', 10, 'weapon_primary', '75Rnd_545x39_RPK', '', 0),
('KSVK', 'KSVK', 'weapon', 10, 'weapon_primary', '5Rnd_127x108_KSVK', '', 0),
('M40A3', 'M40A3', 'weapon', 10, 'weapon_primary', '5Rnd_762x51_M24', '', 1),
('Mk12 SPR', 'M4SPR', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('SVD', 'SVD', 'weapon', 10, 'weapon_primary', '10Rnd_762x54_SVD', '', 0),
('Makarov Silenced', 'MakarovSD', 'weapon', 5, 'weapon_secondary', '', '8Rnd_9x18_MakarovSD', 1),
('M4A3 / M203 Acog', 'M4A3_RCO_GL_EP1', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('M240 Scope', 'm240_scoped_EP1', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 0),
('M249 SAW', 'M249_EP1', 'weapon', 10, 'weapon_primary', '200Rnd_556x45_M249', '', 0),
('M249 Scope', 'M249_m145_EP1', 'weapon', 10, 'weapon_primary', '200Rnd_556x45_M249', '', 0),
('M60E4', 'M60A4_EP1', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 0),
('Mk 48 Desert', 'Mk_48_DES_EP1', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 0),
('M24 Desert', 'M24_des_EP1', 'weapon', 10, 'weapon_primary', '5Rnd_762x51_M24', '', 0),
('SVD Desert', 'SVD_des_EP1', 'weapon', 10, 'weapon_primary', '10Rnd_762x54_SVD', '', 0),
('SVD NSPU', 'SVD_NSPU_EP1', 'weapon', 10, 'weapon_primary', '10Rnd_762x54_SVD', '', 0),
('Revolver Gold', 'revolver_gold_EP1', 'weapon', 5, 'weapon_secondary', '', '6Rnd_45ACP', 0),
('Sa vz.61', 'Sa61_EP1', 'weapon', 5, 'weapon_secondary', '', '20Rnd_B_765x17_Ball', 0),
('UZI SD', 'UZI_SD_EP1', 'weapon', 5, 'weapon_secondary', '', '30Rnd_9x19_UZI_SD', 1),
('L110A1', 'BAF_L110A1_Aim', 'weapon', 10, 'weapon_primary', '200Rnd_556x45_L110A1', '', 0),
('L7A2 GPMG', 'BAF_L7A2_GPMG', 'weapon', 10, 'weapon_primary', '100Rnd_762x51_M240', '', 0),
('L85A2 Acog', 'BAF_L85A2_RIS_ACOG', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 0),
('L85A2 Holo', 'BAF_L85A2_RIS_Holo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('L85A2 SUSAT', 'BAF_L85A2_RIS_SUSAT', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('L85A2 Acog GL', 'BAF_L85A2_UGL_ACOG', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('L85A2 Holo GL', 'BAF_L85A2_UGL_Holo', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('L85A2 SUSAT GL', 'BAF_L85A2_UGL_SUSAT', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '1Rnd_HE_M203', 1),
('L86A2 LSW', 'BAF_L86A2_ACOG', 'weapon', 10, 'weapon_primary', '30Rnd_556x45_Stanag', '', 1),
('L115A3 LRR', 'BAF_LRR_scoped', 'weapon', 10, 'weapon_primary', '5Rnd_86x70_L115A1', '', 1),
('AS50', 'BAF_AS50_scoped', 'weapon', 10, 'weapon_primary', '5Rnd_127x99_as50', '', 1),
('Remington 870', 'Remington870_lamp', 'weapon', 10, 'weapon_primary', '', '', 1),
('Winchester 1866', 'Winchester1866', 'weapon', 10, 'weapon_primary', '', '', 1),
('Toolbox', 'ItemToolbox', 'generic', 1, 'tool', '', '', 1),
('NVGs', 'NVGoggles', 'weapon', 1, 'head', '', '', 1),
('Binoculars', 'Binocular', 'magazine', 1, 'head', '', '', 1),
('Entrenching Tool', 'ItemEtool', 'generic', 1, 'tool', '', '', 1),
('Military Flashlight', 'ItemFlashlightRed', 'generic', 1, 'tool', '', '', 1),
('GPS', 'ItemGPS', 'generic', 1, 'tool', '', '', 1),
('Hatchet', 'ItemHatchet', 'generic', 1, 'tool', '', '', 1),
('Hunting Knife', 'ItemKnife', 'generic', 1, 'tool', '', '', 1),
('Watch', 'ItemWatch', 'generic', 1, 'tool', '', '', 1),
('Matchbox', 'ItemMatchbox', 'generic', 1, 'tool', '', '', 1),
('Regular Flashlight', 'ItemFlashlight', 'generic', 1, 'tool', '', '', 1),
('Compass', 'ItemCompass', 'generic', 1, 'tool', '', '', 1),
('Map', 'ItemMap', 'generic', 1, 'tool', '', '', 1),
('Rangefinder', 'Binocular_Vector', 'magazine', 1, 'head', '', '', 1),
('Raw Steak', 'FoodSteakRaw', 'magazine', 1, 'consumable', '', '', 1),
('Cooked Steak', 'FoodSteakCooked', 'magazine', 1, 'consumable', '', '', 1),
('Can O Baked Beans', 'FoodCanBakedBeans', 'magazine', 1, 'consumable', '', '', 1),
('Can O Sardines', 'FoodCanSardines', 'magazine', 1, 'consumable', '', '', 1),
('Can O Pasta', 'FoodCanPasta', 'magazine', 1, 'consumable', '', '', 1),
('Soda: Coke', 'ItemSodaCoke', 'magazine', 1, 'consumable', '', '', 1),
('Soda: Pepsi', 'ItemSodaPepsi', 'magazine', 1, 'consumable', '', '', 1),
('Soda: Mt. Dew', 'ItemSodaMdew', 'magazine', 1, 'consumable', '', '', 1),
('Water Bottle', 'ItemWaterbottle', 'magazine', 1, 'consumable', '', '', 1),
('Road Flare', 'HandRoadFlare', 'magazine', 1, 'thrown', '', '', 1),
('Chem(Green)', 'HandChemGreen', 'magazine', 1, 'thrown', '', '', 1),
('Chem(Blue)', 'HandChemBlue', 'magazine', 1, 'thrown', '', '', 1),
('Chem(Red)', 'HandChemRed', 'magazine', 1, 'thrown', '', '', 1),
('Sandbag Kit', 'ItemSandbag', 'magazine', 1, 'other', '', '', 1),
('Tank Trap Kit', 'ItemTankTrap', 'magazine', 1, 'other', '', '', 1),
('Wire Kit', 'ItemWire', 'magazine', 1, 'other', '', '', 1),
('Bandage', 'ItemBandage', 'magazine', 1, 'consumable', '', '', 1),
('Painkiller', 'ItemPainkiller', 'magazine', 1, 'consumable', '', '', 1),
('Morphine', 'ItemMorphine', 'magazine', 1, 'consumable', '', '', 1),
('Epi-Pen', 'ItemEpinephrine', 'magazine', 1, 'consumable', '', '', 1),
('Antibiotics', 'ItemAntibiotic', 'magazine', 1, 'consumable', '', '', 1),
('Bloodbag', 'ItemBloodbag', 'magazine', 1, 'consumable', '', '', 1),
('Heatpack', 'ItemHeatPack', 'magazine', 1, 'consumable', '', '', 1),
('Wood Pile', 'PartWoodPile', 'magazine', 2, 'other', '', '', 1),
('Wheel', 'PartWheel', 'magazine', 6, 'vehiclepart', '', '', 1),
('Fuel Tank', 'PartFueltank', 'magazine', 4, 'vehiclepart', '', '', 1),
('Glass', 'PartGlass', 'magazine', 2, 'vehiclepart', '', '', 1),
('Engine', 'PartEngine', 'magazine', 6, 'vehiclepart', '', '', 1),
('Scrap Metal', 'PartGeneric', 'magazine', 3, 'vehiclepart', '', '', 1),
('Main Rotor Assembly', 'PartVRotor', 'magazine', 6, 'vehiclepart', '', '', 1),
('Jerry Can (Full)', 'ItemJerrycan', 'magazine', 3, 'vehiclepart', '', '', 1),
('Tent', 'ItemTent', 'magazine', 3, 'other', '', '', 1),
('Coyote Patrol Pack (8)', 'DZ_Patrol_Pack_EP1', 'object', 1, 'backpack', '', '', 1),
('ACU Assault Pack (12)', 'DZ_Assault_Pack_EP1', 'object', 1, 'backpack', '', '', 1),
('Czech BackPack (16)', 'DZ_CivilBackpack_EP1', 'object', 1, 'backpack', '', '', 1),
('ALICE Pack (20)', 'DZ_ALICE_Pack_EP1', 'object', 1, 'backpack', '', '', 1),
('Coyote Backpack (24)', 'DZ_Backpack_EP1', 'object', 1, 'backpack', '', '', 1),
('Bear Trap', 'TrapBear', 'magazine', 1, 'other', '', '', 1),
('Ammo box (Stanags)', 'AmmoBoxSmall_556', 'object', 1, '', '', '', 1),
('Ammo box (DMR,SVD,M24)', 'AmmoBoxSmall_762', 'object', 1, '', '', '', 1),
('Camo clothing', 'Skin_Camo1_DZ', 'magazine', 1, 'clothing', '', '', 1),
('Medical box', 'MedBox0', 'object', 1, '', '', '', 1),
('Ghilie Suit', 'Skin_Sniper1_DZ', 'magazine', 1, 'clothing', '', '', 1);
