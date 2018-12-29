-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 11:01 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calc`
--

-- --------------------------------------------------------

--
-- Table structure for table `baseclass`
--

CREATE TABLE `baseclass` (
  `id` int(11) NOT NULL,
  `BaseClass` text COLLATE utf8_unicode_ci NOT NULL,
  `Strength` int(11) NOT NULL,
  `Dexterity` int(11) NOT NULL,
  `Constitution` int(11) NOT NULL,
  `Intelligence` int(11) NOT NULL,
  `Spirit` int(11) NOT NULL,
  `TrainingPoints` int(11) NOT NULL,
  `Professions` text COLLATE utf8_unicode_ci NOT NULL,
  `HealthBonus` int(11) NOT NULL,
  `ManaBonus` int(11) NOT NULL,
  `StaminaBonus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baseclass`
--

INSERT INTO `baseclass` (`id`, `BaseClass`, `Strength`, `Dexterity`, `Constitution`, `Intelligence`, `Spirit`, `TrainingPoints`, `Professions`, `HealthBonus`, `ManaBonus`, `StaminaBonus`) VALUES
(1, 'Fighter', 5, 0, 5, -10, 0, 588, '0100010001000010110110', 20, 5, 3),
(2, 'Healer', 0, -10, 5, 0, 5, 646, '0001111100001100000000', 15, 16, 1),
(3, 'Rogue', 0, 5, 0, 5, -10, 588, '1110000001010011001000', 17, 5, 4),
(4, 'Mage', -10, 0, 0, 5, 5, 646, '1011001010100000000101', 15, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `video` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gear`
--

CREATE TABLE `gear` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Slot` text COLLATE utf8_unicode_ci NOT NULL,
  `Race` text COLLATE utf8_unicode_ci NOT NULL,
  `Class` text COLLATE utf8_unicode_ci NOT NULL,
  `Discipline` text COLLATE utf8_unicode_ci NOT NULL,
  `Skill` text COLLATE utf8_unicode_ci NOT NULL,
  `Defense` int(11) NOT NULL,
  `Slashing` float NOT NULL,
  `Piercing` float NOT NULL,
  `Crushing` float NOT NULL,
  `Additional` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gear`
--

INSERT INTO `gear` (`id`, `Name`, `Slot`, `Race`, `Class`, `Discipline`, `Skill`, `Defense`, `Slashing`, `Piercing`, `Crushing`, `Additional`) VALUES
(12, 'Dragon Plate Boots', 'Feet', '', '', '', 'Heavy Armor', 11, 3.6, 3.6, 3.6, ''),
(11, 'Dragon Plate Gauntlets', 'Hands', '', '', '', 'Heavy Armor', 11, 3.6, 3.6, 3.6, ''),
(10, 'Dragon Plate Legguards', 'Legs', '', '', '', 'Heavy Armor', 26, 9, 9, 9, ''),
(9, 'Dragon Plate Armguards', 'Arms', '', '', '', 'Heavy Armor', 15, 5.4, 5.4, 5.4, ''),
(8, 'Dragon Plate Breastplate', 'Chest', '', '', '', 'Heavy Armor', 47, 16.2, 16.2, 16.2, ''),
(7, 'Dragon Plate Helm', 'Head', '', '', '', 'Heavy Armor', 21, 7.2, 7.2, 7.2, ''),
(13, 'Hard Leather Helm', 'Head', '', '', '', 'Light Armor', 17, 3.2, 3.2, 3.2, '');

-- --------------------------------------------------------

--
-- Table structure for table `powers`
--

CREATE TABLE `powers` (
  `id` int(11) NOT NULL,
  `Class` text COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Granted` int(11) NOT NULL,
  `Focus` text COLLATE utf8_unicode_ci NOT NULL,
  `Flag` text COLLATE utf8_unicode_ci NOT NULL,
  `ManaCost` text COLLATE utf8_unicode_ci NOT NULL,
  `CastingTime` float NOT NULL,
  `RecycleTime` float NOT NULL,
  `Hate` text COLLATE utf8_unicode_ci NOT NULL,
  `UserRequirements` text COLLATE utf8_unicode_ci NOT NULL,
  `Combat` text COLLATE utf8_unicode_ci NOT NULL,
  `HitRoll` text COLLATE utf8_unicode_ci NOT NULL,
  `CastRange` int(11) NOT NULL,
  `untrainedDoTDmgRange` text COLLATE utf8_unicode_ci NOT NULL,
  `GMedDoTDmgRange` text COLLATE utf8_unicode_ci NOT NULL,
  `Resist` text COLLATE utf8_unicode_ci NOT NULL,
  `untrainedDmgRange` text COLLATE utf8_unicode_ci NOT NULL,
  `GMedDmgRange` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `powers`
--

INSERT INTO `powers` (`id`, `Class`, `Name`, `Granted`, `Focus`, `Flag`, `ManaCost`, `CastingTime`, `RecycleTime`, `Hate`, `UserRequirements`, `Combat`, `HitRoll`, `CastRange`, `untrainedDoTDmgRange`, `GMedDoTDmgRange`, `Resist`, `untrainedDmgRange`, `GMedDmgRange`) VALUES
(236, 'Assassin', 'Cloak of Shadows', 11, 'Shadowmastery', 'null', '15 to 55', 4, 0, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(237, 'Assassin', 'Shadow Mantle', 42, 'Shadowmastery', 'null', '55 to 95', 3, 10, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(238, 'Assassin', 'Blindness', 14, 'Shadowmastery', 'null', '18 to 58', 4, 120, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(239, 'Assassin', 'Plague of Blindness', 26, 'Shadowmastery', 'null', '60 to 100', 5, 120, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(240, 'Assassin', 'Antidote', 16, 'Shadowmastery', 'null', 'null', 2, 0, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(241, 'Assassin', 'Slayer', 38, 'Shadowmastery', 'null', '25 to 65', 6, 0, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(242, 'Assassin', 'Counter Venom', 30, 'Shadowmastery', 'null', '50 to 90', 4, 0, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(243, 'Assassin', 'Poison Tolerance', 20, 'null', 'null', '30 to 70', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(244, 'Assassin', 'Silence', 34, 'null', 'null', '44 to 84', 5, 10, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(245, 'Assassin', 'Aura of Silence', 40, 'null', 'null', '53 to 93', 5, 20, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(246, 'Assassin', 'Shadow Touch', 15, 'null', 'null', '15 to 55', 1, 1, 'null', 'null', 'null', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(247, 'Assassin', 'Summon Darkspawn', 50, 'null', 'null', '120 to 160', 7, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(248, 'Assassin', 'Passwall', 28, 'null', 'null', 'null', 6, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(249, 'Assassin', 'Poison Blade', 12, 'Shadowmastery', 'null', '40 to 80', 6, 300, 'null', 'null', 'null', 'No', 0, '21-45', '69-148', 'Poison', '21-45', '69-148'),
(250, 'Assassin', 'Shadow Bolt', 10, 'null', 'null', '17 to 39.8', 2, 0, 'null', 'null', 'null', 'Yes', 120, '10-14', '24-33', 'Cold', '10-14', '24-33'),
(251, 'Assassin', 'Steal Breath', 18, 'null', 'null', '62 to 96.8', 0.2, 5, 'null', 'null', 'null', 'Yes', 120, '8-12', '12-19', 'Poison', '8-12', '12-19'),
(252, 'Assassin', 'Chilling Shadows', 24, 'null', 'null', '31 to 71', 2, 30, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(253, 'Assassin', 'Fade', 10, 'None', 'null', 'null', 9.7, 10, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(254, 'Assassin', 'Invisibility', 19, 'null', 'null', 'null', 10, 30, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(255, 'Assassin', 'Backstab', 10, 'null', 'null', 'null', 0.2, 90, 'null', ': You must be sneaking to use this power. Forbids Archery weapon in right hand. Forbids Archery weapon in left hand. Forbids Throwing weapon in right hand.', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(256, 'Assassin', 'Buchinine', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Disease', 'null', 'null'),
(257, 'Assassin', 'Galpa', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'null', 'null', 'null'),
(258, 'Assassin', 'Gorgon', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'null', 'null', 'null'),
(259, 'Assassin', 'Magusbane', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Poison', 'null', 'null'),
(260, 'Assassin', 'Pellegorn', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Poison', 'null', 'null'),
(261, 'Barbarian', 'Battle Rage', 10, 'None', 'null', 'null', 1.9, 600, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(262, 'Barbarian', 'Battle Cry', 15, 'None', 'null', 'null', 3.7, 10, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(263, 'Barbarian', 'Unstoppable Force', 15, 'None', 'null', 'null', 0, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(264, 'Barbarian', 'Shout', 30, 'None', 'null', 'null', 0, 15, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(265, 'Barbarian', 'Vengeance', 20, 'None', 'null', 'null', 3, 120, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(266, 'Barbarian', 'Challenge', 10, 'None', 'null', 'null', 0, 15, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(267, 'Bard', 'Kennings of the Loremasters', 10, 'Bardsong', 'null', 'null', 3, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(268, 'Bard', 'Pallando', 10, 'Bardsong', 'null', '17.83 to 40.2', 3.5, 10, 'null', 'null', 'null', 'null', 0, '3-7', '7-17', 'Magic', '3-7', '7-17'),
(269, 'Bard', 'Ritardando', 10, 'Bardsong', 'null', '14 to 53', 0.2, 30, 'null', 'null', 'null', 'null', 100, 'null', 'null', 'null', 'null', 'null'),
(270, 'Bard', 'Gentle Melody', 12, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(271, 'Bard', 'Dread Dissonance', 12, 'Bardsong', 'null', '31.7 to 58.6', 4, 0, 'null', 'null', 'null', 'null', 120, '14-36', '26-68', 'Magic', '14-36', '26-68'),
(272, 'Bard', 'Ballad of Beregund the Bold', 15, 'Bardsong', 'null', 'null', 0.2, 300, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(273, 'Bard', 'Ragnor', 15, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(274, 'Bard', 'Harmonious Stanzas', 18, 'Bardsong', 'null', '24 to 63', 3, 0, 'null', 'null', 'null', 'null', 100, 'null', 'null', 'null', 'null', 'null'),
(275, 'Bard', 'Ithriana', 18, 'Bardsong', 'null', '56 to 95', 5, 600, 'null', 'null', 'null', 'null', 100, 'null', 'null', 'null', 'null', 'null'),
(276, 'Bard', 'Anthem of Avoidance', 20, 'Sorcery', 'null', 'null', 2, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(277, 'Bard', 'Ancient Riddle', 20, 'Bardsong', 'null', '26 to 65', 3.5, 60, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(278, 'Bard', 'Baleful Battlehymm', 22, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(279, 'Bard', 'Ashton Kai', 23, 'Bardsong', 'null', '31 to 70', 3, 29.5, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(280, 'Bard', 'Countersong', 24, 'Bardsong', 'null', '32 to 71', 2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(281, 'Bard', 'Calming Melody', 26, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(282, 'Bard', 'Chant of the Titans', 28, 'Bardsong', 'null', '37 to 76', 4, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(283, 'Bard', 'Canticle of Inspiration', 30, 'Bardsong', 'null', '41 to 80', 4, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(284, 'Bard', 'The Rhythm of Steel', 30, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(285, 'Bard', 'Mighty Countersong', 32, 'Bardsong', 'null', '43 to 82', 2, 10, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(286, 'Bard', 'Baleful Cry of Weilund', 34, 'Bardsong', 'null', '45 to 54', 3, 300, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(287, 'Bard', 'Restive Melody', 42, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(288, 'Bard', 'Song of Warding', 42, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(289, 'Bard', 'Litany of Focus', 44, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(290, 'Bard', 'Song of Fortitude', 46, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(291, 'Bard', 'Molto Ritardando', 36, 'Bardsong', 'null', '14 to 53', 0.2, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(292, 'Bard', 'Song of Spring', 48, 'Bardsong', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(293, 'Bard', 'Dance of Derrac the Dauntless', 50, 'Bardsong', 'null', 'null', 0.2, 360, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(294, 'Channeler', 'Mantle of Stone', 10, 'Channeling', 'null', '25 to 65', 4, 0, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(295, 'Channeler', 'Flesh of Granite', 16, 'Channeling', 'null', 'null', 2, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(296, 'Channeler', 'Flesh of Lead', 46, 'Channeling', 'null', 'null', 2, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(297, 'Channeler', 'Aura of Flame', 12, 'Channeling', 'null', '25 to 65', 5, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(298, 'Channeler', 'Hoarfrost', 10, 'Channeling', 'null', '25.85 to 59', 3, 0, 'null', 'null', 'null', 'Yes', 120, '5-26', '12-59', 'Cold', '5-26', '12-59'),
(299, 'Channeler', 'Ice Bolt', 46, 'Channeling', 'null', '56 to 74', 4, 6, 'null', 'null', 'null', 'Yes', 120, '16-74', '21-98', 'Cold', '16-74', '21-98'),
(300, 'Channeler', 'Blizzard', 14, 'Channeling', 'null', '33 to 59', 3, 12, 'null', 'null', 'null', 'Yes', 120, '5-25', '9-45', 'Cold', '5-25', '9-45'),
(301, 'Channeler', 'Ignite', 12, 'Channeling', 'null', '40.88 to 75.2', 4, 0, 'null', 'null', 'null', 'Yes', 120, '8-29', '15-53', 'Fire', '8-29', '15-53'),
(302, 'Channeler', 'Fire Bolt', 48, 'Channeling', 'null', '58 to 76.4', 3, 5, 'null', 'null', 'null', 'Yes', 120, '18-74', '24-98', 'Fire', '18-74', '24-98'),
(303, 'Channeler', 'Incendiary Blast', 18, 'Channeling', 'null', '58 to 90.4', 4, 12, 'null', 'null', 'null', 'Yes', 120, '4-16', '6-25', 'Fire', '4-16', '6-25'),
(304, 'Channeler', 'Electrocute', 20, 'Channeling', 'null', '30.42 to 46.8', 3, 0, 'null', 'null', 'null', 'Yes', 120, '8-41', '12-62', 'Lightning', '8-41', '12-62'),
(305, 'Channeler', 'Lightning Bolt', 50, 'Channeling', 'null', '58 to 76.8', 4, 12, 'null', 'null', 'null', 'Yes', 120, '16-77', '21-102', 'Lightning', '16-77', '21-102'),
(306, 'Channeler', 'Call Lightning', 40, 'Channeling', 'null', '63 to 83', 3, 12, 'null', 'null', 'null', 'Yes', 120, '12-57', '16-75', 'Lightning', '12-57', '16-75'),
(307, 'Channeler', 'Divert the Aerial Flow', 17, 'Channeling', 'null', 'null', 2, 0, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(308, 'Channeler', 'Divert the Aqueous Flow', 13, 'Channeling', 'null', 'null', 2, 0, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(309, 'Channeler', 'Divert the Pyretic Flow', 15, 'Channeling', 'null', 'null', 2, 0, 'null', 'null', 'null', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(310, 'Channeler', 'Ride the Winds', 22, 'Channeling', 'null', '55 to 90', 6, 0, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(311, 'Channeler', 'Aqueous Rejuvenation', 26, 'Channeling', 'null', '1 to 41', 11, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(312, 'Channeler', 'Cloak of Transparency', 42, 'Channeling', 'null', '80 to 100', 23, 30, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(313, 'Channeler', 'Endure Water', 30, 'Channeling', 'null', '30 to 70', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(314, 'Channeler', 'Defeat Water', 50, 'Channeling', 'null', '70 to 110', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(315, 'Channeler', 'Endure Fire', 30, 'Channeling', 'null', '30 to 70', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(316, 'Channeler', 'Defeat Fire', 50, 'Channeling', 'null', '70 to 110', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(317, 'Channeler', 'Endure the Sky', 30, 'Channeling', 'null', '30 to 70', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(318, 'Channeler', 'Defeat the Sky', 50, 'Channeling', 'null', '70 to 110', 4, 0, 'null', 'null', 'null', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(319, 'Channeler', 'Weave of the Salamander', 46, 'Channeling', 'null', '200 to 240', 7, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(320, 'Channeler', 'Weave of the Gnome', 46, 'Channeling', 'null', '200 to 240', 7, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(321, 'Channeler', 'Weave of the Undine', 46, 'Channeling', 'null', '200 to 240', 7, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(322, 'Channeler', 'Weave of the Sylph', 46, 'Channeling', 'null', '200 to 240', 7, 600, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(323, 'Confessor', 'Purge Wickedness', 10, 'Thaumaturgy', 'Spell', '23 to 53.8', 4, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(324, 'Confessor', 'Contrition', 16, 'Thaumaturgy', 'Spell', '59 to 93.8', 5, 15, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(325, 'Confessor', 'Purgation', 12, 'Thaumaturgy', 'Spell', '50 to 93.6', 1, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '6-10', '11-19', 'Poison', '6-10', '11-19'),
(326, 'Confessor', 'Uvoriel', 16, 'Thaumaturgy', 'Spell', '49 to 78.6', 1, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '6-16', '10-26', 'Fire', '6-16', '10-26'),
(327, 'Confessor', 'Kiss of the Martyr', 14, 'Restoration', 'Spell', '41 to 74.2', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(328, 'Confessor', 'Sanction of the Temple', 28, 'Thaumaturgy', 'Spell', '25 to 65', 2.5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(329, 'Confessor', 'Flames of Retribution', 10, 'Thaumaturgy', 'Spell', '15 to 55', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(330, 'Confessor', 'Sermon of Retribution', 40, 'Thaumaturgy', 'Spell', '60 to 100', 5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(331, 'Confessor', 'Invoke the Sacred Flame', 20, 'Benediction', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(332, 'Confessor', 'Sermon of the Sacred Flame', 50, 'Benediction', 'Spell', '70 to 110', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(333, 'Confessor', 'Fortitude', 20, 'Benediction', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(334, 'Confessor', 'Sermon of Fortitude', 50, 'Benediction', 'Spell', '70 to 110', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(335, 'Confessor', 'Steadfast Soul', 18, 'Benediction', 'Spell', '25 to 65', 0.5, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(336, 'Confessor', 'Steadfast Congregation', 33, 'Benediction', 'Spell', '210 to 250', 8, 1800, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(337, 'Confessor', 'Fire Ward', 18, 'Benediction', 'Spell', 'null', 0.5, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(338, 'Confessor', 'Fortress of Faith', 48, 'Benediction', 'Spell', '100 to 140', 2, 3600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(339, 'Confessor', 'Inspire the Chosen', 24, 'Restoration', 'Spell', 'null', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(340, 'Confessor', 'Defy the Witch', 16, 'Restoration', 'Spell', '20 to 60', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(341, 'Confessor', 'Brand the Wicked', 18, 'Thaumaturgy', 'Spell', '29 to 46.2', 3.6, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '16-41', '26-66', 'Fire', '16-41', '26-66'),
(342, 'Confessor', 'Saint Malorn', 20, 'Thaumaturgy', 'Spell', '20 to 31.2', 3.6, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 0, '16-42', '25-66', 'Fire', '16-42', '25-66'),
(343, 'Confessor', 'Render Guilt', 16, 'Thaumaturgy', 'Spell', '20 to 60', 2.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(344, 'Confessor', 'Blood of the Righteous', 36, 'Thaumaturgy', 'Spell', '70 to 90', 2, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(345, 'Confessor', 'The Redeemer', 38, 'Restoration', 'Spell', '74 to 98', 4.5, 40, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(346, 'Confessor', 'Inspiration of the Zealots', 20, 'Restoration', 'Spell', 'null', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(347, 'Confessor', 'Curse the Darkness', 15, 'Thaumaturgy', 'Spell', '20 to 32.8', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '26-54', '43-89', 'Magic', '26-54', '43-89'),
(348, 'Confessor', 'Convert the Shadow', 20, 'Thaumaturgy', 'Spell', '120 to 160', 5, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(349, 'Confessor', 'Visage of Purity', 12, 'Thaumaturgy', 'Spell', '20 to 30', 3, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(350, 'Confessor', 'Visage of the Archons', 42, 'Thaumaturgy', 'Spell', 'null', 5, 300, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(351, 'Crusader', 'Blessing of the Healing Hands', 10, 'Liturgy', 'null', '2 to 42', 1, 1770, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'null', 'null', 'null'),
(352, 'Crusader', 'Holy Mantle', 10, 'Liturgy', 'null', '22 to 60', 4, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(353, 'Crusader', 'Aid to the Faithful', 11, 'Liturgy', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(354, 'Crusader', 'Benediction of Saint Lorne', 12, 'Liturgy', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(355, 'Crusader', 'Consecrate Weapon', 12, 'Liturgy', 'null', 'null', 9, 300, 'null', 'null', 'null', 'null', 0, '17-50', '56-164', 'Holy', '17-50', '56-164'),
(356, 'Crusader', 'Benediction of Saint Clarimus', 13, 'Liturgy', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(357, 'Crusader', 'Censure', 15, 'Liturgy', 'null', '31 to 49.2', 4, 0, 'null', 'null', 'null', 'null', 120, '15-40', '25-74', 'Holy', '15-40', '25-74'),
(358, 'Crusader', 'Saint Alaric', 26, 'Liturgy', 'null', 'null', 2, 0, 'null', 'null', 'null', 'null', 100, 'null', 'null', 'null', 'null', 'null'),
(359, 'Crusader', 'Sacrifice', 30, 'Liturgy', 'null', 'null', 3, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(360, 'Crusader', 'Saint Alaric', 30, 'Liturgy', 'null', '31 to 70', 4, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(361, 'Crusader', 'Darius', 30, 'Liturgy', 'null', 'null', 1.5, 20, 'null', 'null', 'null', 'null', 32, 'null', 'null', 'Holy', 'null', 'null'),
(362, 'Crusader', 'The All-Father', 25, 'Liturgy', 'null', 'null', 2, 600, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(363, 'Crusader', 'All Father', 40, 'Liturgy', 'Spell', '0 to 40', 0.5, 180, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(364, 'Crusader', 'Shield Bash', 10, 'Block', 'null', 'null', 1.6, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(365, 'Crusader', 'Challenge', 10, 'None', 'null', 'null', 0, 15, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(366, 'Doomsayer', 'Unleash Blight', 10, 'Corruption', 'Spell', '20.75 to 50', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(367, 'Doomsayer', 'Confusion', 10, 'Warding', 'Spell', '21 to 60', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(368, 'Doomsayer', 'Halgannon', 20, 'Corruption', 'null', 'null', 2, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(369, 'Doomsayer', 'Dread Gaze of Chaos', 12, 'Corruption', 'Spell', '20 to 80', 3, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(370, 'Doomsayer', 'Vel', 12, 'Corruption', 'Spell', '22 to 62', 4, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(371, 'Doomsayer', 'Touch of Chaos', 15, 'Restoration', 'Spell', '30 to 50', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(372, 'Doomsayer', 'Unleash the Taint', 18, 'Corruption', 'Spell', '55 to 85', 5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(373, 'Doomsayer', 'Sign of Gellegur', 18, 'Corruption', 'Spell', '20 to 50', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(374, 'Doomsayer', 'Glimpse of the Pit', 18, 'Corruption', 'Spell', '40 to 80', 4, 120, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(375, 'Doomsayer', 'Bounty of Chaos', 20, 'Restoration', 'Spell', '40 to 80', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(376, 'Doomsayer', 'Glyph of Madness', 20, 'Corruption', 'Spell', 'null', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(377, 'Doomsayer', 'The Black Binding', 20, 'Corruption', 'Spell', 'null', 3, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'Mental', 'null', 'null'),
(378, 'Doomsayer', 'The Crimson Binding', 20, 'Corruption', 'Spell', 'null', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'Mental', 'null', 'null'),
(379, 'Doomsayer', 'Curse of the Flayed Lord', 22, 'Corruption', 'Spell', 'null', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(380, 'Doomsayer', 'Sign of Vel', 22, 'Corruption', 'Spell', '60 to 90', 5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(381, 'Doomsayer', 'Vengeance of the Pit', 25, 'Corruption', 'Spell', '30 to 70', 3, 120, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(382, 'Doomsayer', 'Blight of Throol', 25, 'Corruption', 'Spell', '30 to 50', 5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(383, 'Doomsayer', 'The Face of Chaos', 25, 'Corruption', 'Spell', '70 to 90', 3, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(384, 'Doomsayer', 'Leech of Souls', 28, 'Corruption', 'Spell', '35 to 55', 5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(385, 'Doomsayer', 'The Black Pact', 30, 'Corruption', 'Spell', '70 to 100', 5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 50, 'null', 'null', 'Mental', 'null', 'null'),
(386, 'Doomsayer', 'The Crimson Pact', 30, 'Corruption', 'Spell', '70 to 100', 5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 50, 'null', 'null', 'Mental', 'null', 'null'),
(387, 'Doomsayer', 'Corrupt the Flesh', 35, 'Corruption', 'Spell', '75 to 85', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(388, 'Doomsayer', 'Gellegur', 40, 'Corruption', 'Spell', '60 to 80', 2, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(389, 'Doomsayer', 'The Green Death', 42, 'Corruption', 'Spell', '60 to 90', 3, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(390, 'Doomsayer', 'The Void', 45, 'Corruption', 'Spell', '120 to 160', 4, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(391, 'Doomsayer', 'Kliszhenk', 48, 'Corruption', 'Spell', '125 to 165', 0.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(392, 'Doomsayer', 'Dread Curse of Veshteroth', 50, 'Debuff', 'Spell', '130 to 170', 0.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(393, 'Druid', 'Serpent', 12, 'Benediction', 'Spell', '15 to 55', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(394, 'Druid', 'Talons of the Beast', 10, 'Nature', 'Spell', '19 to 58', 3.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(395, 'Druid', 'Cloak of Thorns', 13, 'Nature', 'Spell', '15 to 55', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(396, 'Druid', 'Braialla', 16, 'Restoration', 'Spell', 'null', 4, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(397, 'Druid', 'Blight', 15, 'Nature', 'Spell', '45 to 71.8', 3.6, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '6-14', '10-22', 'Poison', '6-14', '10-22'),
(398, 'Druid', 'Regrowth', 15, 'Restoration', 'Spell', '30 to 48', 3.7, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(399, 'Druid', 'Braialla', 22, 'Restoration', 'Spell', '41 to 81', 2, 360, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(400, 'Druid', 'Breath of Spring', 33, 'Restoration', 'Spell', '61 to 101', 6, 900, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 200, 'null', 'null', 'null', 'null', 'null'),
(401, 'Druid', 'Rebirth', 26, 'Restoration', 'Spell', 'null', 11, 0, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(402, 'Druid', 'Grasp of Thorns', 11, 'Nature', 'Spell', '48.16 to 93.4', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '9-18', '12-24', 'Piercing', '9-18', '12-24'),
(403, 'Druid', 'Blessing of the Oak', 15, 'Benediction', 'Spell', '0 to 40', 0, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(404, 'Druid', 'Blessing of the Grove', 15, 'Benediction', 'Spell', '0 to 40', 0, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(405, 'Druid', 'Oaken Flesh', 0, 'Nature', 'Spell', '0 to 40', 0.2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(406, 'Druid', 'Charm Beast', 10, 'Nature', 'Spell', '100 to 140', 5, 600, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(407, 'Druid', 'Hedge of Thorns', 40, 'Nature', 'Spell', '83 to 109.4', 3, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '7-17', '9-22', 'Piercing', '7-17', '9-22'),
(408, 'Druid', 'Earthquake', 50, 'Nature', 'Spell', '49 to 64.6', 6, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 0, '35-105', '46-139', 'Crushing', '35-105', '46-139'),
(409, 'Druid', 'Raptor Cloak', 30, 'Nature', 'Spell', '100 to 140', 5, 1800, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(410, 'Druid', 'Resist Venom', 20, 'Benediction', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(411, 'Druid', 'Poison Ward', 50, 'Benediction', 'Spell', '70 to 110', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(412, 'Druid', 'Resist Fire', 30, 'Benediction', 'Spell', '35 to 75', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(413, 'Druid', 'Flame Ward', 50, 'Benediction', 'Spell', '70 to 110', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(414, 'Druid', 'Resist Cold', 30, 'Benediction', 'Spell', '35 to 75', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(415, 'Druid', 'Ice Ward', 50, 'Benediction', 'Spell', '70 to 110', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(416, 'Druid', 'Call Lightning', 40, 'Nature', 'Spell', '71 to 93.8', 3, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '14-64', '18-84', 'Lightning', '14-64', '18-84'),
(417, 'Druid', 'Braialla', 46, 'Nature', 'Spell', '56 to 74', 4, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'Piercing', 'null', 'null'),
(418, 'Fury', 'Blessing of the Crocodile', 30, 'Warding', 'Spell', '60 to 100', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(419, 'Fury', 'Ward Against Harm', 12, 'Warding', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(420, 'Fury', 'Dampen Rage', 36, 'Stormcalling', 'Spell', '70 to 110', 2, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(421, 'Fury', 'Battle Curse', 50, 'Stormcalling', 'Spell', '140 to 180', 3, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(422, 'Fury', 'Strike Blind', 18, 'Sorcery', 'Spell', '40 to 80', 4, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(423, 'Fury', 'Claws of Blindness', 44, 'Sorcery', 'Spell', '90 to 130', 4, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(424, 'Fury', 'Awaken the Fury', 22, 'Stormcalling', 'Spell', 'null', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(425, 'Fury', 'Flesh Ward', 16, 'Warding', 'Spell', '0 to 40', 0.2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(426, 'Fury', 'Elemental Ward', 16, 'Warding', 'Spell', '0 to 25', 0.2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(427, 'Fury', 'Fury of Ice', 20, 'Stormcalling', 'Spell', '40 to 62.4', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '7-41', '11-64', 'Cold', '7-41', '11-64'),
(428, 'Fury', 'Call the Blizzard', 46, 'Stormcalling', 'Spell', '103 to 136.2', 5, 20, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '12-52', '19-69', 'Cold', '12-52', '19-69'),
(429, 'Fury', 'Call the Sky', 10, 'Stormcalling', 'Spell', '23 to 53.8', 3.6, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '5-31', '12-73', 'Lightning', '5-31', '12-73'),
(430, 'Fury', 'Call Storm', 28, 'Stormcalling', 'Spell', '83 to 122.2', 5, 20, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '12-21', '15-61', 'Lightning', '12-21', '15-61'),
(431, 'Fury', 'Restore Sight', 20, 'Stormcalling', 'Spell', 'null', 2, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(432, 'Fury', 'Break Enchantment', 30, 'Stormcalling', 'Spell', '40 to 80', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(433, 'Fury', 'Remove Hex', 16, 'Stormcalling', 'Spell', '30 to 70', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(434, 'Fury', 'Banish Venom', 21, 'Warding', 'Spell', 'null', 2, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(435, 'Fury', 'Fury of Wind', 40, 'Stormcalling', 'Spell', '84 to 110.8', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '6-21', '8-28', 'Crushing', '6-21', '8-28'),
(436, 'Fury', 'Inflict Poison', 12, 'Stormcalling', 'Spell', '40 to 75.2', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '5-13', '9-24', 'Poison', '5-13', '9-24'),
(437, 'Fury', 'Leech of Blood', 16, 'Stormcalling', 'Spell', '38 to 60.8', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(438, 'Fury', 'Leech of Spirit', 26, 'Stormcalling', 'Spell', 'null', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(439, 'Fury', 'Tame the Sky', 34, 'Stormcalling', 'Spell', '105 to 140', 11, 60, 'No', ':', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(440, 'Fury', 'Bind the Flesh', 10, 'Sorcery', 'Spell', '20 to 60', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(441, 'Fury', 'Curse of Binding', 20, 'Sorcery', 'Spell', '50 to 90', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(442, 'Fury', 'Ice Ward', 42, 'Stormcalling', 'Spell', '79 to 119', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(443, 'Fury', 'Storm Ward', 42, 'Stormcalling', 'Spell', '79 to 119', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(444, 'Fury', 'Draw Nature', 36, 'Stormcalling', 'Spell', '50 to 90', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(445, 'Fury', 'Repel Ice', 30, 'Warding', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(446, 'Fury', 'Sun', 50, 'Warding', 'Spell', '70 to 110', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(447, 'Fury', 'Hex of the Ice Fury', 25, 'Stormcalling', 'Spell', '30 to 70', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(448, 'Fury', 'Repel the Storm', 30, 'Warding', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(449, 'Fury', 'Sky', 50, 'Warding', 'Spell', '70 to 110', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(450, 'Fury', 'Hex of the Storm Fury', 25, 'Stormcalling', 'Spell', '30 to 70', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(451, 'Fury', 'Chant of Frenzy', 18, 'Stormcalling', 'Spell', '33 to 73', 2.5, 300, 'Moderate', ':', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(452, 'Fury', 'Evil Eye', 15, 'Stormcalling', 'Spell', '30 to 70', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(453, 'Fury', 'Sacrifice', 14, 'Stormcalling', 'Spell', '21 to 38.2', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(454, 'Fury', 'Purify', 24, 'Stormcalling', 'Spell', 'null', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(455, 'Huntress', 'Hunt Foe', 10, 'None', 'Skill', 'null', 12, 0, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 1408, 'null', 'null', 'null', 'null', 'null'),
(456, 'Huntress', 'Hunt Prey', 15, 'None', 'Skill', 'null', 12, 0, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 1280, 'null', 'null', 'null', 'null', 'null'),
(457, 'Huntress', 'Amazon', 16, 'Way', 'Skill', '0 to 40', 4, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(458, 'Huntress', 'Grace of the Panther', 14, 'Way', 'Skill', '0 to 40', 4, 300, 'Moderate', ': (player must not be moving while activating this power).', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(459, 'Huntress', 'Vashteera', 14, 'Way', 'Spell', '16 to 28.4', 3.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(460, 'Huntress', 'Chill Ward', 35, 'Way', 'Spell', '35 to 75', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(461, 'Huntress', 'Skyfire Ward', 35, 'Way', 'Spell', '35 to 75', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(462, 'Huntress', 'Beast Lords', 19, 'Way', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(463, 'Huntress', 'Phaedra', 42, 'Way', 'Skill', '69 to 109', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(464, 'Huntress', 'Cry of Vashteera', 10, 'Way', 'Spell', '70 to 110', 0.2, 600, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(465, 'Huntress', 'Fury of Ice', 22, 'Way', 'Spell', '42 to 63.6', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '13-37', '20-56', 'Cold', '13-37', '20-56'),
(466, 'Huntress', 'Call the Sky', 26, 'Way', 'Spell', '44 to 65.2', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '17-53', '25-78', 'Lightning', '17-53', '25-78'),
(467, 'Huntress', 'Phaedra', 15, 'Way', 'Spell', 'null', 1.2, 300, 'Moderate', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(468, 'Huntress', 'Vashteera', 50, 'Way', 'Spell', '165 to 205', 1, 600, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(469, 'Huntress', 'Call to Vashteera', 40, 'Way', 'Spell', 'null', 0.2, 900, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(470, 'Huntress', 'Naargals Dart', 1, 'null', 'null', 'null', 0.2, 20, 'Moderate', ': Requires Bow weapon in left hand.', 'Combat', 'No', 0, 'null', 'null', 'Poison', 'null', 'null'),
(471, 'Huntress', 'Naargals Bite', 1, 'null', 'null', 'null', 0.2, 20, 'Moderate', ': Requires Spear weapon in left hand.', 'Combat', 'No', 0, 'null', 'null', 'Poison', 'null', 'null'),
(472, 'Necromancer', 'Unholy Blast', 10, 'Necromancy', 'Spell', '18 to 42.4', 3.6, 0, 'Moderate', ': Player must not be moving.', 'Either', 'null', 120, '11-25', '26-59', 'Unholy', '11-25', '26-59'),
(473, 'Necromancer', 'Shadowcloak', 10, 'Warding', 'Spell', 'null', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(474, 'Necromancer', 'Unholy Fright', 10, 'Sorcery', 'Spell', '20 to 60', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(475, 'Necromancer', 'Lurking Fear', 12, 'Necromancy', 'Spell', 'null', 3.5, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(476, 'Necromancer', 'Draw Back the Shadows', 13, 'Necromancy', 'Spell', 'null', 2, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(477, 'Necromancer', 'Dread Whispers', 14, 'Necromancy', 'Spell', '20 to 80', 3, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(478, 'Necromancer', 'Shadow of Death', 16, 'Necromancy', 'Spell', '30 to 70', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(479, 'Necromancer', 'Mantle of Corpseflesh', 18, 'Necromancy', 'Spell', 'null', 0.02, 300, 'Moderate', 'null', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(480, 'Necromancer', 'Unholy Storm', 18, 'Necromancy', 'Spell', '36 to 84.8', 3.6, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '10-24', '24-57', 'Unholy', '10-24', '24-57'),
(481, 'Necromancer', 'Spirit Chains', 20, 'Necromancy', 'Spell', '120 to 160', 5, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(482, 'Necromancer', 'Embrace the Void', 20, 'Necromancy', 'Spell', '50 to 90', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(483, 'Necromancer', 'Dim the Light', 24, 'Necromancy', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(484, 'Necromancer', 'Dread Howl', 25, 'Necromancy', 'Spell', '70 to 90', 3, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(485, 'Necromancer', 'Oblivion', 32, 'Necromancy', 'Spell', 'null', 3.5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(486, 'Necromancer', 'Phantasmagoria', 34, 'Necromancy', 'Spell', '44 to 54', 3, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(487, 'Necromancer', 'Unholy Terror', 36, 'Sorcery', 'Spell', '50 to 90', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(488, 'Necromancer', 'Gravechill', 38, 'Necromancy', 'Spell', '80 to 160', 2, 150, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(489, 'Necromancer', 'Sepulchre', 40, 'Necromancy', 'Spell', '88 to 168', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(490, 'Necromancer', 'Gnawing Fear', 42, 'Necromancy', 'Spell', 'null', 4.5, 10, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(491, 'Necromancer', 'Shadow of Doom', 46, 'Necromancy', 'Spell', '65 to 105', 5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(492, 'Necromancer', 'Oblivion', 47, 'Necromancy', 'Spell', 'null', 5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(493, 'Necromancer', 'Douse the Light', 50, 'Warding', 'Spell', '70 to 110', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(494, 'Necromancer', 'Spectre Form', 50, 'Necromancy', 'Spell', '80 to 100', 23, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(495, 'Necromancer', 'Channel the Void', 50, 'Necromancy', 'Spell', '100 to 180', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(496, 'Necromancer', 'Harvest of Dust', 20, 'Necromancy', 'Spell', '120 to 160', 4, 50, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(497, 'Necromancer', 'Harvest of Bones', 40, 'Necromancy', 'Spell', '240 to 320', 4, 75, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(498, 'Nightstalker', 'Fling Holy Water', 10, 'Exorcism', 'null', '17 to 39.8', 2, 0, 'null', 'null', 'null', 'null', 0, '10-14', '24-33', 'null', '10-14', '24-33');
INSERT INTO `powers` (`id`, `Class`, `Name`, `Granted`, `Focus`, `Flag`, `ManaCost`, `CastingTime`, `RecycleTime`, `Hate`, `UserRequirements`, `Combat`, `HitRoll`, `CastRange`, `untrainedDoTDmgRange`, `GMedDoTDmgRange`, `Resist`, `untrainedDmgRange`, `GMedDmgRange`) VALUES
(499, 'Nightstalker', 'Stalker', 10, 'Exorcism', 'null', '15 to 55', 3, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(500, 'Nightstalker', 'Blessing of Daylight', 12, 'Exorcism', 'null', '15 to 55', 4, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(501, 'Nightstalker', 'Annoint Blade', 15, 'Exorcism', 'null', '60 to 80', 9, 300, 'Moderate', 'null', 'Non', 'No', 0, '36-107', '56-164', 'Holy', '36-107', '56-164'),
(502, 'Nightstalker', 'Litany of Discretion', 16, 'Exorcism', 'null', '31 to 71', 2, 30, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(503, 'Nightstalker', 'Banish Death', 18, 'Exorcism', 'null', 'null', 2, 0, 'High', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(504, 'Nightstalker', 'Put to the Torch', 20, 'Exorcism', 'null', '62 to 96.8', 5, 0, 'Moderate', 'null', 'null', 'null', 0, '12', '12', 'null', '12', '12'),
(505, 'Nightstalker', 'Stalker', 22, 'Exorcism', 'null', '16 to 25.2', 2, 30, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(506, 'Nightstalker', 'Stalk the Night', 26, 'None', 'null', 'null', 12, 0, 'No', 'null', 'Non', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(507, 'Nightstalker', 'Litany of Caution', 28, 'Exorcism', 'null', '62 to 102', 2, 30, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(508, 'Nightstalker', 'Stake to the Heart', 32, 'Exorcism', 'null', 'null', 2, 60, 'High', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(509, 'Nightstalker', 'Blessing of Dawn', 0, 'Exorcism', 'null', '60 to 100', 2, 0, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(510, 'Nightstalker', 'Exorcise', 44, 'Exorcism', 'null', 'null', 5, 300, 'High', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(511, 'Nightstalker', 'Ward the Dark', 0, 'Exorcism', 'null', '79 to 119', 4, 0, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(512, 'Nightstalker', 'Fortified Soul', 50, 'Exorcism', 'null', '55 to 95', 2, 5, 'Moderate', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(513, 'Prelate', 'Divine Mantle', 10, 'Benediction', 'Spell', '20 to 60', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(514, 'Prelate', 'Blessed Alacrity', 15, 'Benediction', 'Spell', '25 to 65', 2.5, 0, 'Moderate', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(515, 'Prelate', 'Wrath of the Heavens', 10, 'Liturgy', 'Spell', '10 to 50', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(516, 'Prelate', 'Smite the Dead', 15, 'Liturgy', 'Spell', '20.32 to 32.8', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '20-61', '33-98', 'Holy', '20-61', '33-98'),
(517, 'Prelate', 'Censure', 15, 'Liturgy', 'Spell', '30 to 49.2', 3.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '15-45', '25-74', 'Holy', '15-45', '25-74'),
(518, 'Prelate', 'Saint Lorne', 20, 'Liturgy', 'Spell', '48 to 74.8', 4, 15, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '16-48', '25-75', 'Holy', '16-48', '25-75'),
(519, 'Prelate', 'Saint Alaric', 16, 'Restoration', 'Spell', 'null', 3, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(520, 'Prelate', 'Touch of Saint Wend', 15, 'Restoration', 'Spell', '30 to 48', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(521, 'Prelate', 'Aid to the Injured', 20, 'Restoration', 'Spell', '40 to 62.4', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(522, 'Prelate', 'Sacred Healing', 22, 'Restoration', 'Spell', '41 to 81', 2, 360, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(523, 'Prelate', 'Benediction of Healing', 30, 'Restoration', 'Spell', '57 to 97', 3, 900, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(524, 'Prelate', 'Invocation of Saint Nemmorane', 13, 'Liturgy', 'Spell', '28 to 68', 3, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(525, 'Prelate', 'Condemnation', 16, 'Liturgy', 'Spell', '21 to 60', 1, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(526, 'Prelate', 'Saint Victor', 12, 'Benediction', 'Spell', '20 to 60', 3, 180, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(527, 'Prelate', 'Divine Resurrection', 25, 'Restoration', 'Spell', 'null', 11, 0, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(528, 'Prelate', 'Saint Alaric', 20, 'Benediction', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(529, 'Prelate', 'Saint Alaric', 50, 'Benediction', 'Spell', '70 to 110', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(530, 'Prelate', 'Withstand the Darkness', 20, 'Liturgy', 'Spell', '30 to 70', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(531, 'Prelate', 'Mark of the All-Father', 35, 'Liturgy', 'Spell', 'null', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, '7-17', '11-27', 'Holy', '7-17', '11-27'),
(532, 'Priest', 'Blessed Alacrity', 12, 'Benediction', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(533, 'Priest', 'Holy Righteousness', 10, 'Benediction', 'Spell', '20 to 60', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(534, 'Priest', 'Divine Aid', 16, 'Restoration', 'Spell', 'null', 2, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(535, 'Priest', 'Tend the Wounded', 20, 'Restoration', 'Spell', '40 to 62.4', 2.5, 0.5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(536, 'Priest', 'Blessed Restoration', 15, 'Restoration', 'Spell', '30 to 48', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(537, 'Priest', 'Sacred Healing', 22, 'Restoration', 'Spell', '41 to 81', 2, 360, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(538, 'Priest', 'Benediction of Healing', 30, 'Restoration', 'Spell', '57 to 97', 2, 900, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(539, 'Priest', 'Work Holy Miracle', 25, 'Restoration', 'Spell', 'null', 11, 0, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(540, 'Priest', 'Grasp of the All-Father', 13, 'Theurgy', 'Spell', '25 to 65', 0.5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(541, 'Priest', 'Prayer of Haste', 15, 'Benediction', 'Spell', 'null', 0.2, 300, 'Moderate', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(542, 'Priest', 'Divine Sanction', 12, 'Theurgy', 'Spell', '25 to 65', 2, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(543, 'Priest', 'Sacred Bonds', 10, 'Theurgy', 'Spell', '21 to 60', 3.5, 58.5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(544, 'Priest', 'Calming Touch', 14, 'Theurgy', 'Spell', '26 to 65', 3, 29.5, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(545, 'Priest', 'Calming Word', 29, 'Theurgy', 'Spell', '80 to 120', 4, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(546, 'Priest', 'Divine Condemnation', 12, 'Theurgy', 'Spell', '26 to 65', 1, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(547, 'Priest', 'Blessed Purity', 14, 'Theurgy', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(548, 'Priest', 'Divine Word', 16, 'Theurgy', 'Spell', '70 to 110', 4, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(549, 'Priest', 'Holy Curse', 10, 'Theurgy', 'Spell', '19 to 59', 1, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(550, 'Priest', 'Sanction', 27, 'Theurgy', 'Spell', '1 to 41', 2, 3, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(551, 'Priest', 'Psalm of Sanction', 42, 'Theurgy', 'Spell', '1 to 41', 1, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(552, 'Priest', 'Sacred Rejuvenation', 22, 'Restoration', 'Spell', '41 to 81', 2, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(553, 'Priest', 'Benediction of Rejuvenation', 30, 'Restoration', 'Spell', '57 to 97', 2, 900, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(554, 'Priest', 'Prayer of Recovery', 50, 'Restoration', 'Spell', '105 to 138.6', 6, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(555, 'Priest', 'Divine Recovery', 18, 'Restoration', 'Spell', '52 to 81.2', 2.5, 0.5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(556, 'Priest', 'Prayer of Protection', 18, 'Benediction', 'Spell', 'null', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(557, 'Priest', 'Banish the Darkness', 50, 'Theurgy', 'Spell', '60 to 100', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(558, 'Priest', 'Incantation of Renunciation', 35, 'Theurgy', 'null', 'null', 1, 2, 'null', 'null', 'null', 'null', 100, 'null', 'null', 'null', 'null', 'null'),
(559, 'Priest', 'Empowered Healing', 35, 'Theurgy', 'Spell', 'null', 2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(560, 'Ranger', 'Hunt Foe', 10, 'None', 'Skill', 'null', 12, 0, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 1280, 'null', 'null', 'null', 'null', 'null'),
(561, 'Ranger', 'Hunt Prey', 20, 'None', 'Skill', 'null', 12, 0, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 1280, 'null', 'null', 'null', 'null', 'null'),
(562, 'Ranger', 'Braialla', 30, 'Beastcraft', 'Spell', 'null', 2, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(563, 'Ranger', 'Charm Beast', 10, 'Beastcraft', 'Spell', '26 to 58', 5, 600, 'No', ':', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(564, 'Ranger', 'Turn Steel', 13, 'Beastcraft', 'Skill', '16 to 48', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(565, 'Ranger', 'Wolf', 16, 'Beastcraft', 'Skill', '12 to 44', 4, 0, 'Moderate', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(566, 'Ranger', 'Braialla', 21, 'Beastcraft', 'Skill', '43 to 75', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(567, 'Ranger', 'Braialla', 27, 'Beastcraft', 'Skill', '46 to 78', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(568, 'Ranger', 'Mend Wounds', 33, 'Beastcraft', 'Spell', '25 to 33.8', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(569, 'Ranger', 'Herb Lore', 36, 'Beastcraft', 'Skill', 'null', 4, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(570, 'Ranger', 'Race the Hare', 38, 'Beastcraft', 'Spell', 'null', 0.2, 300, 'Moderate', ': None', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(571, 'Ranger', 'Grasp of Thorns', 40, 'Beastcraft', 'Spell', '67 to 88.6', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '9-18', '12-24', 'Piercing', '9-18', '12-24'),
(572, 'Ranger', 'Beast Lord', 44, 'Beastcraft', 'Spell', '48 to 80', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(573, 'Ranger', 'Bite of the Pack', 47, 'Beastcraft', 'Skill', '50 to 82', 4, 0, 'Moderate', ':', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(574, 'Ranger', 'Wolfskin', 50, 'Beastcraft', 'Spell', '132 to 164', 5, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'Unknown', 'null', 'null'),
(575, 'Scout', 'Detect Hidden', 10, 'None', 'null', 'null', 3, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(576, 'Scout', 'Reveal', 20, 'None', 'null', 'null', 4, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(577, 'Scout', 'Camouflage', 25, 'None', 'null', 'null', 5, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(578, 'Scout', 'Pathfinding', 15, 'None', 'null', 'null', 0.2, 300, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(579, 'Scout', 'Rapid Shot', 20, 'Archery', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(580, 'Scout', 'Precision', 20, 'Archery', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(581, 'Scout', 'Hunt Foe', 15, 'None', 'null', 'null', 12, 0, 'null', 'null', 'null', 'null', 1408, 'null', 'null', 'null', 'null', 'null'),
(582, 'Scout', 'Hunt Prey', 30, 'None', 'null', 'null', 12, 0, 'null', 'null', 'null', 'null', 1280, 'null', 'null', 'null', 'null', 'null'),
(583, 'Sentinel', 'Litany of Hedrusiel', 10, 'Abjuration', 'null', '21 to 60', 4, 0, 'null', 'null', 'null', 'null', 50, 'null', 'null', 'null', 'null', 'null'),
(584, 'Sentinel', 'Pious Word of Binding', 18, 'Abjuration', 'null', '25 to 55', 3, 0, 'null', 'null', 'null', 'null', 30, 'null', 'null', 'null', 'null', 'null'),
(585, 'Sentinel', 'Blessed Word of Binding', 15, 'Abjuration', 'null', '22 to 82', 3, 0, 'null', 'null', 'null', 'null', 30, 'null', 'null', 'null', 'null', 'null'),
(586, 'Sentinel', 'Righteous Word of Binding', 20, 'Abjuration', 'null', '30 to 40', 4, 10, 'null', 'null', 'null', 'null', 0, '15-45', '25-74', 'Holy', '15-45', '25-74'),
(587, 'Sentinel', 'Holy Word of Binding', 30, 'Abjuration', 'null', '35 to 65', 1.5, 10, 'null', 'null', 'null', 'null', 30, 'null', 'null', 'null', 'null', 'null'),
(588, 'Sentinel', 'Sentinel', 35, 'Abjuration', 'null', 'null', 2, 300, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(589, 'Sentinel', 'Exalted Word of Binding', 40, 'Abjuration', 'null', '60 to 70', 0.2, 30, 'null', 'null', 'null', 'null', 120, 'null', 'null', 'null', 'null', 'null'),
(590, 'Sentinel', 'Archonic Word of Binding', 45, 'Abjuration', 'null', '55 to 75', 3, 0, 'null', 'null', 'null', 'null', 30, 'null', 'null', 'null', 'null', 'null'),
(591, 'Sentinel', 'Divine Word of Binding', 50, 'Abjuration', 'null', 'null', 6, 1200, 'null', 'null', 'null', 'null', 0, '65-210', '86-277', 'Holy', '65-210', '86-277'),
(592, 'Sentinel', 'Dangiriel', 12, 'Abjuration', 'null', 'null', 4, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(593, 'Sentinel', 'Challenge', 10, 'None', 'null', 'null', 0, 15, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(594, 'Templar', 'Challenge', 10, 'null', 'Skill', 'null', 0, 15, 'High', ':', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(595, 'Templar', 'Cleansing Flame', 10, 'Thaumaturgy', 'Spell', '31 to 73.4', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '3-11', '7-26', 'Fire', '3-11', '7-26'),
(596, 'Templar', 'Purge Sin', 10, 'Thaumaturgy', 'Spell', '23 to 53.8', 4, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(597, 'Templar', 'Blessed Zeal', 12, 'Thaumaturgy', 'Spell', '15 to 45', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(598, 'Templar', 'Burden of Sin', 14, 'Thaumaturgy', 'Spell', '18 to 48', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(599, 'Templar', 'Smite the Dead', 16, 'Thaumaturgy', 'Spell', '20 to 32.8', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '26-54', '43-89', 'Magic', '26-54', '43-89'),
(600, 'Templar', 'Shackles of Sin', 16, 'Thaumaturgy', 'Spell', '21 to 51', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(601, 'Templar', 'Invoke the Sacred Flame', 20, 'Thaumaturgy', 'Spell', '25 to 55', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(602, 'Templar', 'Touch of the Martyr', 22, 'Thaumaturgy', 'Spell', '52 to 78.8', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(603, 'Templar', 'Sway the Balance', 27, 'Thaumaturgy', 'Spell', '20 to 50', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(604, 'Templar', 'Flames of Retribution', 30, 'Thaumaturgy', 'Spell', '60 to 90', 5, 120, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(605, 'Templar', 'Redeem the Shadow', 32, 'Thaumaturgy', 'Spell', '42 to 72', 5, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(606, 'Templar', 'Curse of Sloth', 36, 'Thaumaturgy', 'Spell', '53 to 71.8', 3, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(607, 'Templar', 'Saint Malorn', 40, 'Thaumaturgy', 'Spell', '53 to 83', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(608, 'Templar', 'Saint Malorn', 44, 'Thaumaturgy', 'Spell', '32 to 42', 4, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 0, '18-72', '24-95', 'Fire', '18-72', '24-95'),
(609, 'Templar', 'Blessing of the Sacred Flame', 45, 'Thaumaturgy', 'Spell', '69 to 99', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(610, 'Templar', 'Consume Wickedness', 47, 'Thaumaturgy', 'Spell', '90 to 117.2', 5, 40, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(611, 'Templar', 'Wages of Sin', 49, 'Thaumaturgy', 'Spell', '60 to 90', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(612, 'Templar', 'Wings of the Seraphim', 50, 'Thaumaturgy', 'Spell', 'null', 1, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'Unknown', 'null', 'null'),
(613, 'Templar', 'Sword of Saint Malorn', 1, 'null', 'null', 'null', 0.2, 20, 'No', 'null', 'Combat', 'Yes', 0, 'null', 'null', 'Fire', 'null', 'null'),
(614, 'Thief', 'Coughing Gas', 20, 'None', 'null', 'null', 0.2, 120, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(615, 'Thief', 'Crippling Blow', 30, 'None', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'No', 20, 'null', 'null', 'null', 'null', 'null'),
(616, 'Thief', 'Retreat', 15, 'None', 'null', 'null', 0.2, 300, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(617, 'Thief', 'Passwall', 40, 'null', 'null', 'null', 6, 300, 'null', 'null', 'null', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(618, 'Thief', 'Peek', 10, 'None', 'null', 'null', 0.2, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(619, 'Thief', 'Steal', 20, 'None', 'null', 'null', 0.2, 51, 'null', 'null', 'Non', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(620, 'Thief', 'Indomitable Will', 20, 'None', 'null', 'null', 0, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(621, 'Thief', 'Wall of Steel', 10, 'None', 'Spell', 'null', 0.2, 525, 'No', ':', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(622, 'Thief', 'Backstab', 10, 'null', 'null', 'null', 0.2, 90, 'null', ': You must be sneaking to use this power. Forbids Archery weapon in right hand. Forbids Archery weapon in left hand. Forbids Throwing weapon in right hand.', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(623, 'Thief', 'Buchinine', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Disease', 'null', 'null'),
(624, 'Thief', 'Galpa', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'null', 'null', 'null'),
(625, 'Thief', 'Gorgon', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'null', 'null', 'null'),
(626, 'Thief', 'Magusbane', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Poison', 'null', 'null'),
(627, 'Thief', 'Pellegorn', 10, 'None', 'null', 'null', 0.2, 30, 'null', 'null', 'null', 'null', 10, 'null', 'null', 'Poison', 'null', 'null'),
(628, 'Warlock', 'Calm', 12, 'Warlockry', 'Spell', 'null', 3.5, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(629, 'Warlock', 'Mindwipe', 32, 'Warlockry', 'Spell', 'null', 3.5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(630, 'Warlock', 'Total Mindwipe', 42, 'Warlockry', 'Spell', 'null', 5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(631, 'Warlock', 'Danger Sense', 12, 'Warlockry', 'Spell', '15 to 55', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(632, 'Warlock', 'Battlemind', 22, 'Warlockry', 'Spell', '25 to 65', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(633, 'Warlock', 'Dominate', 28, 'Warlockry', 'Spell', '85 to 125', 5, 600, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(634, 'Warlock', 'Mind and Body One', 26, 'Warlockry', 'Spell', '20 to 60', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(635, 'Warlock', 'Surpass Limits', 10, 'Warlockry', 'Spell', 'null', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(636, 'Warlock', 'Psychic Shield', 18, 'Warlockry', 'Spell', '0 to 40', 0.2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(637, 'Warlock', 'Mental Shield', 18, 'Warlockry', 'Spell', '20 to 40', 0.2, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(638, 'Warlock', 'Mental Backlash', 30, 'Warlockry', 'Spell', '20 to 60', 5, 120, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(639, 'Warlock', 'Mind Strike', 10, 'Warlockry', 'Spell', '23 to 53.8', 3.6, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '14-22', '33-52', 'Mental', '14-22', '33-52'),
(640, 'Warlock', 'Psychic Shout', 16, 'Warlockry', 'Spell', '26 to 41.2', 3.6, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '22-32', '35-51', 'Mental', '22-32', '35-51'),
(641, 'Warlock', 'Break Enchantment', 24, 'Warlockry', 'Spell', '20 to 60', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(642, 'Warlock', 'Needs of the One', 30, 'Warlockry', 'Spell', 'null', 4.5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 0, 'null', 'null', 'null', 'null', 'null'),
(643, 'Warlock', 'Unleash Nightmare', 14, 'Warlockry', 'Spell', '18 to 58', 4, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(644, 'Warlock', 'Levitation', 22, 'Warlockry', 'Spell', '105 to 140', 6, 0, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(645, 'Warlock', 'Psychic Healing', 26, 'Warlockry', 'Spell', '26 to 38.8', 3, 6, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(646, 'Warlock', 'Dull the Mind', 20, 'Warlockry', 'Spell', '25 to 65', 0.2, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(647, 'Warlock', 'Free Thought', 34, 'Warlockry', 'Spell', '20 to 60', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(648, 'Warlock', 'Hypnotic Gaze', 10, 'Warlockry', 'Spell', '13 to 53', 4, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(649, 'Warlock', 'Hypnotic Aura', 40, 'Warlockry', 'Spell', '53 to 93', 5.5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(650, 'Warlock', 'Fortress of the Mind', 36, 'Warlockry', 'Spell', '48 to 88', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(651, 'Warlock', 'Ignore the Old Order', 20, 'Warlockry', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(652, 'Warlock', 'Mind Ward', 24, 'Warlockry', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(653, 'Warlock', 'Shatter Will', 16, 'Warlockry', 'Spell', '21 to 61', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(654, 'Warlock', 'Mind Snare', 18, 'Warlockry', 'Spell', '20 to 60', 2, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(655, 'Warlock', 'Mind Trap', 38, 'Warlockry', 'Spell', '40 to 80', 3.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(656, 'Warlock', 'Dull the Body', 14, 'Warlockry', 'Spell', '18 to 58', 0.2, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(657, 'Warlock', 'Mental Projection', 50, 'Warlockry', 'Spell', '165 to 205', 2, 1800, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(658, 'Warrior', 'Shield Bash', 10, 'Block', 'null', 'null', 1.6, 0, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(659, 'Warrior', 'Challenge', 10, 'None', 'null', 'null', 0, 15, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(660, 'Warrior', 'Indomitable Will', 15, 'None', 'null', 'null', 0, 30, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(661, 'Warrior', 'Hold Fast', 20, 'None', 'null', 'null', 1, 597, 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
(662, 'Wizard', 'Mystic Bolt', 10, 'Wizardry', 'Spell', '18 to 42.4', 3.6, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '11-25', '26-59', 'Magic', '11-25', '26-59'),
(663, 'Wizard', 'Sign of Sorthoth', 20, 'Sorcery', 'Spell', '64 to 99.6', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, '7-17', '11-27', 'Magic', '7-17', '11-27'),
(664, 'Wizard', 'Mystic Backlash', 36, 'Sorcery', 'Spell', '84 to 114.4', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'Magic', 'null', 'null'),
(665, 'Wizard', 'Consume the Will', 40, 'Sorcery', 'Spell', 'null', 5, 40, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(666, 'Wizard', 'Leech the Will', 50, 'Sorcery', 'Spell', 'null', 4.5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, 'null', 'null', 'null', 'null', 'null'),
(667, 'Wizard', 'Word of Power', 14, 'Warding', 'Spell', '15 to 55', 1, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 0, 'null', 'null', 'null', 'null', 'null'),
(668, 'Wizard', 'Hexgram Ritual', 16, 'Wizardry', 'Spell', '30 to 70', 1.5, 10, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(669, 'Wizard', 'Sign of Glauror', 46, 'Wizardry', 'Spell', '65 to 105', 5, 30, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(670, 'Wizard', 'Sign of Disruption', 28, 'Warding', 'Spell', '51 to 91', 2, 3, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(671, 'Wizard', 'Counterspell', 12, 'Warding', 'Spell', '15 to 55', 2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(672, 'Wizard', 'Charm of Binding', 18, 'Warding', 'Spell', '20 to 60', 0.2, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(673, 'Wizard', 'Sign of H', 15, 'Sorcery', 'Spell', '28 to 68', 1, 5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(674, 'Wizard', 'Translocation', 12, 'Wizardry', 'Spell', 'null', 5.5, 60, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(675, 'Wizard', 'Greater Translocation', 44, 'Wizardry', 'Spell', 'null', 7, 120, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(676, 'Wizard', 'Greater Astral Tether', 30, 'Sorcery', 'Spell', 'null', 10, 300, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(677, 'Wizard', 'Charm of Protection', 20, 'Warding', 'Spell', '36 to 76', 0.2, 300, 'Moderate', ': Player can be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(678, 'Wizard', 'Magic Ward', 20, 'Warding', 'Spell', 'null', 2, 300, 'Moderate', 'null', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(679, 'Wizard', 'Mystic Ward', 24, 'Warding', 'Spell', '25 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(680, 'Wizard', 'Circle of Warding', 50, 'Warding', 'Spell', '70 to 110', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(681, 'Wizard', 'Mystic Shield', 10, 'Warding', 'Spell', 'null', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(682, 'Wizard', 'Cloak of Obscurity', 50, 'Wizardry', 'Spell', '80 to 100', 23, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(683, 'Wizard', 'Charm of Illumination', 10, 'Sorcery', 'Spell', '40 to 80', 0.2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(684, 'Wizard', 'Incantation of Illumination', 30, 'Sorcery', 'Spell', '90 to 130', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(685, 'Wizard', 'Charm of Insight', 20, 'Wizardry', 'Spell', '50 to 90', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(686, 'Wizard', 'Chant of Insight', 50, 'Wizardry', 'Spell', '120 to 160', 5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(687, 'Wizard', 'Charm of Haste', 22, 'Wizardry', 'Spell', '30 to 70', 4.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(688, 'Wizard', 'Conjure Familiar', 10, 'Wizardry', 'Spell', '121 to 160', 7, 592.5, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(689, 'Wizard', 'Conjure True Familiar', 40, 'Wizardry', 'Spell', '160 to 170', 7, 600, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(690, 'Wizard', 'Incantation of Augmentation', 24, 'Wizardry', 'Spell', '44 to 84', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(691, 'Wizard', 'Incantation of Rejuvenation', 18, 'Wizardry', 'Spell', '18 to 28.4', 4.2, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(692, 'Wizard', 'Charm of Peace', 12, 'Wizardry', 'Spell', 'null', 3.5, 0, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(693, 'Wizard', 'Incantation of Pacification', 42, 'Wizardry', 'Spell', 'null', 4.5, 10, 'High', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(694, 'Wizard', 'Charm of Amnesia', 32, 'Wizardry', 'Spell', 'null', 3.5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(695, 'Wizard', 'Incantation of Disorientation', 47, 'Wizardry', 'Spell', 'null', 5, 30, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(696, 'Wizard', 'Sign of Veshteroth', 14, 'Wizardry', 'Spell', '25 to 65', 3.5, 300, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(697, 'Wizard', 'Charm of Confusion', 16, 'Wizardry', 'Spell', '34 to 70', 4, 54, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 120, 'null', 'null', 'null', 'null', 'null'),
(698, 'Wizard', 'Chant of Confusion', 46, 'Wizardry', 'Spell', '70 to 110', 3.5, 60, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(699, 'Mage', 'Shielding', 1, 'Warding', 'Spell', '26 to 65', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(700, 'Mage', 'Reflection', 7, 'Warding', 'Spell', '13 to 52', 4, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 50, 'null', 'null', 'null', 'null', 'null'),
(701, 'Mage', 'Mage Bolt', 1, 'Sorcery', 'Spell', '9.48 to 28.2', 2.5, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 120, '5-12', '16-39', 'Magic', '5-12', '16-39'),
(702, 'Mage', 'Enfeeblement', 5, 'Sorcery', 'Spell', '11 to 50', 2, 5, 'Moderate', ': Player may be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(703, 'Mage', 'Blood Boil', 3, 'Sorcery', 'Spell', '20.92 to 56.8', 3, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, '2-7', '6-20', 'Fire', '2-7', '6-20'),
(704, 'Mage', 'Spectral Bonds', 9, 'Warding', 'Spell', '16 to 55', 0.5, 29.5, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(705, 'Mage', 'Weakening', 5, 'Sorcery', 'Spell', '11 to 50', 2, 5, 'Moderate', ': Player may be moving when he activates this power.', 'Either', 'No', 100, 'null', 'null', 'null', 'null', 'null'),
(706, 'Mage', 'Stun', 7, 'Warding', 'Spell', '16 to 55', 1, 0, 'Moderate', ': Player must not be moving when he activates this power.', 'Either', 'Yes', 100, 'null', 'null', 'null', 'null', 'null'),
(707, 'Mage', 'Lore of the Ancients', 3, 'Sorcery', 'Spell', 'null', 4, 0, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 10, 'null', 'null', 'null', 'null', 'null'),
(708, 'Mage', 'Astral Tether', 20, 'Sorcery', 'Spell', 'null', 7, 300, 'No', ': Player must not be moving when he activates this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(709, 'Mage', 'Lesser Mage Bolt', 40, 'Sorcery', 'Spell', 'null', 0, 3, 'Moderate', ': Player may use this power while moving.', 'Either', 'Yes', 120, 'null', 'null', 'Magic', 'null', 'null'),
(710, 'Mage', 'Sprint', 1, 'None', 'Skill', 'null', 0.2, 120, 'No', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(711, 'Mage', 'Traveling Stance', 1, 'None', 'Spell', 'null', 5, 60, 'No', ': Player must not be moving when activating this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(712, 'Mage', 'Kick', 1, 'null', 'null', 'null', 0.2, 20, 'Moderate', ': None', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(713, 'Fighter', 'Wall of Steel', 10, 'None', 'Skill', 'null', 0.2, 525, 'No', ':', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(714, 'Fighter', 'Shield Block', 10, 'None', 'Skill', 'null', 0.2, 525, 'No', ':', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(715, 'Fighter', 'Sprint', 1, 'None', 'Skill', 'null', 0.2, 120, 'No', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(716, 'Fighter', 'Traveling Stance', 1, 'None', 'Spell', 'null', 5, 60, 'No', ': Player must not be moving when activating this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(717, 'Fighter', 'Kick', 1, 'null', 'null', 'null', 0.2, 20, 'Moderate', ': None', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(718, 'Rogue', 'Evasion', 10, 'None', 'Skill', 'null', 0.2, 525, 'No', ':', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(719, 'Rogue', 'Hide', 2, 'None', 'Skill', 'null', 9.7, 10, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(720, 'Rogue', 'Reveal Thyself', 2, 'None', 'Spell', 'null', 0.2, 0.2, 'No', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(721, 'Rogue', 'Sneak', 9, 'None', 'Skill', 'null', 10, 30, 'No', ': Player must not be moving when he activates this power.', 'Non', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(722, 'Rogue', 'Sprint', 1, 'None', 'Skill', 'null', 0.2, 120, 'No', ':', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(723, 'Rogue', 'Traveling Stance', 1, 'None', 'Spell', 'null', 5, 60, 'No', ': Player must not be moving when activating this power.', 'Either', 'No', 0, 'null', 'null', 'null', 'null', 'null'),
(724, 'Rogue', 'Kick', 1, 'null', 'null', 'null', 0.2, 20, 'Moderate', ': None', 'Combat', 'No', 0, 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `prefix`
--

CREATE TABLE `prefix` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Requirements` text COLLATE utf8_unicode_ci NOT NULL,
  `Bonus` text COLLATE utf8_unicode_ci NOT NULL,
  `Type` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prefix`
--

INSERT INTO `prefix` (`id`, `Name`, `Requirements`, `Bonus`, `Type`) VALUES
(1, 'Truewoven', 'Head, Chest, Arms, Legs, Hands, Feet', '5.5', 'Slashing'),
(2, 'Trueshaped', 'Head, Chest, Arms, Legs, Hands, Feet', '5.5', 'Piercing'),
(3, 'Legendary', 'Main', '150', 'Atr');

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `HealthBonus` int(11) NOT NULL,
  `ManaBonus` int(11) NOT NULL,
  `StaminaBonus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `Name`, `HealthBonus`, `ManaBonus`, `StaminaBonus`) VALUES
(1, 'Assassin', 50, 16, 0),
(2, 'Barbarian', 65, 0, 0),
(3, 'Bard', 51, 16, 0),
(4, 'Channeler', 45, 18, 0),
(5, 'Confessor', 45, 16, 0),
(6, 'Crusader', 51, 14, 0),
(7, 'Doomsayer', 45, 20, 0),
(8, 'Druid', 45, 16, 0),
(9, 'Fury', 45, 20, 0),
(10, 'Huntress', 51, 12, 0),
(11, 'Necromancer', 45, 20, 0),
(12, 'Nightstalker', 50, 16, 0),
(13, 'Prelate', 45, 16, 0),
(14, 'Priest', 45, 16, 0),
(15, 'Ranger', 51, 12, 0),
(16, 'Scout', 51, 0, 0),
(17, 'Sentinel', 60, 16, 0),
(18, 'Templar', 62, 14, 0),
(19, 'Thief', 51, 0, 0),
(20, 'Warlock', 51, 15, 0),
(21, 'Warrior', 60, 0, 0),
(22, 'Wizard', 45, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `Race` text COLLATE utf8_unicode_ci NOT NULL,
  `Base Strength` int(11) NOT NULL,
  `Max Strength` int(11) NOT NULL,
  `Base Dexterity` int(11) NOT NULL,
  `Max Dexterity` int(11) NOT NULL,
  `Base Constitution` int(11) NOT NULL,
  `Max Constitution` int(11) NOT NULL,
  `Base Intelligence` int(11) NOT NULL,
  `Max Intelligence` int(11) NOT NULL,
  `Base Spirit` int(11) NOT NULL,
  `Max Spirit` int(11) NOT NULL,
  `BaseClasses` text COLLATE utf8_unicode_ci NOT NULL,
  `Professions` text COLLATE utf8_unicode_ci NOT NULL,
  `StatPoints` int(11) NOT NULL,
  `HealthBonus` int(11) NOT NULL,
  `ManaBonus` int(11) NOT NULL,
  `StaminaBonus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`id`, `Race`, `Base Strength`, `Max Strength`, `Base Dexterity`, `Max Dexterity`, `Base Constitution`, `Max Constitution`, `Base Intelligence`, `Max Intelligence`, `Base Spirit`, `Max Spirit`, `BaseClasses`, `Professions`, `StatPoints`, `HealthBonus`, `ManaBonus`, `StaminaBonus`) VALUES
(1, 'Aelfborn', 40, 95, 50, 100, 40, 95, 45, 105, 35, 85, '1111', '1111011111111111101111', 25, 0, 30, 70),
(2, 'Aracoix', 50, 115, 55, 120, 45, 105, 35, 85, 30, 85, '1110', '1110000001000111001110', 15, 0, 20, 70),
(3, 'Centaur', 45, 110, 35, 85, 55, 125, 35, 85, 50, 105, '1100', '0100010101001110100010', 20, 5, 15, 70),
(4, 'Dwarf', 45, 110, 35, 80, 60, 140, 30, 70, 40, 100, '1100', '0000010000001100100010', 15, 30, 15, 90),
(5, 'Elf', 35, 70, 60, 140, 35, 70, 50, 120, 40, 100, '1111', '1011011111101111101011', 15, 0, 35, 70),
(6, 'Half-Giant', 60, 150, 40, 65, 60, 140, 30, 85, 30, 60, '1000', '0100010001000010110010', 20, 20, 5, 70),
(7, 'Human', 40, 100, 40, 100, 40, 100, 40, 100, 40, 100, '1111', '1111111111111111111111', 30, 0, 25, 70),
(8, 'Irekei', 40, 85, 55, 130, 40, 90, 45, 110, 30, 85, '1111', '1011000011010111001011', 15, 0, 20, 70),
(9, 'Minotaur', 75, 170, 25, 70, 70, 140, 25, 65, 25, 65, '1100', '0100001000000000000010', 15, 20, 0, 70),
(10, 'Nephilim', 55, 140, 15, 60, 40, 90, 65, 130, 30, 80, '1111', '11110010100001001111', 15, 0, 35, 70),
(11, 'Shade', 40, 90, 50, 115, 40, 95, 45, 110, 30, 90, '1011', '100100000001011001111', 20, 0, 30, 70),
(12, 'Vampire', 45, 120, 50, 120, 45, 120, 50, 120, 30, 65, '1011', '100000000100001001111', 5, 40, 0, 70);

-- --------------------------------------------------------

--
-- Table structure for table `resists`
--

CREATE TABLE `resists` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Race` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resists`
--

INSERT INTO `resists` (`id`, `Name`, `Race`) VALUES
(1, 'Slashing', ''),
(2, 'Piercing', ''),
(3, 'Crushing', ''),
(4, 'Poison', ''),
(5, 'Lightning', ''),
(6, 'Magic', ''),
(7, 'Fire', ''),
(8, 'Cold', ''),
(9, 'Mental', ''),
(10, 'Holy', ''),
(11, 'Unholy', ''),
(12, 'Bleed', '');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `StatBase` text COLLATE utf8_unicode_ci NOT NULL,
  `Race` text COLLATE utf8_unicode_ci NOT NULL,
  `BaseClass` text COLLATE utf8_unicode_ci NOT NULL,
  `Trait` text COLLATE utf8_unicode_ci NOT NULL,
  `Class` text COLLATE utf8_unicode_ci NOT NULL,
  `Discipline` text COLLATE utf8_unicode_ci NOT NULL,
  `MasteryRune` text COLLATE utf8_unicode_ci NOT NULL,
  `Type` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `Name`, `StatBase`, `Race`, `BaseClass`, `Trait`, `Class`, `Discipline`, `MasteryRune`, `Type`) VALUES
(1, 'Hammer', 'Str', '', '', '', '', '', '', ''),
(2, 'Restoration', 'Spr', '', 'Healer', '', '', '', '', ''),
(3, 'Abjuration', 'Spr', '', '', '', 'Sentinel', '', '', 'Spell'),
(4, 'Archery', 'Dex', '', '', '', 'Scout', 'Archer', '', 'Weapon'),
(5, 'Athletics', 'Con', '', '', '', '', '', '', 'Stamina'),
(6, 'Axe', 'Str', 'Dwarf', 'Fighter', 'Proficient with Axes', 'Barbarian, Ranger, Huntress', 'Giant Killer, Huntsman', '', 'Weapon'),
(7, 'Axe Mastery', 'Str', '', '', '', 'Barbarian, Huntress, Ranger, Sentinel, Warrior', '', 'Master of Axes', 'Weapon'),
(8, 'Bargaining', '', '', '', '', 'Thief', '', '', 'Misc'),
(9, 'BeastCraft', 'Dex', '', '', '', 'Ranger', '', '', 'Spell'),
(10, 'Benediction', 'Spr', '', 'Healer', '', '', '', '', 'Spell'),
(11, 'Blade Mastery', 'Dex', '', '', '', '', 'Blade Master', '', 'Weapon'),
(12, 'Blade Weaving', 'Dex', '', '', '', '', 'Blade Weaver', '', 'Weapon'),
(13, 'Block', 'Str', '', '', '', '', '', '', 'PD'),
(14, 'BloodCraft', 'Con', '', '', '', '', '', '', 'Spell'),
(15, 'Bow', 'Dex', '', 'Fighter, Rogue', 'Proficient with Bows', 'Huntress, Ranger, Scout', 'Archer', '', 'Weapon'),
(16, 'Channeling', 'Spr', '', '', '', 'Channeler', '', '', 'Spell'),
(17, 'Corruption', 'Spr', '', '', '', 'Doomsayer', '', '', 'Spell'),
(18, 'Crossbow', 'Dex', '', '', 'Proficient with Crossbows', 'Nightstalker, Thief, Warrior', '', '', 'Weapon'),
(19, 'Dagger', 'Dex', '', 'Fighter, Mage, Rogue', 'Proficient with Daggers', 'Druid', 'Black Mask', 'Master of Daggers', 'Weapon'),
(20, 'Dagger Mastery', 'Dex', '', '', '', 'Assassin, Nightstalker, Scout, Thief, Warrior', 'Black Mask', 'Master of Daggers', 'Weapon'),
(21, 'Dodge', 'Dex', '', 'Rogue', '', '', '', '', 'PD'),
(22, 'Exorcism', 'Spr', '', '', '', 'Nightstalker', '', '', 'Spell'),
(23, 'Flame Calling', 'Spr', '', '', '', '', 'Blood Prophet', '', 'Spell'),
(24, 'Great Axe Mastery', 'Str', '', '', '', 'Barbarian, Crusader, Sentinel, Warrior', '', 'Master of Great Axes', 'Weapon'),
(25, 'Great Hammer Mastery', 'Str', '', '', '', 'Barbarian, Crusader, Sentinel, Warrior', '', 'Master of Great Hammers', 'Weapon'),
(26, 'Great Sword Mastery', 'Str', '', '', '', 'Barbarian, Crusader, Sentinel, Warrior', '', 'Master of Great Swords', 'Weapon');

-- --------------------------------------------------------

--
-- Table structure for table `startingtraits`
--

CREATE TABLE `startingtraits` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Cost` int(11) NOT NULL,
  `Effect` text COLLATE utf8_unicode_ci NOT NULL,
  `Require` text COLLATE utf8_unicode_ci NOT NULL,
  `RaceRequire` text COLLATE utf8_unicode_ci NOT NULL,
  `TraitRestrict` text COLLATE utf8_unicode_ci NOT NULL,
  `Category` text COLLATE utf8_unicode_ci NOT NULL,
  `BaseClassRestrict` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `startingtraits`
--

INSERT INTO `startingtraits` (`id`, `Name`, `Cost`, `Effect`, `Require`, `RaceRequire`, `TraitRestrict`, `Category`, `BaseClassRestrict`) VALUES
(1, 'Agile', 6, '5/traitBasDex:5/traitMaxDex:5/dex', '40/Dex', '', 'Dexterity', 'Dexterity', ''),
(2, 'Ambidexterity', 12, 'TRUEdualWield', '50/Dex', '', '', 'Misc', 'Fighter'),
(3, 'Blacksmith\'s Apprentice', 8, '10/traitBasStr:10/traitMaxStr:10/str:-5/traitBasDex:-5/traitMaxDex:-5/dex:-5/traitBasInt:-5/traitMaxInt:-5/int', '40/Str', '', 'Apprentice', 'Strength', ''),
(4, 'Blessed', 4, '5/holy', '', 'Vampire/prohibit', '', 'Resists', ''),
(5, 'Blood of the Desert', 4, '5/fire', '', 'Vampire/prohibit', '', 'Resists', ''),
(6, 'Blood of the Dragon', 8, '10/fire', '', 'Irekei/require', '', 'Resists', ''),
(7, 'Blood of the North', 4, '5/cold', '', '', '', 'Resists', ''),
(8, 'Born in the Country', 4, '5/staff', '', 'Dwarf/prohibit:Irekei/prohibit', 'Childhood', 'Weapon', ''),
(9, 'Born of the Ethyri', 10, '5/traitBasSpr:10/traitMaxSpr:5/spr:10mr', '', 'Human/require', 'Subrace', 'Spirit', ''),
(10, 'Born of the Gwendannen', 10, '5/traitBasCon:10/traitMaxCon:5/con:10sr', '', 'Human/require', 'Subrace', 'Constitution', ''),
(11, 'Born of the Invorri', 10, '5/traitBasStr:10/traitMaxStr:5/str:10hr', '', 'Human/require', 'Subrace', 'Strength', ''),
(12, 'Born of the Irydnu', 10, '5/traitBasInt:10/traitMaxInt:5/int:10mr', '', 'Human/require', 'Subrace', 'Intelligence', ''),
(13, 'Born of the Taripontor', 10, '5/traitBasDex:10/traitMaxDex:5/dex:10sr', '', 'Human/require', 'Subrace', 'Dexterity', ''),
(14, 'Bowyer Born', 4, '5/Crossbow', '', '', 'Childhood', 'Weapon', ''),
(15, 'Brawler', 4, '10/uaCombat', '', '', 'Background', 'Weapon', 'Fighter'),
(16, 'Brilliant Mind', 12, '10/traitBasInt:10/traitMaxInt:10/int', '50/Int', '', 'Intelligence', 'Intelligence', ''),
(17, 'Bruiser', 4, '5/hammer', '', '', 'Background', 'Weapon', ''),
(18, 'Changeling', 4, '5/magicRes', '', '', '', 'Resists', ''),
(19, 'Clever', 6, '5/traitBasInt:5/traitMaxInt:5/int', '40/Int', '', 'Intelligence', 'Intelligence', ''),
(20, 'Dark Whispers', 8, '5/sorc:5/ward', '', '', '', 'Misc', 'Mage'),
(21, 'Divine Touch', 8, '5/ben:5/resto', '', '', '', 'Misc', 'Healer'),
(22, 'Eyes of the Eagle', 4, '5/bow', '', '', 'Background', 'Weapon', 'Rogue:Fighter'),
(23, 'Faith of Ages', 12, '10/traitBasSpr:10/traitMaxSpr:10/spr', '50/Spr', '', 'Spirit', 'Spirit', ''),
(24, 'Fleet of Foot', 10, '5/speed', '50/Dex', '', '', 'Misc', ''),
(25, 'Giant\'s Blood', 14, '10/traitBasStr:15/traitMaxStr:10/str:-5/traitBasDex:-10/traitMaxDex:-5/dex:5/traitBasCon:10/traitMaxCon:5/con:-5/traitBasInt:-10/traitMaxInt:-5/int', '', 'Aelfborn/require:Human/require:Shade/require', '', 'Strength', ''),
(26, 'Healthy as an Ox', 12, '10/traitBasCon:10/traitMaxCon:10/con', '50/Con', '', 'Constitution', 'Constitution', ''),
(27, 'Hearty', 6, '5/traitBasCon:5/traitMaxCon:5/con', '40/Con', '', 'Constitution', 'Constitution', ''),
(28, 'Hero\'s Strength', 12, '10/traitBasStr:10/traitMaxStr:10/str', '50/Str', '', 'Strength', 'Strength', ''),
(29, 'Hunter', 4, '5/Spear', '', '', 'Background', 'Weapon', ''),
(30, 'Increased Constitution', 2, '1/traitBasCon:3/traitMaxCon:1/con', '', '', '', 'Consitution', ''),
(31, 'Increased Dexterity', 2, '1/traitBasDex:3/traitMaxDex:1/dex', '', '', '', 'Dexterity', ''),
(32, 'Increased Intelligence', 2, '1/traitBasInt:3/traitMaxInt:1/int', '', '', '', 'Intelligence', ''),
(33, 'Increased Spirit', 2, '1/traitBasSpr:3/traitMaxSpr:1/spr', '', '', '', 'Spirit', ''),
(34, 'Increased Strength', 2, '1/basStr:3/maxStr:1/str', '', '', '', 'Strength', ''),
(35, 'Iron Will', 4, '5/mentalRes', '', '', '', 'Resists', ''),
(36, 'Juggernaut', 8, '5/crush:5/pierce:5/slash:-10speed', '', 'Dwarf/require:Half-Giant/require:Minotaur/require', '', 'Resists', ''),
(37, 'Knife-Fighter', 4, '5/Dagger', '', '', 'Background', 'Weapon', ''),
(38, 'Knight\'s Squire', 4, '5/MedArmor', '', '', 'Mentor', 'Armor', 'Fighter:Rogue'),
(39, 'Lightning Reflexes', 12, '10/traitBasDex:10/traitMaxDex:10/dex', '50/Dex', '', 'Dexterity', 'Dexterity', ''),
(40, 'Lucky', 8, '5/Def', '', '', '', 'Misc', ''),
(41, 'Mercenary', 4, '5/PoleArm', '', '', 'Background', 'Weapon', ''),
(42, 'Mighty', 6, '5/traitBasStr:5/traitMaxStr:5/str', '40/Str', '', 'Strength', 'Strength', ''),
(43, 'Military Training', 4, '5/LightArmor', '', '', 'Mentor', 'Armor', 'Fighter:Rogue:Healer'),
(44, 'Precise', 8, '5/Atr', '', '', '', 'Misc', ''),
(45, 'Priest\'s Acolyte', 8, '-5/traitBasStr:-5/traitMaxStr:-5/str:-5/traitBasInt:-5/traitMaxInt:-5/int:10/traitBasSpr:10/traitMaxSpr:10/spr', '40/Spr', '', 'Apprentice', 'Spirit', ''),
(46, 'Proficient with Axes', 10, 'grantAxe', '', '', '', 'Misc', 'Healer:Rogue:Mage'),
(47, 'Proficient with Bows', 10, 'grantBow', '', '', '', 'Misc', 'Fighter:Rogue'),
(48, 'Proficient with Crossbows', 10, 'grantCrossbow', '', '', '', 'Misc', 'Fighter:Rogue'),
(49, 'Proficient with Daggers', 10, 'grantDagger', '', '', '', 'Misc', 'Healer'),
(50, 'Proficient with Hammers', 10, 'grantHammer', '', '', '', 'Misc', 'Rogue:Mage'),
(51, 'Proficient with Pole Arms', 10, 'grantPoleArm', '', '', '', 'Misc', ''),
(52, 'Proficient with Spears', 10, 'grantSpear', '', '', '', 'Misc', ''),
(53, 'Proficient with Staves', 10, 'grantStaves', '', '', '', 'Misc', 'Fighter'),
(54, 'Proficient with Swords', 10, 'grantSwords', '', '', '', 'Misc', 'Healer'),
(55, 'Raised by Barbarians', 4, '5/Axe', '', 'Dwarf/prohibit:Elf/prohibit:Irekei/prohibit:Minotaur/prohibit', 'Childhood', 'Weapon', ''),
(56, 'Raised by Centaurs', 4, '5/Spear', '', 'Aracoix/prohibit:Centaur/prohibit:Elf/prohibit:Minotaur/prohibit', 'Childhood', 'Weapon', ''),
(57, 'Raised by Dwarves', 4, '5/Hammer', '', 'Dwarf/prohibit:Elf/prohibit', 'Childhood', 'Weapon', ''),
(58, 'Raised by Elves', 4, '5/Sword', '', 'Centaur/prohibit:Dwarf/prohibit:Elf/prohibit:Irekei/prohibit', 'Childhood', 'Weapon', ''),
(59, 'Raised by Thieves\' Guild', 4, '5/Dagger', '', 'Dwarf/prohibit', 'Childhood', 'Weapon', ''),
(60, 'Raised in the Woods', 4, '5/Bow', '', 'Dwarf/prohibit:Irekei/prohibit', 'Childhood', 'Weapon', 'Fighter:Rogue'),
(61, 'Scion of the Dar Khelegur', 10, '5/traitBasInt:10/traitMaxInt:5/int:10mr', '', 'Elf/require', 'Subrace', 'Intelligence', ''),
(62, 'Scion of the Gwaridorn', 10, '5/traitBasCon:10/traitMaxCon:5/con:10hr', '', 'Elf/require', 'Subrace', 'Constitution', ''),
(63, 'Scion of the Twathedilion', 10, '5/traitBasDex:10/traitMaxDex:5/dex:10sr', '', 'Elf/require', 'Subrace', 'Dexterity', ''),
(64, 'Sellsword', 4, '5/Sword', '', '', 'Background', 'Weapon', ''),
(65, 'Sharpshooter', 4, '5/Crossbow', '', '', 'Background', 'Weapon', ''),
(66, 'Shopkeeper\'s Apprentice', 10, 'grant/Bargaining', '', '', 'Mentor', 'Misc', ''),
(70, 'Snake Handler', 4, '5/poison', '', '', '', 'Resists', ''),
(71, 'Sold to the Pits', 4, '10/uaCombat', '', '', 'Childhood', 'Weapon', ''),
(72, 'Soldier Born', 4, '5/PoleArm', '', '', 'Childhood', 'Weapon', ''),
(73, 'Stormborn', 4, '5/lightning', '', '', '', 'Resists', ''),
(74, 'Taint of Chaos', 10, '20hr:20mr:20sr', '', 'Nephilim/require', '', 'Misc', ''),
(75, 'Taint of Madness', 10, '100/manaBonus:20mr', '50/Spr', '', '', 'Misc', ''),
(76, 'Taught by Blademaster', 4, '5/parry', '', '', '', 'Misc', ''),
(77, 'Taught by Master Thief', 8, '-5/traitBasStr:-5/traitMaxStr:-5/str:10/traitBasDex:10/traitMaxDex:10/dex:-5/basCon:-5/maxCon:-5/con', '40/Dex', '', 'Apprentice', 'Dexterity', ''),
(78, 'Tireless', 10, '30/stamBonus:20sr', '50/Con', '', '', 'Misc', ''),
(79, 'Tough as Nails', 10, '200/healthBonus:20hr', '50/Con', '', '', 'Misc', ''),
(80, 'Tough Hide', 12, '5/crush:5/pierce:5/slash', '', 'Dwarf/prohibit', '', 'Resists', ''),
(81, 'Trained by Master-of-Arms', 4, '5/block', '', '', 'Mentor', 'Misc', 'Fighter:Healer'),
(82, 'Traveling Performer', 4, '5/dodge', '', '', 'Mentor', 'Misc', 'Rogue'),
(83, 'True Faith', 6, '5/traitBasSpr:5/traitMaxSpr:5/spr', '40/Spr', '', 'Spirit', 'Spirit', ''),
(84, 'Wanderer', 4, '5/staff', '', '', 'Background', 'Weapon', ''),
(85, 'Warlord\'s Page', 8, '-5/traitBasDex:-5/traitMaxDex:-5/dex:10/traitBasCon:10/traitMaxCon:10/con:-5/traitBasSpr:-5/traitMaxSpr:-5/spr', '40/Con', '', 'Apprentice', 'Constitution', ''),
(86, 'Witch Sight', 6, 'seeInvisible', '', 'Shade/prohibit', '', 'Misc', ''),
(87, 'Wizard\'s Apprentice', 8, '-5/traitBasCon:-5/traitMaxCon:-5/con:10/traitBasInt:10/traitMaxInt:10/int:-5/traitBasSpr:-5/traitMaxSpr:-5/spr', '40/Int', '', 'Apprentice', 'Intelligence', ''),
(88, 'Woodsman', 4, '5/Axe', '', '', 'Background', 'Weapon', '');

-- --------------------------------------------------------

--
-- Table structure for table `statrunes`
--

CREATE TABLE `statrunes` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `initBoost` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `maxBoost` int(11) NOT NULL,
  `Require` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statrunes`
--

INSERT INTO `statrunes` (`id`, `Name`, `initBoost`, `Cost`, `maxBoost`, `Require`) VALUES
(1, 'None', 0, 0, 0, 0),
(2, 'Enhanced', 2, 3, 5, 85),
(3, 'Exceptional', 3, 4, 10, 90),
(4, 'Amazing', 4, 5, 15, 95),
(5, 'Incredible', 5, 8, 20, 100),
(6, 'Great', 6, 9, 25, 105),
(7, 'Heroic', 7, 11, 30, 110),
(8, 'Legendary', 8, 12, 35, 115),
(9, 'of the Gods', 10, 15, 40, 120);

-- --------------------------------------------------------

--
-- Table structure for table `suffix`
--

CREATE TABLE `suffix` (
  `id` int(11) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Requirements` text COLLATE utf8_unicode_ci NOT NULL,
  `Bonus` text COLLATE utf8_unicode_ci NOT NULL,
  `Type` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suffix`
--

INSERT INTO `suffix` (`id`, `Name`, `Requirements`, `Bonus`, `Type`) VALUES
(1, 'of Slaughter', 'Main', '5', 'Max');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `mindamage` int(11) NOT NULL,
  `maxdamage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`mindamage`, `maxdamage`) VALUES
(11, 40),
(11, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baseclass`
--
ALTER TABLE `baseclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gear`
--
ALTER TABLE `gear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `powers`
--
ALTER TABLE `powers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prefix`
--
ALTER TABLE `prefix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resists`
--
ALTER TABLE `resists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startingtraits`
--
ALTER TABLE `startingtraits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statrunes`
--
ALTER TABLE `statrunes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suffix`
--
ALTER TABLE `suffix`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baseclass`
--
ALTER TABLE `baseclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gear`
--
ALTER TABLE `gear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `powers`
--
ALTER TABLE `powers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;
--
-- AUTO_INCREMENT for table `prefix`
--
ALTER TABLE `prefix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `resists`
--
ALTER TABLE `resists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `startingtraits`
--
ALTER TABLE `startingtraits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `statrunes`
--
ALTER TABLE `statrunes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `suffix`
--
ALTER TABLE `suffix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
