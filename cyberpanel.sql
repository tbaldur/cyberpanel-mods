-- phpMyAdmin SQL Dump
-- Tierri Lopes
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 27-Ago-2022 às 14:27
-- Versão do servidor: 10.3.32-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cyberpanel`
--
CREATE DATABASE IF NOT EXISTS `cyberpanel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cyberpanel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_group`
--

TRUNCATE TABLE `auth_group`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_group_permissions`
--

TRUNCATE TABLE `auth_group_permissions`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_permission`
--

TRUNCATE TABLE `auth_permission`;
--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cyber panel cosmetic', 7, 'add_cyberpanelcosmetic'),
(26, 'Can change cyber panel cosmetic', 7, 'change_cyberpanelcosmetic'),
(27, 'Can delete cyber panel cosmetic', 7, 'delete_cyberpanelcosmetic'),
(28, 'Can view cyber panel cosmetic', 7, 'view_cyberpanelcosmetic'),
(29, 'Can add version', 8, 'add_version'),
(30, 'Can change version', 8, 'change_version'),
(31, 'Can delete version', 8, 'delete_version'),
(32, 'Can view version', 8, 'view_version'),
(33, 'Can add acl', 9, 'add_acl'),
(34, 'Can change acl', 9, 'change_acl'),
(35, 'Can delete acl', 9, 'delete_acl'),
(36, 'Can view acl', 9, 'view_acl'),
(37, 'Can add administrator', 10, 'add_administrator'),
(38, 'Can change administrator', 10, 'change_administrator'),
(39, 'Can delete administrator', 10, 'delete_administrator'),
(40, 'Can view administrator', 10, 'view_administrator'),
(41, 'Can add package', 11, 'add_package'),
(42, 'Can change package', 11, 'change_package'),
(43, 'Can delete package', 11, 'delete_package'),
(44, 'Can view package', 11, 'view_package'),
(45, 'Can add backup job', 12, 'add_backupjob'),
(46, 'Can change backup job', 12, 'change_backupjob'),
(47, 'Can delete backup job', 12, 'delete_backupjob'),
(48, 'Can view backup job', 12, 'view_backupjob'),
(49, 'Can add dest', 13, 'add_dest'),
(50, 'Can change dest', 13, 'change_dest'),
(51, 'Can delete dest', 13, 'delete_dest'),
(52, 'Can view dest', 13, 'view_dest'),
(53, 'Can add g drive', 14, 'add_gdrive'),
(54, 'Can change g drive', 14, 'change_gdrive'),
(55, 'Can delete g drive', 14, 'delete_gdrive'),
(56, 'Can view g drive', 14, 'view_gdrive'),
(57, 'Can add normal backup dests', 15, 'add_normalbackupdests'),
(58, 'Can change normal backup dests', 15, 'change_normalbackupdests'),
(59, 'Can delete normal backup dests', 15, 'delete_normalbackupdests'),
(60, 'Can view normal backup dests', 15, 'view_normalbackupdests'),
(61, 'Can add normal backup jobs', 16, 'add_normalbackupjobs'),
(62, 'Can change normal backup jobs', 16, 'change_normalbackupjobs'),
(63, 'Can delete normal backup jobs', 16, 'delete_normalbackupjobs'),
(64, 'Can view normal backup jobs', 16, 'view_normalbackupjobs'),
(65, 'Can add remote backup config', 17, 'add_remotebackupconfig'),
(66, 'Can change remote backup config', 17, 'change_remotebackupconfig'),
(67, 'Can delete remote backup config', 17, 'delete_remotebackupconfig'),
(68, 'Can view remote backup config', 17, 'view_remotebackupconfig'),
(69, 'Can add remote backup schedule', 18, 'add_remotebackupschedule'),
(70, 'Can change remote backup schedule', 18, 'change_remotebackupschedule'),
(71, 'Can delete remote backup schedule', 18, 'delete_remotebackupschedule'),
(72, 'Can view remote backup schedule', 18, 'view_remotebackupschedule'),
(73, 'Can add websites', 19, 'add_websites'),
(74, 'Can change websites', 19, 'change_websites'),
(75, 'Can delete websites', 19, 'delete_websites'),
(76, 'Can view websites', 19, 'view_websites'),
(77, 'Can add wp sites', 20, 'add_wpsites'),
(78, 'Can change wp sites', 20, 'change_wpsites'),
(79, 'Can delete wp sites', 20, 'delete_wpsites'),
(80, 'Can view wp sites', 20, 'view_wpsites'),
(81, 'Can add wp staging', 21, 'add_wpstaging'),
(82, 'Can change wp staging', 21, 'change_wpstaging'),
(83, 'Can delete wp staging', 21, 'delete_wpstaging'),
(84, 'Can view wp staging', 21, 'view_wpstaging'),
(85, 'Can add wp sites backup', 22, 'add_wpsitesbackup'),
(86, 'Can change wp sites backup', 22, 'change_wpsitesbackup'),
(87, 'Can delete wp sites backup', 22, 'delete_wpsitesbackup'),
(88, 'Can view wp sites backup', 22, 'view_wpsitesbackup'),
(89, 'Can add wpplugins', 23, 'add_wpplugins'),
(90, 'Can change wpplugins', 23, 'change_wpplugins'),
(91, 'Can delete wpplugins', 23, 'delete_wpplugins'),
(92, 'Can view wpplugins', 23, 'view_wpplugins'),
(93, 'Can add remote backupsites', 24, 'add_remotebackupsites'),
(94, 'Can change remote backupsites', 24, 'change_remotebackupsites'),
(95, 'Can delete remote backupsites', 24, 'delete_remotebackupsites'),
(96, 'Can view remote backupsites', 24, 'view_remotebackupsites'),
(97, 'Can add normal backup sites', 25, 'add_normalbackupsites'),
(98, 'Can change normal backup sites', 25, 'change_normalbackupsites'),
(99, 'Can delete normal backup sites', 25, 'delete_normalbackupsites'),
(100, 'Can view normal backup sites', 25, 'view_normalbackupsites'),
(101, 'Can add normal backup job logs', 26, 'add_normalbackupjoblogs'),
(102, 'Can change normal backup job logs', 26, 'change_normalbackupjoblogs'),
(103, 'Can delete normal backup job logs', 26, 'delete_normalbackupjoblogs'),
(104, 'Can view normal backup job logs', 26, 'view_normalbackupjoblogs'),
(105, 'Can add git logs', 27, 'add_gitlogs'),
(106, 'Can change git logs', 27, 'change_gitlogs'),
(107, 'Can delete git logs', 27, 'delete_gitlogs'),
(108, 'Can view git logs', 27, 'view_gitlogs'),
(109, 'Can add g drive sites', 28, 'add_gdrivesites'),
(110, 'Can change g drive sites', 28, 'change_gdrivesites'),
(111, 'Can delete g drive sites', 28, 'delete_gdrivesites'),
(112, 'Can view g drive sites', 28, 'view_gdrivesites'),
(113, 'Can add g drive job logs', 29, 'add_gdrivejoblogs'),
(114, 'Can change g drive job logs', 29, 'change_gdrivejoblogs'),
(115, 'Can delete g drive job logs', 29, 'delete_gdrivejoblogs'),
(116, 'Can view g drive job logs', 29, 'view_gdrivejoblogs'),
(117, 'Can add child domains', 30, 'add_childdomains'),
(118, 'Can change child domains', 30, 'change_childdomains'),
(119, 'Can delete child domains', 30, 'delete_childdomains'),
(120, 'Can view child domains', 30, 'view_childdomains'),
(121, 'Can add backup schedules', 31, 'add_backupschedules'),
(122, 'Can change backup schedules', 31, 'change_backupschedules'),
(123, 'Can delete backup schedules', 31, 'delete_backupschedules'),
(124, 'Can view backup schedules', 31, 'view_backupschedules'),
(125, 'Can add backups', 32, 'add_backups'),
(126, 'Can change backups', 32, 'change_backups'),
(127, 'Can delete backups', 32, 'delete_backups'),
(128, 'Can view backups', 32, 'view_backups'),
(129, 'Can add backup job logs', 33, 'add_backupjoblogs'),
(130, 'Can change backup job logs', 33, 'change_backupjoblogs'),
(131, 'Can delete backup job logs', 33, 'delete_backupjoblogs'),
(132, 'Can view backup job logs', 33, 'view_backupjoblogs'),
(133, 'Can add alias domains', 34, 'add_aliasdomains'),
(134, 'Can change alias domains', 34, 'change_aliasdomains'),
(135, 'Can delete alias domains', 34, 'delete_aliasdomains'),
(136, 'Can view alias domains', 34, 'view_aliasdomains'),
(137, 'Can add comments', 35, 'add_comments'),
(138, 'Can change comments', 35, 'change_comments'),
(139, 'Can delete comments', 35, 'delete_comments'),
(140, 'Can view comments', 35, 'view_comments'),
(141, 'Can add cryptokeys', 36, 'add_cryptokeys'),
(142, 'Can change cryptokeys', 36, 'change_cryptokeys'),
(143, 'Can delete cryptokeys', 36, 'delete_cryptokeys'),
(144, 'Can view cryptokeys', 36, 'view_cryptokeys'),
(145, 'Can add domainmetadata', 37, 'add_domainmetadata'),
(146, 'Can change domainmetadata', 37, 'change_domainmetadata'),
(147, 'Can delete domainmetadata', 37, 'delete_domainmetadata'),
(148, 'Can view domainmetadata', 37, 'view_domainmetadata'),
(149, 'Can add domains', 38, 'add_domains'),
(150, 'Can change domains', 38, 'change_domains'),
(151, 'Can delete domains', 38, 'delete_domains'),
(152, 'Can view domains', 38, 'view_domains'),
(153, 'Can add tsigkeys', 39, 'add_tsigkeys'),
(154, 'Can change tsigkeys', 39, 'change_tsigkeys'),
(155, 'Can delete tsigkeys', 39, 'delete_tsigkeys'),
(156, 'Can view tsigkeys', 39, 'view_tsigkeys'),
(157, 'Can add supermasters', 40, 'add_supermasters'),
(158, 'Can change supermasters', 40, 'change_supermasters'),
(159, 'Can delete supermasters', 40, 'delete_supermasters'),
(160, 'Can view supermasters', 40, 'view_supermasters'),
(161, 'Can add records', 41, 'add_records'),
(162, 'Can change records', 41, 'change_records'),
(163, 'Can delete records', 41, 'delete_records'),
(164, 'Can view records', 41, 'view_records'),
(165, 'Can add users', 42, 'add_users'),
(166, 'Can change users', 42, 'change_users'),
(167, 'Can delete users', 42, 'delete_users'),
(168, 'Can view users', 42, 'view_users'),
(169, 'Can add databases', 43, 'add_databases'),
(170, 'Can change databases', 43, 'change_databases'),
(171, 'Can delete databases', 43, 'delete_databases'),
(172, 'Can view databases', 43, 'view_databases'),
(173, 'Can add global user db', 44, 'add_globaluserdb'),
(174, 'Can change global user db', 44, 'change_globaluserdb'),
(175, 'Can delete global user db', 44, 'delete_globaluserdb'),
(176, 'Can view global user db', 44, 'view_globaluserdb'),
(177, 'Can add db meta', 45, 'add_dbmeta'),
(178, 'Can change db meta', 45, 'change_dbmeta'),
(179, 'Can delete db meta', 45, 'delete_dbmeta'),
(180, 'Can view db meta', 45, 'view_dbmeta'),
(181, 'Can add databases users', 46, 'add_databasesusers'),
(182, 'Can change databases users', 46, 'change_databasesusers'),
(183, 'Can delete databases users', 46, 'delete_databasesusers'),
(184, 'Can view databases users', 46, 'view_databasesusers'),
(185, 'Can add domains', 47, 'add_domains'),
(186, 'Can change domains', 47, 'change_domains'),
(187, 'Can delete domains', 47, 'delete_domains'),
(188, 'Can view domains', 47, 'view_domains'),
(189, 'Can add forwardings', 48, 'add_forwardings'),
(190, 'Can change forwardings', 48, 'change_forwardings'),
(191, 'Can delete forwardings', 48, 'delete_forwardings'),
(192, 'Can view forwardings', 48, 'view_forwardings'),
(193, 'Can add pipeprograms', 49, 'add_pipeprograms'),
(194, 'Can change pipeprograms', 49, 'change_pipeprograms'),
(195, 'Can delete pipeprograms', 49, 'delete_pipeprograms'),
(196, 'Can view pipeprograms', 49, 'view_pipeprograms'),
(197, 'Can add transport', 50, 'add_transport'),
(198, 'Can change transport', 50, 'change_transport'),
(199, 'Can delete transport', 50, 'delete_transport'),
(200, 'Can view transport', 50, 'view_transport'),
(201, 'Can add e users', 51, 'add_eusers'),
(202, 'Can change e users', 51, 'change_eusers'),
(203, 'Can delete e users', 51, 'delete_eusers'),
(204, 'Can view e users', 51, 'view_eusers'),
(205, 'Can add firewall rules', 52, 'add_firewallrules'),
(206, 'Can change firewall rules', 52, 'change_firewallrules'),
(207, 'Can delete firewall rules', 52, 'delete_firewallrules'),
(208, 'Can view firewall rules', 52, 'view_firewallrules'),
(209, 'Can add db users', 53, 'add_dbusers'),
(210, 'Can change db users', 53, 'change_dbusers'),
(211, 'Can delete db users', 53, 'delete_dbusers'),
(212, 'Can view db users', 53, 'view_dbusers'),
(213, 'Can add apache php', 54, 'add_apachephp'),
(214, 'Can change apache php', 54, 'change_apachephp'),
(215, 'Can delete apache php', 54, 'delete_apachephp'),
(216, 'Can view apache php', 54, 'view_apachephp'),
(217, 'Can add php', 55, 'add_php'),
(218, 'Can change php', 55, 'change_php'),
(219, 'Can delete php', 55, 'delete_php'),
(220, 'Can view php', 55, 'view_php'),
(221, 'Can add installed packages apache', 56, 'add_installedpackagesapache'),
(222, 'Can change installed packages apache', 56, 'change_installedpackagesapache'),
(223, 'Can delete installed packages apache', 56, 'delete_installedpackagesapache'),
(224, 'Can view installed packages apache', 56, 'view_installedpackagesapache'),
(225, 'Can add installed packages', 57, 'add_installedpackages'),
(226, 'Can change installed packages', 57, 'change_installedpackages'),
(227, 'Can delete installed packages', 57, 'delete_installedpackages'),
(228, 'Can view installed packages', 57, 'view_installedpackages'),
(229, 'Can add trash', 58, 'add_trash'),
(230, 'Can change trash', 58, 'change_trash'),
(231, 'Can delete trash', 58, 'delete_trash'),
(232, 'Can view trash', 58, 'view_trash'),
(233, 'Can add pdns status', 59, 'add_pdnsstatus'),
(234, 'Can change pdns status', 59, 'change_pdnsstatus'),
(235, 'Can delete pdns status', 59, 'delete_pdnsstatus'),
(236, 'Can view pdns status', 59, 'view_pdnsstatus'),
(237, 'Can add slave servers', 60, 'add_slaveservers'),
(238, 'Can change slave servers', 60, 'change_slaveservers'),
(239, 'Can delete slave servers', 60, 'delete_slaveservers'),
(240, 'Can view slave servers', 60, 'view_slaveservers'),
(241, 'Can add email logs', 61, 'add_emaillogs'),
(242, 'Can change email logs', 61, 'change_emaillogs'),
(243, 'Can delete email logs', 61, 'delete_emaillogs'),
(244, 'Can view email logs', 61, 'view_emaillogs'),
(245, 'Can add email limits', 62, 'add_emaillimits'),
(246, 'Can change email limits', 62, 'change_emaillimits'),
(247, 'Can delete email limits', 62, 'delete_emaillimits'),
(248, 'Can view email limits', 62, 'view_emaillimits'),
(249, 'Can add domain limits', 63, 'add_domainlimits'),
(250, 'Can change domain limits', 63, 'change_domainlimits'),
(251, 'Can delete domain limits', 63, 'delete_domainlimits'),
(252, 'Can view domain limits', 63, 'view_domainlimits'),
(253, 'Can add email lists', 64, 'add_emaillists'),
(254, 'Can change email lists', 64, 'change_emaillists'),
(255, 'Can delete email lists', 64, 'delete_emaillists'),
(256, 'Can view email lists', 64, 'view_emaillists'),
(257, 'Can add email marketing', 65, 'add_emailmarketing'),
(258, 'Can change email marketing', 65, 'change_emailmarketing'),
(259, 'Can delete email marketing', 65, 'delete_emailmarketing'),
(260, 'Can view email marketing', 65, 'view_emailmarketing'),
(261, 'Can add validation log', 66, 'add_validationlog'),
(262, 'Can change validation log', 66, 'change_validationlog'),
(263, 'Can delete validation log', 66, 'delete_validationlog'),
(264, 'Can view validation log', 66, 'view_validationlog'),
(265, 'Can add smtp hosts', 67, 'add_smtphosts'),
(266, 'Can change smtp hosts', 67, 'change_smtphosts'),
(267, 'Can delete smtp hosts', 67, 'delete_smtphosts'),
(268, 'Can view smtp hosts', 67, 'view_smtphosts'),
(269, 'Can add email template', 68, 'add_emailtemplate'),
(270, 'Can change email template', 68, 'change_emailtemplate'),
(271, 'Can delete email template', 68, 'delete_emailtemplate'),
(272, 'Can view email template', 68, 'view_emailtemplate'),
(273, 'Can add emails in list', 69, 'add_emailsinlist'),
(274, 'Can change emails in list', 69, 'change_emailsinlist'),
(275, 'Can delete emails in list', 69, 'delete_emailsinlist'),
(276, 'Can view emails in list', 69, 'view_emailsinlist'),
(277, 'Can add email jobs', 70, 'add_emailjobs'),
(278, 'Can change email jobs', 70, 'change_emailjobs'),
(279, 'Can delete email jobs', 70, 'delete_emailjobs'),
(280, 'Can view email jobs', 70, 'view_emailjobs'),
(281, 'Can add wp deployments', 71, 'add_wpdeployments'),
(282, 'Can change wp deployments', 71, 'change_wpdeployments'),
(283, 'Can delete wp deployments', 71, 'delete_wpdeployments'),
(284, 'Can view wp deployments', 71, 'view_wpdeployments'),
(285, 'Can add backup plan', 72, 'add_backupplan'),
(286, 'Can change backup plan', 72, 'change_backupplan'),
(287, 'Can delete backup plan', 72, 'delete_backupplan'),
(288, 'Can view backup plan', 72, 'view_backupplan'),
(289, 'Can add backup plan do', 73, 'add_backupplando'),
(290, 'Can change backup plan do', 73, 'change_backupplando'),
(291, 'Can delete backup plan do', 73, 'delete_backupplando'),
(292, 'Can view backup plan do', 73, 'view_backupplando'),
(293, 'Can add backup plan minio', 74, 'add_backupplanminio'),
(294, 'Can change backup plan minio', 74, 'change_backupplanminio'),
(295, 'Can delete backup plan minio', 74, 'delete_backupplanminio'),
(296, 'Can view backup plan minio', 74, 'view_backupplanminio'),
(297, 'Can add websites in plan minio', 75, 'add_websitesinplanminio'),
(298, 'Can change websites in plan minio', 75, 'change_websitesinplanminio'),
(299, 'Can delete websites in plan minio', 75, 'delete_websitesinplanminio'),
(300, 'Can view websites in plan minio', 75, 'view_websitesinplanminio'),
(301, 'Can add websites in plan do', 76, 'add_websitesinplando'),
(302, 'Can change websites in plan do', 76, 'change_websitesinplando'),
(303, 'Can delete websites in plan do', 76, 'delete_websitesinplando'),
(304, 'Can view websites in plan do', 76, 'view_websitesinplando'),
(305, 'Can add websites in plan', 77, 'add_websitesinplan'),
(306, 'Can change websites in plan', 77, 'change_websitesinplan'),
(307, 'Can delete websites in plan', 77, 'delete_websitesinplan'),
(308, 'Can view websites in plan', 77, 'view_websitesinplan'),
(309, 'Can add minio nodes', 78, 'add_minionodes'),
(310, 'Can change minio nodes', 78, 'change_minionodes'),
(311, 'Can delete minio nodes', 78, 'delete_minionodes'),
(312, 'Can view minio nodes', 78, 'view_minionodes'),
(313, 'Can add backup logs minio', 79, 'add_backuplogsminio'),
(314, 'Can change backup logs minio', 79, 'change_backuplogsminio'),
(315, 'Can delete backup logs minio', 79, 'delete_backuplogsminio'),
(316, 'Can view backup logs minio', 79, 'view_backuplogsminio'),
(317, 'Can add backup logs do', 80, 'add_backuplogsdo'),
(318, 'Can change backup logs do', 80, 'change_backuplogsdo'),
(319, 'Can delete backup logs do', 80, 'delete_backuplogsdo'),
(320, 'Can view backup logs do', 80, 'view_backuplogsdo'),
(321, 'Can add backup logs', 81, 'add_backuplogs'),
(322, 'Can change backup logs', 81, 'change_backuplogs'),
(323, 'Can delete backup logs', 81, 'delete_backuplogs'),
(324, 'Can view backup logs', 81, 'view_backuplogs'),
(325, 'Can add containers', 82, 'add_containers'),
(326, 'Can change containers', 82, 'change_containers'),
(327, 'Can delete containers', 82, 'delete_containers'),
(328, 'Can view containers', 82, 'view_containers'),
(329, 'Can add container limits', 83, 'add_containerlimits'),
(330, 'Can change container limits', 83, 'change_containerlimits'),
(331, 'Can delete container limits', 83, 'delete_containerlimits'),
(332, 'Can view container limits', 83, 'view_containerlimits'),
(333, 'Can add cl packages', 84, 'add_clpackages'),
(334, 'Can change cl packages', 84, 'change_clpackages'),
(335, 'Can delete cl packages', 84, 'delete_clpackages'),
(336, 'Can view cl packages', 84, 'view_clpackages'),
(337, 'Can add backup job', 85, 'add_backupjob'),
(338, 'Can change backup job', 85, 'change_backupjob'),
(339, 'Can delete backup job', 85, 'delete_backupjob'),
(340, 'Can view backup job', 85, 'view_backupjob'),
(341, 'Can add inc job', 86, 'add_incjob'),
(342, 'Can change inc job', 86, 'change_incjob'),
(343, 'Can delete inc job', 86, 'delete_incjob'),
(344, 'Can view inc job', 86, 'view_incjob'),
(345, 'Can add job snapshots', 87, 'add_jobsnapshots'),
(346, 'Can change job snapshots', 87, 'change_jobsnapshots'),
(347, 'Can delete job snapshots', 87, 'delete_jobsnapshots'),
(348, 'Can view job snapshots', 87, 'view_jobsnapshots'),
(349, 'Can add job sites', 88, 'add_jobsites'),
(350, 'Can change job sites', 88, 'change_jobsites'),
(351, 'Can delete job sites', 88, 'delete_jobsites'),
(352, 'Can view job sites', 88, 'view_jobsites');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_user`
--

TRUNCATE TABLE `auth_user`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_user_groups`
--

TRUNCATE TABLE `auth_user_groups`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `auth_user_user_permissions`
--

TRUNCATE TABLE `auth_user_user_permissions`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `baseTemplate_cyberpanelcosmetic`
--

CREATE TABLE `baseTemplate_cyberpanelcosmetic` (
  `id` int(11) NOT NULL,
  `MainDashboardCSS` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `baseTemplate_cyberpanelcosmetic`
--

TRUNCATE TABLE `baseTemplate_cyberpanelcosmetic`;
--
-- Extraindo dados da tabela `baseTemplate_cyberpanelcosmetic`
--

INSERT INTO `baseTemplate_cyberpanelcosmetic` (`id`, `MainDashboardCSS`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `baseTemplate_version`
--

CREATE TABLE `baseTemplate_version` (
  `id` int(11) NOT NULL,
  `currentVersion` varchar(50) NOT NULL,
  `build` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `baseTemplate_version`
--

TRUNCATE TABLE `baseTemplate_version`;
--
-- Extraindo dados da tabela `baseTemplate_version`
--

INSERT INTO `baseTemplate_version` (`id`, `currentVersion`, `build`) VALUES
(1, '2.3', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `CLManager_clpackages`
--

CREATE TABLE `CLManager_clpackages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `speed` varchar(50) NOT NULL,
  `vmem` varchar(50) NOT NULL,
  `pmem` varchar(50) NOT NULL,
  `io` varchar(50) NOT NULL,
  `iops` varchar(50) NOT NULL,
  `ep` varchar(50) NOT NULL,
  `nproc` varchar(50) NOT NULL,
  `inodessoft` varchar(50) NOT NULL,
  `inodeshard` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `CLManager_clpackages`
--

TRUNCATE TABLE `CLManager_clpackages`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `cloudAPI_wpdeployments`
--

CREATE TABLE `cloudAPI_wpdeployments` (
  `id` int(11) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `cloudAPI_wpdeployments`
--

TRUNCATE TABLE `cloudAPI_wpdeployments`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `modified_at` int(11) NOT NULL,
  `account` varchar(40) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `comments`
--

TRUNCATE TABLE `comments`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `containerization_containerlimits`
--

CREATE TABLE `containerization_containerlimits` (
  `id` int(11) NOT NULL,
  `cpuPers` varchar(10) NOT NULL,
  `IO` varchar(10) NOT NULL,
  `IOPS` varchar(10) NOT NULL,
  `memory` varchar(10) NOT NULL,
  `networkSpeed` varchar(10) NOT NULL,
  `networkHexValue` varchar(10) NOT NULL,
  `enforce` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `containerization_containerlimits`
--

TRUNCATE TABLE `containerization_containerlimits`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `cryptokeys`
--

CREATE TABLE `cryptokeys` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `flags` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `cryptokeys`
--

TRUNCATE TABLE `cryptokeys`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `databases_databases`
--

CREATE TABLE `databases_databases` (
  `id` int(11) NOT NULL,
  `dbName` varchar(50) NOT NULL,
  `dbUser` varchar(50) NOT NULL,
  `website_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `databases_databasesusers`
--

CREATE TABLE `databases_databasesusers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `databases_dbmeta`
--

CREATE TABLE `databases_dbmeta` (
  `id` int(11) NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  `database_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `databases_globaluserdb`
--

CREATE TABLE `databases_globaluserdb` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `token` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `django_admin_log`
--

TRUNCATE TABLE `django_admin_log`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `django_content_type`
--

TRUNCATE TABLE `django_content_type`;
--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(53, 'backup', 'dbusers'),
(7, 'baseTemplate', 'cyberpanelcosmetic'),
(8, 'baseTemplate', 'version'),
(84, 'CLManager', 'clpackages'),
(71, 'cloudAPI', 'wpdeployments'),
(83, 'containerization', 'containerlimits'),
(5, 'contenttypes', 'contenttype'),
(43, 'databases', 'databases'),
(46, 'databases', 'databasesusers'),
(45, 'databases', 'dbmeta'),
(44, 'databases', 'globaluserdb'),
(35, 'dns', 'comments'),
(36, 'dns', 'cryptokeys'),
(37, 'dns', 'domainmetadata'),
(38, 'dns', 'domains'),
(41, 'dns', 'records'),
(40, 'dns', 'supermasters'),
(39, 'dns', 'tsigkeys'),
(82, 'dockerManager', 'containers'),
(70, 'emailMarketing', 'emailjobs'),
(64, 'emailMarketing', 'emaillists'),
(65, 'emailMarketing', 'emailmarketing'),
(69, 'emailMarketing', 'emailsinlist'),
(68, 'emailMarketing', 'emailtemplate'),
(67, 'emailMarketing', 'smtphosts'),
(66, 'emailMarketing', 'validationlog'),
(63, 'emailPremium', 'domainlimits'),
(62, 'emailPremium', 'emaillimits'),
(61, 'emailPremium', 'emaillogs'),
(58, 'filemanager', 'trash'),
(52, 'firewall', 'firewallrules'),
(42, 'ftp', 'users'),
(85, 'IncBackups', 'backupjob'),
(86, 'IncBackups', 'incjob'),
(88, 'IncBackups', 'jobsites'),
(87, 'IncBackups', 'jobsnapshots'),
(9, 'loginSystem', 'acl'),
(10, 'loginSystem', 'administrator'),
(47, 'mailServer', 'domains'),
(51, 'mailServer', 'eusers'),
(48, 'mailServer', 'forwardings'),
(49, 'mailServer', 'pipeprograms'),
(50, 'mailServer', 'transport'),
(54, 'managePHP', 'apachephp'),
(57, 'managePHP', 'installedpackages'),
(56, 'managePHP', 'installedpackagesapache'),
(55, 'managePHP', 'php'),
(59, 'manageServices', 'pdnsstatus'),
(60, 'manageServices', 'slaveservers'),
(11, 'packages', 'package'),
(81, 's3Backups', 'backuplogs'),
(80, 's3Backups', 'backuplogsdo'),
(79, 's3Backups', 'backuplogsminio'),
(72, 's3Backups', 'backupplan'),
(73, 's3Backups', 'backupplando'),
(74, 's3Backups', 'backupplanminio'),
(78, 's3Backups', 'minionodes'),
(77, 's3Backups', 'websitesinplan'),
(76, 's3Backups', 'websitesinplando'),
(75, 's3Backups', 'websitesinplanminio'),
(6, 'sessions', 'session'),
(34, 'websiteFunctions', 'aliasdomains'),
(12, 'websiteFunctions', 'backupjob'),
(33, 'websiteFunctions', 'backupjoblogs'),
(32, 'websiteFunctions', 'backups'),
(31, 'websiteFunctions', 'backupschedules'),
(30, 'websiteFunctions', 'childdomains'),
(13, 'websiteFunctions', 'dest'),
(14, 'websiteFunctions', 'gdrive'),
(29, 'websiteFunctions', 'gdrivejoblogs'),
(28, 'websiteFunctions', 'gdrivesites'),
(27, 'websiteFunctions', 'gitlogs'),
(15, 'websiteFunctions', 'normalbackupdests'),
(26, 'websiteFunctions', 'normalbackupjoblogs'),
(16, 'websiteFunctions', 'normalbackupjobs'),
(25, 'websiteFunctions', 'normalbackupsites'),
(17, 'websiteFunctions', 'remotebackupconfig'),
(18, 'websiteFunctions', 'remotebackupschedule'),
(24, 'websiteFunctions', 'remotebackupsites'),
(19, 'websiteFunctions', 'websites'),
(23, 'websiteFunctions', 'wpplugins'),
(20, 'websiteFunctions', 'wpsites'),
(22, 'websiteFunctions', 'wpsitesbackup'),
(21, 'websiteFunctions', 'wpstaging');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `django_migrations`
--

TRUNCATE TABLE `django_migrations`;
--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'loginSystem', '0001_initial', '2022-08-25 03:20:19.806228'),
(2, 'packages', '0001_initial', '2022-08-25 03:20:19.833021'),
(3, 'CLManager', '0001_initial', '2022-08-25 03:20:19.868561'),
(4, 'websiteFunctions', '0001_initial', '2022-08-25 03:20:20.263144'),
(5, 'IncBackups', '0001_initial', '2022-08-25 03:20:20.609815'),
(6, 'contenttypes', '0001_initial', '2022-08-25 03:20:20.647048'),
(7, 'auth', '0001_initial', '2022-08-25 03:20:20.692104'),
(8, 'admin', '0001_initial', '2022-08-25 03:20:20.976100'),
(9, 'admin', '0002_logentry_remove_auto_add', '2022-08-25 03:20:21.010723'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-25 03:20:21.022135'),
(11, 'contenttypes', '0002_remove_content_type_name', '2022-08-25 03:20:21.088788'),
(12, 'auth', '0002_alter_permission_name_max_length', '2022-08-25 03:20:21.102056'),
(13, 'auth', '0003_alter_user_email_max_length', '2022-08-25 03:20:21.117278'),
(14, 'auth', '0004_alter_user_username_opts', '2022-08-25 03:20:21.129224'),
(15, 'auth', '0005_alter_user_last_login_null', '2022-08-25 03:20:21.145032'),
(16, 'auth', '0006_require_contenttypes_0002', '2022-08-25 03:20:21.146995'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2022-08-25 03:20:21.158545'),
(18, 'auth', '0008_alter_user_username_max_length', '2022-08-25 03:20:21.171969'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2022-08-25 03:20:21.183355'),
(20, 'auth', '0010_alter_group_name_max_length', '2022-08-25 03:20:21.200056'),
(21, 'auth', '0011_update_proxy_permissions', '2022-08-25 03:20:21.232428'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2022-08-25 03:20:21.243837'),
(23, 'backup', '0001_initial', '2022-08-25 03:20:21.249789'),
(24, 'baseTemplate', '0001_initial', '2022-08-25 03:20:21.265446'),
(25, 'cloudAPI', '0001_initial', '2022-08-25 03:20:21.296731'),
(26, 'containerization', '0001_initial', '2022-08-25 03:20:21.334597'),
(27, 'databases', '0001_initial', '2022-08-25 03:20:21.443210'),
(28, 'dns', '0001_initial', '2022-08-25 03:20:21.573085'),
(29, 'dockerManager', '0001_initial', '2022-08-25 03:20:21.635008'),
(30, 'emailMarketing', '0001_initial', '2022-08-25 03:20:22.250804'),
(31, 'mailServer', '0001_initial', '2022-08-25 03:20:22.404253'),
(32, 'emailPremium', '0001_initial', '2022-08-25 03:20:23.302675'),
(33, 'filemanager', '0001_initial', '2022-08-25 03:20:23.374559'),
(34, 'firewall', '0001_initial', '2022-08-25 03:20:23.392925'),
(35, 'ftp', '0001_initial', '2022-08-25 03:20:23.440901'),
(36, 'managePHP', '0001_initial', '2022-08-25 03:20:23.498777'),
(37, 'manageServices', '0001_initial', '2022-08-25 03:20:23.535270'),
(38, 's3Backups', '0001_initial', '2022-08-25 03:20:24.152359'),
(39, 'sessions', '0001_initial', '2022-08-25 03:20:24.242524');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dockerManager_containers`
--

CREATE TABLE `dockerManager_containers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cid` varchar(64) NOT NULL,
  `image` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `memory` int(11) NOT NULL,
  `ports` longtext NOT NULL,
  `volumes` longtext NOT NULL,
  `env` longtext NOT NULL,
  `startOnReboot` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `dockerManager_containers`
--

TRUNCATE TABLE `dockerManager_containers`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `domainmetadata`
--

CREATE TABLE `domainmetadata` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `kind` varchar(32) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `master` varchar(128) DEFAULT NULL,
  `last_check` int(11) DEFAULT NULL,
  `type` varchar(6) NOT NULL,
  `notified_serial` int(11) DEFAULT NULL,
  `account` varchar(40) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_emailjobs`
--

CREATE TABLE `emailMarketing_emailjobs` (
  `id` int(11) NOT NULL,
  `date` varchar(200) NOT NULL,
  `host` varchar(1000) NOT NULL,
  `totalEmails` int(11) NOT NULL,
  `sent` int(11) NOT NULL,
  `failed` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_emailjobs`
--

TRUNCATE TABLE `emailMarketing_emailjobs`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_emaillists`
--

CREATE TABLE `emailMarketing_emaillists` (
  `id` int(11) NOT NULL,
  `listName` varchar(50) NOT NULL,
  `dateCreated` varchar(200) NOT NULL,
  `verified` int(11) NOT NULL,
  `notVerified` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_emaillists`
--

TRUNCATE TABLE `emailMarketing_emaillists`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_emailmarketing`
--

CREATE TABLE `emailMarketing_emailmarketing` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_emailmarketing`
--

TRUNCATE TABLE `emailMarketing_emailmarketing`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_emailsinlist`
--

CREATE TABLE `emailMarketing_emailsinlist` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `verificationStatus` varchar(100) NOT NULL,
  `dateCreated` varchar(200) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_emailsinlist`
--

TRUNCATE TABLE `emailMarketing_emailsinlist`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_emailtemplate`
--

CREATE TABLE `emailMarketing_emailtemplate` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `fromName` varchar(100) NOT NULL,
  `fromEmail` varchar(150) NOT NULL,
  `replyTo` varchar(150) NOT NULL,
  `emailMessage` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_emailtemplate`
--

TRUNCATE TABLE `emailMarketing_emailtemplate`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_smtphosts`
--

CREATE TABLE `emailMarketing_smtphosts` (
  `id` int(11) NOT NULL,
  `host` varchar(150) NOT NULL,
  `port` varchar(10) NOT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_smtphosts`
--

TRUNCATE TABLE `emailMarketing_smtphosts`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailMarketing_validationlog`
--

CREATE TABLE `emailMarketing_validationlog` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailMarketing_validationlog`
--

TRUNCATE TABLE `emailMarketing_validationlog`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `emailPremium_domainlimits`
--

CREATE TABLE `emailPremium_domainlimits` (
  `id` int(11) NOT NULL,
  `limitStatus` int(11) NOT NULL,
  `monthlyLimit` int(11) NOT NULL,
  `monthlyUsed` int(11) NOT NULL,
  `domain_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailPremium_domainlimits`
--

TRUNCATE TABLE `emailPremium_domainlimits`;
--
-- Extraindo dados da tabela `emailPremium_domainlimits`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emailPremium_emaillimits`
--

CREATE TABLE `emailPremium_emaillimits` (
  `id` int(11) NOT NULL,
  `limitStatus` int(11) NOT NULL,
  `monthlyLimits` int(11) NOT NULL,
  `monthlyUsed` int(11) NOT NULL,
  `hourlyLimit` int(11) NOT NULL,
  `hourlyUsed` int(11) NOT NULL,
  `emailLogs` int(11) NOT NULL,
  `email_id` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailPremium_emaillimits`
--

TRUNCATE TABLE `emailPremium_emaillimits`;
--
-- Extraindo dados da tabela `emailPremium_emaillimits`
--

--
-- Estrutura da tabela `emailPremium_emaillogs`
--

CREATE TABLE `emailPremium_emaillogs` (
  `id` int(11) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `timeStamp` varchar(200) NOT NULL,
  `email_id` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `emailPremium_emaillogs`
--

TRUNCATE TABLE `emailPremium_emaillogs`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `e_domains`
--

CREATE TABLE `e_domains` (
  `domain` varchar(50) NOT NULL,
  `childOwner_id` int(11) DEFAULT NULL,
  `domainOwner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `e_forwardings`
--

CREATE TABLE `e_forwardings` (
  `id` int(11) NOT NULL,
  `source` varchar(80) NOT NULL,
  `destination` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `e_transport`
--

CREATE TABLE `e_transport` (
  `id` int(11) NOT NULL,
  `domain` varchar(128) NOT NULL,
  `transport` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `e_users`
--

CREATE TABLE `e_users` (
  `email` varchar(80) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail` varchar(200) NOT NULL,
  `DiskUsage` varchar(200) NOT NULL,
  `emailOwner_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filemanager_trash`
--

CREATE TABLE `filemanager_trash` (
  `id` int(11) NOT NULL,
  `originalPath` varchar(500) NOT NULL,
  `fileName` varchar(200) NOT NULL,
  `website_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `firewall_firewallrules`
--

CREATE TABLE `firewall_firewallrules` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `proto` varchar(10) NOT NULL,
  `port` varchar(25) NOT NULL,
  `ipAddress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `firewall_firewallrules`
--

TRUNCATE TABLE `firewall_firewallrules`;
--
-- Extraindo dados da tabela `firewall_firewallrules`
--

INSERT INTO `firewall_firewallrules` (`id`, `name`, `proto`, `port`, `ipAddress`) VALUES
(2, 'http', 'tcp', '80', '0.0.0.0/0'),
(3, 'https', 'tcp', '443', '0.0.0.0/0'),
(4, 'ftp', 'tcp', '21', '0.0.0.0/0'),
(5, 'smtp', 'tcp', '25', '0.0.0.0/0'),
(6, 'smtps', 'tcp', '587', '0.0.0.0/0'),
(7, 'ssmtp', 'tcp', '465', '0.0.0.0/0'),
(8, 'pop3', 'tcp', '110', '0.0.0.0/0'),
(9, 'imap', 'tcp', '143', '0.0.0.0/0'),
(10, 'simap', 'tcp', '993', '0.0.0.0/0'),
(11, 'dns', 'udp', '53', '0.0.0.0/0'),
(12, 'dnstcp', 'tcp', '53', '0.0.0.0/0'),
(13, 'ftptls', 'tcp', '40110-40210', '0.0.0.0/0'),
(14, 'POP3S', 'tcp', '995', '0.0.0.0/0'),
(15, 'quic', 'udp', '443', '0.0.0.0/0'),
(17, 'panel', 'tcp', '8090', '0.0.0.0/0'),

-- --------------------------------------------------------

--
-- Estrutura da tabela `IncBackups_backupjob`
--

CREATE TABLE `IncBackups_backupjob` (
  `id` int(11) NOT NULL,
  `destination` varchar(300) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `websiteData` int(11) NOT NULL,
  `websiteDatabases` int(11) NOT NULL,
  `websiteDataEmails` int(11) NOT NULL,
  `retention` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `IncBackups_backupjob`
--

TRUNCATE TABLE `IncBackups_backupjob`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `IncBackups_incjob`
--

CREATE TABLE `IncBackups_incjob` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `website_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `IncBackups_incjob`
--

TRUNCATE TABLE `IncBackups_incjob`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `IncBackups_jobsites`
--

CREATE TABLE `IncBackups_jobsites` (
  `id` int(11) NOT NULL,
  `website` varchar(300) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `IncBackups_jobsites`
--

TRUNCATE TABLE `IncBackups_jobsites`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `IncBackups_jobsnapshots`
--

CREATE TABLE `IncBackups_jobsnapshots` (
  `id` int(11) NOT NULL,
  `type` varchar(300) NOT NULL,
  `snapshotid` varchar(50) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `IncBackups_jobsnapshots`
--

TRUNCATE TABLE `IncBackups_jobsnapshots`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `loginSystem_acl`
--

CREATE TABLE `loginSystem_acl` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `adminStatus` int(11) NOT NULL,
  `versionManagement` int(11) NOT NULL,
  `createNewUser` int(11) NOT NULL,
  `listUsers` int(11) NOT NULL,
  `deleteUser` int(11) NOT NULL,
  `resellerCenter` int(11) NOT NULL,
  `changeUserACL` int(11) NOT NULL,
  `createWebsite` int(11) NOT NULL,
  `modifyWebsite` int(11) NOT NULL,
  `suspendWebsite` int(11) NOT NULL,
  `deleteWebsite` int(11) NOT NULL,
  `createPackage` int(11) NOT NULL,
  `listPackages` int(11) NOT NULL,
  `deletePackage` int(11) NOT NULL,
  `modifyPackage` int(11) NOT NULL,
  `createDatabase` int(11) NOT NULL,
  `deleteDatabase` int(11) NOT NULL,
  `listDatabases` int(11) NOT NULL,
  `createNameServer` int(11) NOT NULL,
  `createDNSZone` int(11) NOT NULL,
  `deleteZone` int(11) NOT NULL,
  `addDeleteRecords` int(11) NOT NULL,
  `createEmail` int(11) NOT NULL,
  `listEmails` int(11) NOT NULL,
  `deleteEmail` int(11) NOT NULL,
  `emailForwarding` int(11) NOT NULL,
  `changeEmailPassword` int(11) NOT NULL,
  `dkimManager` int(11) NOT NULL,
  `createFTPAccount` int(11) NOT NULL,
  `deleteFTPAccount` int(11) NOT NULL,
  `listFTPAccounts` int(11) NOT NULL,
  `createBackup` int(11) NOT NULL,
  `restoreBackup` int(11) NOT NULL,
  `addDeleteDestinations` int(11) NOT NULL,
  `scheduleBackups` int(11) NOT NULL,
  `remoteBackups` int(11) NOT NULL,
  `manageSSL` int(11) NOT NULL,
  `hostnameSSL` int(11) NOT NULL,
  `mailServerSSL` int(11) NOT NULL,
  `config` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `loginSystem_acl`
--

TRUNCATE TABLE `loginSystem_acl`;
--
-- Extraindo dados da tabela `loginSystem_acl`
--

INSERT INTO `loginSystem_acl` (`id`, `name`, `adminStatus`, `versionManagement`, `createNewUser`, `listUsers`, `deleteUser`, `resellerCenter`, `changeUserACL`, `createWebsite`, `modifyWebsite`, `suspendWebsite`, `deleteWebsite`, `createPackage`, `listPackages`, `deletePackage`, `modifyPackage`, `createDatabase`, `deleteDatabase`, `listDatabases`, `createNameServer`, `createDNSZone`, `deleteZone`, `addDeleteRecords`, `createEmail`, `listEmails`, `deleteEmail`, `emailForwarding`, `changeEmailPassword`, `dkimManager`, `createFTPAccount`, `deleteFTPAccount`, `listFTPAccounts`, `createBackup`, `restoreBackup`, `addDeleteDestinations`, `scheduleBackups`, `remoteBackups`, `manageSSL`, `hostnameSSL`, `mailServerSSL`, `config`) VALUES
(1, 'admin', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, '{\"adminStatus\":1, \"versionManagement\": 1, \"createNewUser\": 1, \"listUsers\": 1, \"deleteUser\":1 , \"resellerCenter\": 1, \"changeUserACL\": 1, \"createWebsite\": 1, \"modifyWebsite\": 1, \"suspendWebsite\": 1, \"deleteWebsite\": 1, \"createPackage\": 1, \"listPackages\": 1, \"deletePackage\": 1, \"modifyPackage\": 1, \"createDatabase\": 1, \"deleteDatabase\": 1, \"listDatabases\": 1, \"createNameServer\": 1, \"createDNSZone\": 1, \"deleteZone\": 1, \"addDeleteRecords\": 1, \"createEmail\": 1, \"listEmails\": 1, \"deleteEmail\": 1, \"emailForwarding\": 1, \"changeEmailPassword\": 1, \"dkimManager\": 1, \"createFTPAccount\": 1, \"deleteFTPAccount\": 1, \"listFTPAccounts\": 1, \"createBackup\": 1, \"restoreBackup\": 1, \"addDeleteDestinations\": 1, \"scheduleBackups\": 1, \"remoteBackups\": 1, \"googleDriveBackups\": 1, \"manageSSL\": 1, \"hostnameSSL\": 1, \"mailServerSSL\": 1 }'),
(2, 'reseller', 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, '{\"adminStatus\":0, \"versionManagement\": 1, \"createNewUser\": 1, \"listUsers\": 1, \"deleteUser\": 1 , \"resellerCenter\": 1, \"changeUserACL\": 0, \"createWebsite\": 1, \"modifyWebsite\": 1, \"suspendWebsite\": 1, \"deleteWebsite\": 1, \"createPackage\": 1, \"listPackages\": 1, \"deletePackage\": 1, \"modifyPackage\": 1, \"createDatabase\": 1, \"deleteDatabase\": 1, \"listDatabases\": 1, \"createNameServer\": 1, \"createDNSZone\": 1, \"deleteZone\": 1, \"addDeleteRecords\": 1, \"createEmail\": 1, \"listEmails\": 1, \"deleteEmail\": 1, \"emailForwarding\": 1, \"changeEmailPassword\": 1, \"dkimManager\": 1, \"createFTPAccount\": 1, \"deleteFTPAccount\": 1, \"listFTPAccounts\": 1, \"createBackup\": 1, \"restoreBackup\": 1, \"addDeleteDestinations\": 0, \"scheduleBackups\": 0, \"remoteBackups\": 0, \"googleDriveBackups\": 1, \"manageSSL\": 1, \"hostnameSSL\": 0, \"mailServerSSL\": 0 }'),
(3, 'user', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, '{\"adminStatus\":0, \"versionManagement\": 1, \"createNewUser\": 0, \"listUsers\": 0, \"deleteUser\": 0 , \"resellerCenter\": 0, \"changeUserACL\": 0, \"createWebsite\": 0, \"modifyWebsite\": 0, \"suspendWebsite\": 0, \"deleteWebsite\": 0, \"createPackage\": 0, \"listPackages\": 0, \"deletePackage\": 0, \"modifyPackage\": 0, \"createDatabase\": 1, \"deleteDatabase\": 1, \"listDatabases\": 1, \"createNameServer\": 0, \"createDNSZone\": 1, \"deleteZone\": 1, \"addDeleteRecords\": 1, \"createEmail\": 1, \"listEmails\": 1, \"deleteEmail\": 1, \"emailForwarding\": 1, \"changeEmailPassword\": 1, \"dkimManager\": 1, \"createFTPAccount\": 1, \"deleteFTPAccount\": 1, \"listFTPAccounts\": 1, \"createBackup\": 1, \"restoreBackup\": 0, \"addDeleteDestinations\": 0, \"scheduleBackups\": 0, \"remoteBackups\": 0, \"googleDriveBackups\": 1, \"manageSSL\": 1, \"hostnameSSL\": 0, \"mailServerSSL\": 0 }');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loginSystem_administrator`
--

CREATE TABLE `loginSystem_administrator` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `api` int(11) NOT NULL,
  `securityLevel` int(11) NOT NULL,
  `state` varchar(10) NOT NULL,
  `initWebsitesLimit` int(11) NOT NULL,
  `twoFA` int(11) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `config` longtext NOT NULL,
  `acl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `loginSystem_administrator`
--

TRUNCATE TABLE `loginSystem_administrator`;
--
-- Extraindo dados da tabela `loginSystem_administrator`
--

INSERT INTO `loginSystem_administrator` (`id`, `userName`, `password`, `firstName`, `lastName`, `email`, `type`, `owner`, `token`, `api`, `securityLevel`, `state`, `initWebsitesLimit`, `twoFA`, `secretKey`, `config`, `acl_id`) VALUES
(1, 'admin', 'a533519eb243b30d3623105f4c9590ff3acdb2819b11919c89d1665e1f637e9e:8ca6d87855f946d9995ddb30bc054059', 'Cyber', 'Panel', 'example@example.org', 1, 1, 'Basic YWRtaW46NWhwa3hrZmpuS094aWtmQw==', 0, 0, 'ACTIVE', 0, 0, 'None', '{}', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mailServer_pipeprograms`
--

CREATE TABLE `mailServer_pipeprograms` (
  `id` int(11) NOT NULL,
  `source` varchar(80) NOT NULL,
  `destination` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `mailServer_pipeprograms`
--

TRUNCATE TABLE `mailServer_pipeprograms`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `managePHP_apachephp`
--

CREATE TABLE `managePHP_apachephp` (
  `id` int(11) NOT NULL,
  `phpVers` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `managePHP_apachephp`
--

TRUNCATE TABLE `managePHP_apachephp`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `managePHP_installedpackages`
--

CREATE TABLE `managePHP_installedpackages` (
  `id` int(11) NOT NULL,
  `extensionName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phpVers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `managePHP_installedpackages`
--

TRUNCATE TABLE `managePHP_installedpackages`;
--
-- Extraindo dados da tabela `managePHP_installedpackages`
--

INSERT INTO `managePHP_installedpackages` (`id`, `extensionName`, `description`, `status`, `phpVers_id`) VALUES
(1, 'lsphp53-bcmath', 'A module for PHP applications for using the bcmath library', 1, 1),
(2, 'lsphp53-common', 'Common files for PHP', 1, 1),
(3, 'lsphp53-dba', 'A database abstraction layer module for PHP applications', 1, 1),
(4, 'lsphp53-enchant', 'Human Language and Character Encoding Support', 1, 1),
(5, 'lsphp53-gd', 'A module for PHP applications for using the gd graphics library', 1, 1),
(6, 'lsphp53-imap', 'A module for PHP applications that use IMAP', 1, 1),
(7, 'lsphp53-intl', 'Internationalization extension for PHP application', 1, 1),
(8, 'lsphp53-ioncube-loader', 'Ioncube Loader', 1, 1),
(9, 'lsphp53-ldap', 'A module for PHP applications that use LDAP', 1, 1),
(10, 'lsphp53-mbstring', 'A module for PHP applications which need multi-byte string handling', 1, 1),
(11, 'lsphp53-mcrypt', 'Standard PHP module provides mcrypt library support', 1, 1),
(12, 'lsphp53-mysql', 'A module for PHP applications that use MySQL databases', 1, 1),
(13, 'lsphp53-odbc', 'A module for PHP applications that use ODBC databases', 1, 1),
(14, 'lsphp53-pdo', 'A database access abstraction module for PHP applications', 1, 1),
(15, 'lsphp53-pear', 'PHP Extension and Application Repository framework', 1, 1),
(16, 'lsphp53-pecl-apc', 'APC caches and optimizes PHP intermediate code', 1, 1),
(17, 'lsphp53-pgsql', 'A PostgreSQL database module for PHP', 1, 1),
(18, 'lsphp53-process', 'Modules for PHP script using system process interfaces', 1, 1),
(19, 'lsphp53-pspell', 'A module for PHP applications for using pspell interfaces', 1, 1),
(20, 'lsphp53-recode', 'A module for PHP applications for using the recode library', 1, 1),
(21, 'lsphp53-snmp', 'A module for PHP applications that query SNMP-managed devices', 1, 1),
(22, 'lsphp53-soap', 'A module for PHP applications that use the SOAP protocol', 1, 1),
(23, 'lsphp53-tidy', 'Standard PHP module provides tidy library support', 1, 1),
(24, 'lsphp53-xml', 'A module for PHP applications which use XML', 1, 1),
(25, 'lsphp53-xmlrpc', 'A module for PHP applications which use the XML-RPC protocol', 1, 1),
(26, 'lsphp53-debuginfo', 'Debug information for package lsphp53', 0, 1),
(27, 'lsphp53-lsphp53-devel', 'Files needed for building PHP extensions', 0, 1),
(28, 'lsphp53-mysql56', 'PHP scripting language for creating dynamic web sites', 0, 1),
(29, 'lsphp53-mysqlnd', 'A module for PHP applications that use MySQL databases', 0, 1),
(30, 'lsphp53-opcache', 'The Zend OPcache', 0, 1),
(31, 'lsphp53-pecl-apc-devel', 'APC developer files (header)', 0, 1),
(32, 'lsphp53-pecl-apc-panel', 'APC control panel', 0, 1),
(33, 'lsphp53-sqlite', 'Extension for the SQLite V2 Embeddable SQL Database Engine', 0, 1),
(34, 'lsphp53-xcache', 'PHP accelerator, optimizer, encoder and dynamic content cacher', 0, 1),
(35, 'lsphp53-xcache-admin', 'XCache Administration', 0, 1),
(36, 'lsphp54-bcmath', 'A module for PHP applications for using the bcmath library', 1, 2),
(37, 'lsphp54-common', 'Common files for PHP', 1, 2),
(38, 'lsphp53-dba', 'A database abstraction layer module for PHP applications', 1, 2),
(39, 'lsphp54-enchant', 'Human Language and Character Encoding Support', 1, 1),
(40, 'lsphp54-gd', 'A module for PHP applications for using the gd graphics library', 1, 2),
(41, 'lsphp54-imap', 'A module for PHP applications that use IMAP', 1, 2),
(42, 'lsphp54-intl', 'Internationalization extension for PHP application', 1, 1),
(43, 'lsphp54-ioncube-loader', 'Ioncube Loader', 1, 2),
(44, 'lsphp54-ldap', 'A module for PHP applications that use LDAP', 1, 2),
(45, 'lsphp54-mbstring', 'A module for PHP applications which need multi-byte string handling', 1, 2),
(46, 'lsphp54-mcrypt', 'Standard PHP module provides mcrypt library support', 1, 2),
(47, 'lsphp54-mysql', 'A module for PHP applications that use MySQL databases', 1, 2),
(48, 'lsphp54-odbc', 'A module for PHP applications that use ODBC databases', 1, 2),
(49, 'lsphp54-pdo', 'A database access abstraction module for PHP applications', 1, 2),
(50, 'lsphp54-pear', 'PHP Extension and Application Repository framework', 1, 2),
(51, 'lsphp54-pecl-apc', 'APC caches and optimizes PHP intermediate code', 1, 2),
(52, 'lsphp54-pgsql', 'A PostgreSQL database module for PHP', 1, 1),
(53, 'lsphp54-process', 'Modules for PHP script using system process interfaces', 1, 2),
(54, 'lsphp54-pspell', 'A module for PHP applications for using pspell interfaces', 1, 2),
(55, 'lsphp54-recode', 'A module for PHP applications for using the recode library', 1, 2),
(56, 'lsphp54-snmp', 'A module for PHP applications that query SNMP-managed devices', 1, 2),
(57, 'lsphp54-soap', 'A module for PHP applications that use the SOAP protocol', 1, 2),
(58, 'lsphp54-tidy', 'Standard PHP module provides tidy library support', 1, 2),
(59, 'lsphp54-xml', 'A module for PHP applications which use XML', 1, 2),
(60, 'lsphp54-xmlrpc', 'A module for PHP applications which use the XML-RPC protocol', 1, 2),
(61, 'lsphp54-debuginfo', 'Debug information for package lsphp54', 0, 2),
(62, 'lsphp54-mysql56-debuginfo', 'Debug information for package lsphp54-mysql56', 0, 2),
(63, 'lsphp54-lsphp53-devel', 'Files needed for building PHP extensions', 0, 2),
(64, 'lsphp54-mysql56', 'PHP scripting language for creating dynamic web sites', 0, 2),
(65, 'lsphp54-mysqlnd', 'A module for PHP applications that use MySQL databases', 0, 2),
(66, 'lsphp54-opcache', 'The Zend OPcache', 0, 2),
(67, 'lsphp54-pecl-apc-devel', 'APC developer files (header)', 0, 2),
(68, 'lsphp54-pecl-apc-panel', 'APC control panel', 0, 2),
(69, 'lsphp54-sqlite', 'Extension for the SQLite V2 Embeddable SQL Database Engine', 0, 2),
(70, 'lsphp54-xcache', 'PHP accelerator, optimizer, encoder and dynamic content cacher', 0, 2),
(71, 'lsphp54-xcache-admin', 'XCache Administration', 0, 2),
(72, 'lsphp55-bcmath', 'A module for PHP applications for using the bcmath library', 1, 3),
(73, 'lsphp55-common', 'Common files for PHP', 1, 3),
(74, 'lsphp55-dba', 'A database abstraction layer module for PHP applications', 1, 3),
(75, 'lsphp55-enchant', 'Human Language and Character Encoding Support', 1, 3),
(76, 'lsphp55-gd', 'A module for PHP applications for using the gd graphics library', 1, 3),
(77, 'lsphp55-imap', 'A module for PHP applications that use IMAP', 1, 3),
(78, 'lsphp55-intl', 'Internationalization extension for PHP application', 1, 3),
(79, 'lsphp55-ioncube-loader', 'Ioncube Loader', 1, 3),
(80, 'lsphp55-ldap', 'A module for PHP applications that use LDAP', 1, 3),
(81, 'lsphp55-mbstring', 'A module for PHP applications which need multi-byte string handling', 1, 3),
(82, 'lsphp55-mcrypt', 'Standard PHP module provides mcrypt library support', 1, 3),
(83, 'lsphp55-mysql', 'A module for PHP applications that use MySQL databases', 1, 3),
(84, 'lsphp55-odbc', 'A module for PHP applications that use ODBC databases', 1, 3),
(85, 'lsphp55-pdo', 'A database access abstraction module for PHP applications', 1, 3),
(86, 'lsphp55-pear', 'PHP Extension and Application Repository framework', 1, 3),
(87, 'lsphp55-pgsql', 'A PostgreSQL database module for PHP', 1, 3),
(88, 'lsphp55-process', 'Modules for PHP script using system process interfaces', 1, 3),
(89, 'lsphp55-pspell', 'A module for PHP applications for using pspell interfaces', 1, 3),
(90, 'lsphp55-recode', 'A module for PHP applications for using the recode library', 1, 3),
(91, 'lsphp55-snmp', 'A module for PHP applications that query SNMP-managed devices', 1, 3),
(92, 'lsphp55-soap', 'A module for PHP applications that use the SOAP protocol', 1, 3),
(93, 'lsphp55-tidy', 'Standard PHP module provides tidy library support', 1, 3),
(94, 'lsphp55-xml', 'A module for PHP applications which use XML', 1, 3),
(95, 'lsphp55-xmlrpc', 'A module for PHP applications which use the XML-RPC protocol', 1, 3),
(96, 'lsphp55-debuginfo', 'Debug information for package lsphp55', 0, 3),
(97, 'lsphp55-mysql56-debuginfo', 'Debug information for package lsphp55-mysql56', 0, 3),
(98, 'lsphp55-lsphp53-devel', 'Files needed for building PHP extensions', 0, 3),
(99, 'lsphp55-mysql56', 'PHP scripting language for creating dynamic web sites', 0, 2),
(100, 'lsphp55-mysqlnd', 'A module for PHP applications that use MySQL databases', 0, 3),
(101, 'lsphp55-opcache', 'The Zend OPcache', 0, 3),
(102, 'lsphp55-sqlite', 'Extension for the SQLite V2 Embeddable SQL Database Engine', 0, 3),
(103, 'lsphp55-xcache', 'PHP accelerator, optimizer, encoder and dynamic content cacher', 0, 3),
(104, 'lsphp55-xcache-admin', 'XCache Administration', 0, 3),
(105, 'lsphp56-bcmath', 'A module for PHP applications for using the bcmath library', 1, 4),
(106, 'lsphp56-common', 'Common files for PHP', 1, 4),
(107, 'lsphp56-dba', 'A database abstraction layer module for PHP applications', 1, 4),
(108, 'lsphp56-enchant', 'Human Language and Character Encoding Support', 1, 4),
(109, 'lsphp56-gd', 'A module for PHP applications for using the gd graphics library', 1, 4),
(110, 'lsphp56-gmp', 'A module for PHP applications for using the GNU MP library', 1, 4),
(111, 'lsphp56-imap', 'A module for PHP applications that use IMAP', 1, 4),
(112, 'lsphp56-intl', 'Internationalization extension for PHP application', 1, 4),
(113, 'lsphp56-ioncube-loader', 'Ioncube Loader', 1, 4),
(114, 'lsphp56-ldap', 'A module for PHP applications that use LDAP', 1, 4),
(115, 'lsphp56-mbstring', 'A module for PHP applications which need multi-byte string handling', 1, 4),
(116, 'lsphp56-mcrypt', 'Standard PHP module provides mcrypt library support', 1, 4),
(117, 'lsphp56-mysql', 'A module for PHP applications that use MySQL databases', 1, 4),
(118, 'lsphp56-odbc', 'A module for PHP applications that use ODBC databases', 1, 4),
(119, 'lsphp56-pdo', 'A database access abstraction module for PHP applications', 1, 4),
(120, 'lsphp56-pear', 'PHP Extension and Application Repository framework', 1, 3),
(121, 'lsphp56-pgsql', 'A PostgreSQL database module for PHP', 1, 4),
(122, 'lsphp56-process', 'Modules for PHP script using system process interfaces', 1, 4),
(123, 'lsphp56-pspell', 'A module for PHP applications for using pspell interfaces', 1, 4),
(124, 'lsphp56-recode', 'A module for PHP applications for using the recode library', 1, 4),
(125, 'lsphp56-snmp', 'A module for PHP applications that query SNMP-managed devices', 1, 4),
(126, 'lsphp56-soap', 'A module for PHP applications that use the SOAP protocol', 1, 4),
(127, 'lsphp56-tidy', 'Standard PHP module provides tidy library support', 1, 4),
(128, 'lsphp56-xml', 'A module for PHP applications which use XML', 1, 4),
(129, 'lsphp56-xmlrpc', 'A module for PHP applications which use the XML-RPC protocol', 1, 4),
(130, 'lsphp56-debuginfo', 'Debug information for package lsphp56', 0, 4),
(131, 'lsphp56-mysql56-debuginfo', 'Debug information for package lsphp56-mysql56', 0, 4),
(132, 'lsphp56-devel', 'Files needed for building PHP extensions', 0, 4),
(133, 'lsphp56-mysql56', 'PHP scripting language for creating dynamic web sites', 0, 4),
(134, 'lsphp56-mysqlnd', 'A module for PHP applications that use MySQL databases', 0, 4),
(135, 'lsphp56-opcache', 'The Zend OPcache', 0, 4),
(136, 'lsphp56-sqlite', 'Extension for the SQLite V2 Embeddable SQL Database Engine', 0, 4),
(137, 'lsphp56-xcache', 'PHP accelerator, optimizer, encoder and dynamic content cacher', 0, 4),
(138, 'lsphp56-xcache-admin', 'XCache Administration', 0, 4),
(139, 'lsphp56-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 4),
(140, 'lsphp70-debuginfo', 'Debug information for package lsphp70', 0, 5),
(141, 'lsphp70-pecl-igbinary-debuginfo', 'Debug information for package lsphp70-pecl-igbinary', 0, 5),
(142, 'lsphp70-pecl-mcrypt-debuginfo', 'LSPHP70 lsphp70-pecl-mcrypt-debuginfo Extension', 0, 5),
(143, 'lsphp70-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 5),
(144, 'lsphp70-common', 'Common files for PHP.', 1, 5),
(145, 'lsphp70-dba', 'A database abstraction layer extension for PHP applications.', 1, 5),
(146, 'lsphp70-devel', 'Files needed for building PHP extensions.', 0, 5),
(147, 'lsphp70-enchant', 'Enchant spelling extension for PHP applications.', 1, 5),
(148, 'lsphp70-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 5),
(149, 'lsphp70-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 5),
(150, 'lsphp70-imap', 'A extension for PHP applications that use IMAP.', 1, 5),
(151, 'lsphp70-intl', 'Internationalization extension for PHP applications.', 1, 5),
(152, 'lsphp70-json', 'LSPHP70 Json PHP Extension', 1, 5),
(153, 'lsphp70-ldap', 'A extension for PHP applications that use LDAP.', 1, 5),
(154, 'lsphp70-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 5),
(155, 'lsphp70-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 5),
(156, 'lsphp70-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 5),
(157, 'lsphp70-opcache', 'The Zend OPcache.', 1, 5),
(158, 'lsphp70-pdo', 'A database access abstraction extension for PHP applications.', 1, 5),
(159, 'lsphp70-pear', 'PHP Extension and Application Repository framework.', 1, 5),
(160, 'lsphp70-pecl-apcu', 'APC User Cache.', 0, 5),
(161, 'lsphp70-pecl-apcu-devel', 'APCu developer files (header).', 0, 5),
(162, 'lsphp70-pecl-apcu-panel', 'APCu control panel.', 0, 5),
(163, 'lsphp70-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 5),
(164, 'lsphp70-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 5),
(165, 'lsphp70-pecl-mcrypt', 'LSPHP70 lsphp70-pecl-mcrypt Extension.', 0, 5),
(166, 'lsphp70-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 5),
(167, 'lsphp70-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 5),
(168, 'lsphp70-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 5),
(169, 'lsphp70-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 5),
(170, 'lsphp70-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 5),
(171, 'lsphp70-pgsql', 'A PostgreSQL database extension for PHP.', 1, 5),
(172, 'lsphp70-process', 'extensions for PHP script using system process interfaces.', 1, 5),
(173, 'lsphp70-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 5),
(174, 'lsphp70-recode', 'A extension for PHP applications for using the recode library.', 1, 5),
(175, 'lsphp70-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 5),
(176, 'lsphp70-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 5),
(177, 'lsphp70-tidy', 'Standard PHP extension provides tidy library support.', 1, 5),
(178, 'lsphp70-xml', 'A module for PHP applications which use XML.', 1, 5),
(179, 'lsphp70-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 5),
(180, 'lsphp70-zip', 'ZIP archive management extension for PHP', 0, 5),
(181, 'lsphp70-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 5),
(182, 'lsphp70-dbg', 'php70-dbg lsphp70-package', 0, 5),
(183, 'lsphp70-ioncube', 'ioncube loaders', 0, 5),
(184, 'lsphp70-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 5),
(185, 'lsphp71-debuginfo', 'Debug information for package lsphp71', 0, 6),
(186, 'lsphp71-pecl-igbinary-debuginfo', 'Debug information for package lsphp71-pecl-igbinary', 0, 6),
(187, 'lsphp71-pecl-mcrypt-debuginfo', 'LSPHP71 lsphp71-pecl-mcrypt-debuginfo Extension', 0, 6),
(188, 'lsphp71-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 6),
(189, 'lsphp71-common', 'Common files for PHP.', 1, 6),
(190, 'lsphp71-dba', 'A database abstraction layer extension for PHP applications.', 1, 6),
(191, 'lsphp71-devel', 'Files needed for building PHP extensions.', 0, 6),
(192, 'lsphp71-enchant', 'Enchant spelling extension for PHP applications.', 1, 6),
(193, 'lsphp71-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 6),
(194, 'lsphp71-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 6),
(195, 'lsphp71-imap', 'A extension for PHP applications that use IMAP.', 1, 6),
(196, 'lsphp71-intl', 'Internationalization extension for PHP applications.', 1, 6),
(197, 'lsphp71-json', 'LSPHP71 Json PHP Extension', 1, 6),
(198, 'lsphp71-ldap', 'A extension for PHP applications that use LDAP.', 1, 6),
(199, 'lsphp71-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 6),
(200, 'lsphp71-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 6),
(201, 'lsphp71-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 6),
(202, 'lsphp71-opcache', 'The Zend OPcache.', 1, 6),
(203, 'lsphp71-pdo', 'A database access abstraction extension for PHP applications.', 1, 6),
(204, 'lsphp71-pear', 'PHP Extension and Application Repository framework.', 1, 6),
(205, 'lsphp71-pecl-apcu', 'APC User Cache.', 0, 6),
(206, 'lsphp71-pecl-apcu-devel', 'APCu developer files (header).', 0, 6),
(207, 'lsphp71-pecl-apcu-panel', 'APCu control panel.', 0, 6),
(208, 'lsphp71-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 6),
(209, 'lsphp71-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 6),
(210, 'lsphp71-pecl-mcrypt', 'LSPHP71 lsphp71-pecl-mcrypt Extension.', 0, 6),
(211, 'lsphp71-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 6),
(212, 'lsphp71-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 6),
(213, 'lsphp71-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 6),
(214, 'lsphp71-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 6),
(215, 'lsphp71-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 6),
(216, 'lsphp71-pgsql', 'A PostgreSQL database extension for PHP.', 1, 6),
(217, 'lsphp71-process', 'extensions for PHP script using system process interfaces.', 1, 6),
(218, 'lsphp71-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 6),
(219, 'lsphp71-recode', 'A extension for PHP applications for using the recode library.', 1, 6),
(220, 'lsphp71-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 6),
(221, 'lsphp71-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 6),
(222, 'lsphp71-tidy', 'Standard PHP extension provides tidy library support.', 1, 6),
(223, 'lsphp71-xml', 'A module for PHP applications which use XML.', 1, 6),
(224, 'lsphp71-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 6),
(225, 'lsphp71-zip', 'ZIP archive management extension for PHP', 0, 6),
(226, 'lsphp71-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 6),
(227, 'lsphp71-dbg', 'php71-dbg lsphp71-package', 0, 6),
(228, 'lsphp71-ioncube', 'ioncube loaders', 0, 6),
(229, 'lsphp71-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 6),
(230, 'lsphp72-debuginfo', 'Debug information for package lsphp72', 0, 7),
(231, 'lsphp72-pecl-igbinary-debuginfo', 'Debug information for package lsphp72-pecl-igbinary', 0, 7),
(232, 'lsphp72-pecl-mcrypt-debuginfo', 'LSPHP72 lsphp72-pecl-mcrypt-debuginfo Extension', 0, 7),
(233, 'lsphp72-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 7),
(234, 'lsphp72-common', 'Common files for PHP.', 1, 7),
(235, 'lsphp72-dba', 'A database abstraction layer extension for PHP applications.', 1, 7),
(236, 'lsphp72-devel', 'Files needed for building PHP extensions.', 0, 7),
(237, 'lsphp72-enchant', 'Enchant spelling extension for PHP applications.', 1, 7),
(238, 'lsphp72-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 7),
(239, 'lsphp72-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 7),
(240, 'lsphp72-imap', 'A extension for PHP applications that use IMAP.', 1, 7),
(241, 'lsphp72-intl', 'Internationalization extension for PHP applications.', 1, 7),
(242, 'lsphp72-json', 'LSPHP72 Json PHP Extension', 1, 7),
(243, 'lsphp72-ldap', 'A extension for PHP applications that use LDAP.', 1, 7),
(244, 'lsphp72-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 7),
(245, 'lsphp72-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 7),
(246, 'lsphp72-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 7),
(247, 'lsphp72-opcache', 'The Zend OPcache.', 1, 7),
(248, 'lsphp72-pdo', 'A database access abstraction extension for PHP applications.', 1, 7),
(249, 'lsphp72-pear', 'PHP Extension and Application Repository framework.', 1, 7),
(250, 'lsphp72-pecl-apcu', 'APC User Cache.', 0, 7),
(251, 'lsphp72-pecl-apcu-devel', 'APCu developer files (header).', 0, 7),
(252, 'lsphp72-pecl-apcu-panel', 'APCu control panel.', 0, 7),
(253, 'lsphp72-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 7),
(254, 'lsphp72-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 7),
(255, 'lsphp72-pecl-mcrypt', 'LSPHP72 lsphp72-pecl-mcrypt Extension.', 0, 7),
(256, 'lsphp72-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 7),
(257, 'lsphp72-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 7),
(258, 'lsphp72-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 7),
(259, 'lsphp72-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 7),
(260, 'lsphp72-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 7),
(261, 'lsphp72-pgsql', 'A PostgreSQL database extension for PHP.', 1, 7),
(262, 'lsphp72-process', 'extensions for PHP script using system process interfaces.', 1, 7),
(263, 'lsphp72-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 7),
(264, 'lsphp72-recode', 'A extension for PHP applications for using the recode library.', 1, 7),
(265, 'lsphp72-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 7),
(266, 'lsphp72-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 7),
(267, 'lsphp72-tidy', 'Standard PHP extension provides tidy library support.', 1, 7),
(268, 'lsphp72-xml', 'A module for PHP applications which use XML.', 1, 7),
(269, 'lsphp72-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 7),
(270, 'lsphp72-zip', 'ZIP archive management extension for PHP', 0, 7),
(271, 'lsphp72-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 7),
(272, 'lsphp72-dbg', 'php72-dbg lsphp72-package', 0, 7),
(273, 'lsphp72-ioncube', 'ioncube loaders', 0, 7),
(274, 'lsphp72-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 7),
(275, 'lsphp72-sodium', 'The php-sodium extension provides strong encryption capabilities in an easy and consistent way.', 0, 7),
(276, 'lsphp73-debuginfo', 'Debug information for package lsphp73', 0, 8),
(277, 'lsphp73-pecl-igbinary-debuginfo', 'Debug information for package lsphp73-pecl-igbinary', 0, 8),
(278, 'lsphp73-pecl-mcrypt-debuginfo', 'LSPHP73 lsphp73-pecl-mcrypt-debuginfo Extension', 0, 8),
(279, 'lsphp73-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 8),
(280, 'lsphp73-common', 'Common files for PHP.', 1, 8),
(281, 'lsphp73-dba', 'A database abstraction layer extension for PHP applications.', 1, 8),
(282, 'lsphp73-devel', 'Files needed for building PHP extensions.', 0, 8),
(283, 'lsphp73-enchant', 'Enchant spelling extension for PHP applications.', 1, 8),
(284, 'lsphp73-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 8),
(285, 'lsphp73-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 8),
(286, 'lsphp73-imap', 'A extension for PHP applications that use IMAP.', 1, 8),
(287, 'lsphp73-intl', 'Internationalization extension for PHP applications.', 1, 8),
(288, 'lsphp73-json', 'LSPHP73 Json PHP Extension', 1, 8),
(289, 'lsphp73-ldap', 'A extension for PHP applications that use LDAP.', 1, 8),
(290, 'lsphp73-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 8),
(291, 'lsphp73-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 8),
(292, 'lsphp73-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 8),
(293, 'lsphp73-opcache', 'The Zend OPcache.', 1, 8),
(294, 'lsphp73-pdo', 'A database access abstraction extension for PHP applications.', 1, 8),
(295, 'lsphp73-pear', 'PHP Extension and Application Repository framework.', 1, 8),
(296, 'lsphp73-pecl-apcu', 'APC User Cache.', 0, 8),
(297, 'lsphp73-pecl-apcu-devel', 'APCu developer files (header).', 0, 8),
(298, 'lsphp73-pecl-apcu-panel', 'APCu control panel.', 0, 8),
(299, 'lsphp73-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 8),
(300, 'lsphp73-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 8),
(301, 'lsphp73-pecl-mcrypt', 'LSPHP73 lsphp73-pecl-mcrypt Extension.', 0, 8),
(302, 'lsphp73-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 8),
(303, 'lsphp73-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 8),
(304, 'lsphp73-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 8),
(305, 'lsphp73-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 8),
(306, 'lsphp73-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 8),
(307, 'lsphp73-pgsql', 'A PostgreSQL database extension for PHP.', 1, 8),
(308, 'lsphp73-process', 'extensions for PHP script using system process interfaces.', 1, 8),
(309, 'lsphp73-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 8),
(310, 'lsphp73-recode', 'A extension for PHP applications for using the recode library.', 1, 8),
(311, 'lsphp73-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 8),
(312, 'lsphp73-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 8),
(313, 'lsphp73-tidy', 'Standard PHP extension provides tidy library support.', 1, 8),
(314, 'lsphp73-xml', 'A module for PHP applications which use XML.', 1, 8),
(315, 'lsphp73-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 8),
(316, 'lsphp73-zip', 'ZIP archive management extension for PHP', 0, 8),
(317, 'lsphp73-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 8),
(318, 'lsphp73-dbg', 'php73-dbg lsphp73-package', 0, 8),
(319, 'lsphp73-ioncube', 'ioncube loaders', 0, 8),
(320, 'lsphp73-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 8),
(321, 'lsphp73-sodium', 'The php-sodium extension provides strong encryption capabilities in an easy and consistent way.', 0, 8),
(322, 'lsphp74-debuginfo', 'Debug information for package lsphp74', 0, 9),
(323, 'lsphp74-pecl-igbinary-debuginfo', 'Debug information for package lsphp74-pecl-igbinary', 0, 9),
(324, 'lsphp74-pecl-mcrypt-debuginfo', 'lsphp74 lsphp74-pecl-mcrypt-debuginfo Extension', 0, 9),
(325, 'lsphp74-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 9),
(326, 'lsphp74-common', 'Common files for PHP.', 1, 9),
(327, 'lsphp74-dba', 'A database abstraction layer extension for PHP applications.', 1, 9),
(328, 'lsphp74-devel', 'Files needed for building PHP extensions.', 0, 9),
(329, 'lsphp74-enchant', 'Enchant spelling extension for PHP applications.', 1, 9),
(330, 'lsphp74-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 9),
(331, 'lsphp74-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 9),
(332, 'lsphp74-imap', 'A extension for PHP applications that use IMAP.', 1, 9),
(333, 'lsphp74-intl', 'Internationalization extension for PHP applications.', 1, 9),
(334, 'lsphp74-json', 'lsphp74 Json PHP Extension', 1, 9),
(335, 'lsphp74-ldap', 'A extension for PHP applications that use LDAP.', 1, 9),
(336, 'lsphp74-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 9),
(337, 'lsphp74-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 9),
(338, 'lsphp74-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 9),
(339, 'lsphp74-opcache', 'The Zend OPcache.', 1, 9),
(340, 'lsphp74-pdo', 'A database access abstraction extension for PHP applications.', 1, 9),
(341, 'lsphp74-pear', 'PHP Extension and Application Repository framework.', 1, 9),
(342, 'lsphp74-pecl-apcu', 'APC User Cache.', 0, 9),
(343, 'lsphp74-pecl-apcu-devel', 'APCu developer files (header).', 0, 9),
(344, 'lsphp74-pecl-apcu-panel', 'APCu control panel.', 0, 9),
(345, 'lsphp74-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 9),
(346, 'lsphp74-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 9),
(347, 'lsphp74-pecl-mcrypt', 'lsphp74 lsphp74-pecl-mcrypt Extension.', 0, 9),
(348, 'lsphp74-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 9),
(349, 'lsphp74-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 9),
(350, 'lsphp74-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 9),
(351, 'lsphp74-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 9),
(352, 'lsphp74-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 9),
(353, 'lsphp74-pgsql', 'A PostgreSQL database extension for PHP.', 1, 9),
(354, 'lsphp74-process', 'extensions for PHP script using system process interfaces.', 1, 9),
(355, 'lsphp74-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 9),
(356, 'lsphp74-recode', 'A extension for PHP applications for using the recode library.', 1, 9),
(357, 'lsphp74-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 9),
(358, 'lsphp74-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 9),
(359, 'lsphp74-tidy', 'Standard PHP extension provides tidy library support.', 1, 9),
(360, 'lsphp74-xml', 'A module for PHP applications which use XML.', 1, 9),
(361, 'lsphp74-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 9),
(362, 'lsphp74-zip', 'ZIP archive management extension for PHP', 0, 9),
(363, 'lsphp74-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 9),
(364, 'lsphp74-dbg', 'php73-dbg lsphp74-package', 0, 9),
(365, 'lsphp74-ioncube', 'ioncube loaders', 0, 9),
(366, 'lsphp74-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 9),
(367, 'lsphp74-sodium', 'The php-sodium extension provides strong encryption capabilities in an easy and consistent way.', 0, 9),
(368, 'lsphp80-debuginfo', 'Debug information for package lsphp80', 0, 10),
(369, 'lsphp80-pecl-igbinary-debuginfo', 'Debug information for package lsphp80-pecl-igbinary', 0, 10),
(370, 'lsphp80-pecl-mcrypt-debuginfo', 'lsphp80 lsphp80-pecl-mcrypt-debuginfo Extension', 0, 10),
(371, 'lsphp80-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 10),
(372, 'lsphp80-common', 'Common files for PHP.', 1, 10),
(373, 'lsphp80-dba', 'A database abstraction layer extension for PHP applications.', 1, 10),
(374, 'lsphp80-devel', 'Files needed for building PHP extensions.', 0, 10),
(375, 'lsphp80-enchant', 'Enchant spelling extension for PHP applications.', 1, 10),
(376, 'lsphp80-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 10),
(377, 'lsphp80-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 10),
(378, 'lsphp80-imap', 'A extension for PHP applications that use IMAP.', 1, 10),
(379, 'lsphp80-intl', 'Internationalization extension for PHP applications.', 1, 10),
(380, 'lsphp80-json', 'lsphp80 Json PHP Extension', 1, 10),
(381, 'lsphp80-ldap', 'A extension for PHP applications that use LDAP.', 1, 10),
(382, 'lsphp80-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 10),
(383, 'lsphp80-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 10),
(384, 'lsphp80-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 10),
(385, 'lsphp80-opcache', 'The Zend OPcache.', 1, 10),
(386, 'lsphp80-pdo', 'A database access abstraction extension for PHP applications.', 1, 10),
(387, 'lsphp80-pear', 'PHP Extension and Application Repository framework.', 1, 10),
(388, 'lsphp80-pecl-apcu', 'APC User Cache.', 0, 10),
(389, 'lsphp80-pecl-apcu-devel', 'APCu developer files (header).', 0, 10),
(390, 'lsphp80-pecl-apcu-panel', 'APCu control panel.', 0, 10),
(391, 'lsphp80-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 10),
(392, 'lsphp80-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 10),
(393, 'lsphp80-pecl-mcrypt', 'lsphp80 lsphp80-pecl-mcrypt Extension.', 0, 10),
(394, 'lsphp80-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 10),
(395, 'lsphp80-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 10),
(396, 'lsphp80-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 10),
(397, 'lsphp80-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 10),
(398, 'lsphp80-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 10),
(399, 'lsphp80-pgsql', 'A PostgreSQL database extension for PHP.', 1, 10),
(400, 'lsphp80-process', 'extensions for PHP script using system process interfaces.', 1, 10),
(401, 'lsphp80-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 10),
(402, 'lsphp80-recode', 'A extension for PHP applications for using the recode library.', 1, 10),
(403, 'lsphp80-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 10),
(404, 'lsphp80-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 10),
(405, 'lsphp80-tidy', 'Standard PHP extension provides tidy library support.', 1, 10),
(406, 'lsphp80-xml', 'A module for PHP applications which use XML.', 1, 10),
(407, 'lsphp80-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 10),
(408, 'lsphp80-zip', 'ZIP archive management extension for PHP', 0, 10),
(409, 'lsphp80-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 10),
(410, 'lsphp80-dbg', 'php73-dbg lsphp80-package', 0, 10),
(411, 'lsphp80-ioncube', 'ioncube loaders', 0, 10),
(412, 'lsphp80-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 10),
(413, 'lsphp80-sodium', 'The php-sodium extension provides strong encryption capabilities in an easy and consistent way.', 0, 10),
(414, 'lsphp81-debuginfo', 'Debug information for package lsphp81', 0, 11),
(415, 'lsphp81-pecl-igbinary-debuginfo', 'Debug information for package lsphp81-pecl-igbinary', 0, 11),
(416, 'lsphp81-pecl-mcrypt-debuginfo', 'lsphp81 lsphp81-pecl-mcrypt-debuginfo Extension', 0, 11),
(417, 'lsphp81-bcmath', 'A extension for PHP applications for using the bcmath library.', 1, 11),
(418, 'lsphp81-common', 'Common files for PHP.', 1, 11),
(419, 'lsphp81-dba', 'A database abstraction layer extension for PHP applications.', 1, 11),
(420, 'lsphp81-devel', 'Files needed for building PHP extensions.', 0, 11),
(421, 'lsphp81-enchant', 'Enchant spelling extension for PHP applications.', 1, 11),
(422, 'lsphp81-gd', 'A extension for PHP applications for using the gd graphics library.', 1, 11),
(423, 'lsphp81-gmp', 'A extension for PHP applications for using the GNU MP library.', 1, 11),
(424, 'lsphp81-imap', 'A extension for PHP applications that use IMAP.', 1, 11),
(425, 'lsphp81-intl', 'Internationalization extension for PHP applications.', 1, 11),
(426, 'lsphp81-json', 'lsphp81 Json PHP Extension', 1, 11),
(427, 'lsphp81-ldap', 'A extension for PHP applications that use LDAP.', 1, 11),
(428, 'lsphp81-mbstring', 'A extension for PHP applications which need multi-byte string handling.', 1, 11),
(429, 'lsphp81-mysqlnd', 'A extension for PHP applications that use MySQL databases.', 1, 11),
(430, 'lsphp81-odbc', 'A extension for PHP applications that use ODBC databases.', 1, 11),
(431, 'lsphp81-opcache', 'The Zend OPcache.', 1, 11),
(432, 'lsphp81-pdo', 'A database access abstraction extension for PHP applications.', 1, 11),
(433, 'lsphp81-pear', 'PHP Extension and Application Repository framework.', 1, 11),
(434, 'lsphp81-pecl-apcu', 'APC User Cache.', 0, 11),
(435, 'lsphp81-pecl-apcu-devel', 'APCu developer files (header).', 0, 11),
(436, 'lsphp81-pecl-apcu-panel', 'APCu control panel.', 0, 11),
(437, 'lsphp81-pecl-igbinary', 'Replacement for the standard PHP serializer.', 0, 11),
(438, 'lsphp81-pecl-igbinary-devel', 'Igbinary developer files (header).', 0, 11),
(439, 'lsphp81-pecl-mcrypt', 'lsphp81 lsphp81-pecl-mcrypt Extension.', 0, 11),
(440, 'lsphp81-pecl-memcache', 'Extension to work with the Memcached caching daemon.', 0, 11),
(441, 'lsphp81-pecl-memcached', 'Extension to work with the Memcached caching daemon.', 0, 11),
(442, 'lsphp81-pecl-msgpack', 'API for communicating with MessagePack serialization.', 0, 11),
(443, 'lsphp81-pecl-msgpack-devel', 'MessagePack developer files (header).', 0, 11),
(444, 'lsphp81-pecl-redis', 'Extension for communicating with the Redis key-value store.', 0, 11),
(445, 'lsphp81-pgsql', 'A PostgreSQL database extension for PHP.', 1, 11),
(446, 'lsphp81-process', 'extensions for PHP script using system process interfaces.', 1, 11),
(447, 'lsphp81-pspell', 'A extension for PHP applications for using pspell interfaces.', 1, 11),
(448, 'lsphp81-recode', 'A extension for PHP applications for using the recode library.', 1, 11),
(449, 'lsphp81-snmp', 'A extension for PHP applications that query SNMP-managed devices.', 1, 11),
(450, 'lsphp81-soap', 'A extension for PHP applications that use the SOAP protocol.', 1, 11),
(451, 'lsphp81-tidy', 'Standard PHP extension provides tidy library support.', 1, 11),
(452, 'lsphp81-xml', 'A module for PHP applications which use XML.', 1, 11),
(453, 'lsphp81-xmlrpc', 'A extension for PHP applications which use the XML-RPC protocol.', 1, 11),
(454, 'lsphp81-zip', 'ZIP archive management extension for PHP', 0, 11),
(455, 'lsphp81-mcrypt', 'Standard PHP extension provides mcrypt library support.', 1, 11),
(456, 'lsphp81-dbg', 'php73-dbg lsphp81-package', 0, 11),
(457, 'lsphp81-ioncube', 'ioncube loaders', 0, 11),
(458, 'lsphp81-pecl-imagick', 'Extension to create and modify images using ImageMagick', 0, 11),
(459, 'lsphp81-sodium', 'The php-sodium extension provides strong encryption capabilities in an easy and consistent way.', 0, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `managePHP_installedpackagesapache`
--

CREATE TABLE `managePHP_installedpackagesapache` (
  `id` int(11) NOT NULL,
  `extensionName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phpVers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `managePHP_installedpackagesapache`
--

TRUNCATE TABLE `managePHP_installedpackagesapache`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `managePHP_php`
--

CREATE TABLE `managePHP_php` (
  `id` int(11) NOT NULL,
  `phpVers` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `managePHP_php`
--

TRUNCATE TABLE `managePHP_php`;
--
-- Extraindo dados da tabela `managePHP_php`
--

INSERT INTO `managePHP_php` (`id`, `phpVers`) VALUES
(1, 'php53'),
(2, 'php54'),
(3, 'php55'),
(4, 'php56'),
(5, 'php70'),
(6, 'php71'),
(7, 'php72'),
(8, 'php73'),
(9, 'php74'),
(10, 'php80'),
(11, 'php81');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manageServices_pdnsstatus`
--

CREATE TABLE `manageServices_pdnsstatus` (
  `id` int(11) NOT NULL,
  `serverStatus` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `masterServer` varchar(200) NOT NULL,
  `masterIP` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `manageServices_pdnsstatus`
--

TRUNCATE TABLE `manageServices_pdnsstatus`;
--
-- Extraindo dados da tabela `manageServices_pdnsstatus`
--

INSERT INTO `manageServices_pdnsstatus` (`id`, `serverStatus`, `type`, `masterServer`, `masterIP`) VALUES
(1, 1, 'NATIVE', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manageServices_slaveservers`
--

CREATE TABLE `manageServices_slaveservers` (
  `id` int(11) NOT NULL,
  `slaveServer` varchar(200) NOT NULL,
  `slaveServerIP` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `manageServices_slaveservers`
--

TRUNCATE TABLE `manageServices_slaveservers`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `packages_package`
--

CREATE TABLE `packages_package` (
  `id` int(11) NOT NULL,
  `packageName` varchar(50) NOT NULL,
  `diskSpace` int(11) NOT NULL,
  `bandwidth` int(11) NOT NULL,
  `emailAccounts` int(11) DEFAULT NULL,
  `dataBases` int(11) NOT NULL,
  `ftpAccounts` int(11) NOT NULL,
  `allowedDomains` int(11) NOT NULL,
  `allowFullDomain` int(11) NOT NULL,
  `enforceDiskLimits` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tabela antes do insert `packages_package`
--

TRUNCATE TABLE `packages_package`;
--
-- Extraindo dados da tabela `packages_package`
--

INSERT INTO `packages_package` (`id`, `packageName`, `diskSpace`, `bandwidth`, `emailAccounts`, `dataBases`, `ftpAccounts`, `allowedDomains`, `allowFullDomain`, `enforceDiskLimits`, `admin_id`) VALUES
(1, 'Default', 0, 0, 1000, 1000, 1000, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `records`
--

CREATE TABLE `records` (
  `id` bigint(20) NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `prio` int(11) DEFAULT NULL,
  `change_date` int(11) DEFAULT NULL,
  `disabled` int(11) DEFAULT NULL,
  `ordername` varchar(255) DEFAULT NULL,
  `auth` int(11) DEFAULT NULL,
  `domainOwner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backuplogs`
--

CREATE TABLE `s3Backups_backuplogs` (
  `id` int(11) NOT NULL,
  `timeStamp` varchar(200) NOT NULL,
  `level` varchar(5) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backuplogsdo`
--

CREATE TABLE `s3Backups_backuplogsdo` (
  `id` int(11) NOT NULL,
  `timeStamp` varchar(200) NOT NULL,
  `level` varchar(5) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backuplogsminio`
--

CREATE TABLE `s3Backups_backuplogsminio` (
  `id` int(11) NOT NULL,
  `timeStamp` varchar(200) NOT NULL,
  `level` varchar(5) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backupplan`
--

CREATE TABLE `s3Backups_backupplan` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bucket` varchar(50) NOT NULL,
  `freq` varchar(50) NOT NULL,
  `retention` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `lastRun` varchar(50) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backupplando`
--

CREATE TABLE `s3Backups_backupplando` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bucket` varchar(50) NOT NULL,
  `freq` varchar(50) NOT NULL,
  `retention` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `region` varchar(5) NOT NULL,
  `lastRun` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_backupplanminio`
--

CREATE TABLE `s3Backups_backupplanminio` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `freq` varchar(50) NOT NULL,
  `retention` int(11) NOT NULL,
  `lastRun` varchar(50) NOT NULL,
  `minioNode_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_minionodes`
--

CREATE TABLE `s3Backups_minionodes` (
  `id` int(11) NOT NULL,
  `endPointURL` varchar(200) NOT NULL,
  `accessKey` varchar(200) NOT NULL,
  `secretKey` varchar(200) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_websitesinplan`
--

CREATE TABLE `s3Backups_websitesinplan` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_websitesinplando`
--

CREATE TABLE `s3Backups_websitesinplando` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `s3Backups_websitesinplanminio`
--

CREATE TABLE `s3Backups_websitesinplanminio` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `supermasters`
--

CREATE TABLE `supermasters` (
  `ip` varchar(64) NOT NULL,
  `nameserver` varchar(255) NOT NULL,
  `account` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tsigkeys`
--

CREATE TABLE `tsigkeys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `algorithm` varchar(50) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `User` varchar(32) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Gid` int(11) NOT NULL,
  `Dir` varchar(255) NOT NULL,
  `QuotaSize` int(11) NOT NULL,
  `Status` varchar(1) NOT NULL,
  `ULBandwidth` int(11) NOT NULL,
  `DLBandwidth` int(11) NOT NULL,
  `Date` date NOT NULL,
  `LastModif` varchar(255) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_aliasdomains`
--

CREATE TABLE `websiteFunctions_aliasdomains` (
  `id` int(11) NOT NULL,
  `aliasDomain` varchar(75) NOT NULL,
  `master_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_backupjob`
--

CREATE TABLE `websiteFunctions_backupjob` (
  `id` int(11) NOT NULL,
  `logFile` varchar(1000) NOT NULL,
  `ipAddress` varchar(50) NOT NULL,
  `port` varchar(15) NOT NULL,
  `jobSuccessSites` int(11) NOT NULL,
  `jobFailedSites` int(11) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_backupjoblogs`
--

CREATE TABLE `websiteFunctions_backupjoblogs` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_backups`
--

CREATE TABLE `websiteFunctions_backups` (
  `id` int(11) NOT NULL,
  `fileName` varchar(200) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `website_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_backupschedules`
--

CREATE TABLE `websiteFunctions_backupschedules` (
  `id` int(11) NOT NULL,
  `frequency` varchar(15) NOT NULL,
  `dest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_childdomains`
--

CREATE TABLE `websiteFunctions_childdomains` (
  `id` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `path` varchar(200) NOT NULL,
  `ssl` int(11) NOT NULL,
  `phpSelection` varchar(10) NOT NULL,
  `master_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_dest`
--

CREATE TABLE `websiteFunctions_dest` (
  `id` int(11) NOT NULL,
  `destLoc` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_gdrive`
--

CREATE TABLE `websiteFunctions_gdrive` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `auth` longtext NOT NULL,
  `runTime` varchar(20) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_gdrivejoblogs`
--

CREATE TABLE `websiteFunctions_gdrivejoblogs` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_gdrivesites`
--

CREATE TABLE `websiteFunctions_gdrivesites` (
  `id` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_gitlogs`
--

CREATE TABLE `websiteFunctions_gitlogs` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `type` varchar(5) NOT NULL,
  `message` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_normalbackupdests`
--

CREATE TABLE `websiteFunctions_normalbackupdests` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `config` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_normalbackupjoblogs`
--

CREATE TABLE `websiteFunctions_normalbackupjoblogs` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_normalbackupjobs`
--

CREATE TABLE `websiteFunctions_normalbackupjobs` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_normalbackupsites`
--

CREATE TABLE `websiteFunctions_normalbackupsites` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_remotebackupconfig`
--

CREATE TABLE `websiteFunctions_remotebackupconfig` (
  `id` int(11) NOT NULL,
  `configtype` varchar(255) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_remotebackupschedule`
--

CREATE TABLE `websiteFunctions_remotebackupschedule` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `timeintervel` varchar(200) NOT NULL,
  `fileretention` varchar(200) NOT NULL,
  `lastrun` varchar(200) NOT NULL,
  `config` longtext NOT NULL,
  `RemoteBackupConfig_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_remotebackupsites`
--

CREATE TABLE `websiteFunctions_remotebackupsites` (
  `id` int(11) NOT NULL,
  `WPsites` int(11) DEFAULT NULL,
  `database` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_websites`
--

CREATE TABLE `websiteFunctions_websites` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `phpSelection` varchar(10) NOT NULL,
  `ssl` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `externalApp` varchar(30) DEFAULT NULL,
  `config` longtext NOT NULL,
  `admin_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_wpplugins`
--

CREATE TABLE `websiteFunctions_wpplugins` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_wpsites`
--

CREATE TABLE `websiteFunctions_wpsites` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `FinalURL` varchar(255) NOT NULL,
  `AutoUpdates` varchar(100) NOT NULL,
  `PluginUpdates` varchar(15) NOT NULL,
  `ThemeUpdates` varchar(15) NOT NULL,
  `date` datetime(6) NOT NULL,
  `WPLockState` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_wpsitesbackup`
--

CREATE TABLE `websiteFunctions_wpsitesbackup` (
  `id` int(11) NOT NULL,
  `WPSiteID` int(11) NOT NULL,
  `WebsiteID` int(11) NOT NULL,
  `config` longtext NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websiteFunctions_wpstaging`
--

CREATE TABLE `websiteFunctions_wpstaging` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `wpsite_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `baseTemplate_cyberpanelcosmetic`
--
ALTER TABLE `baseTemplate_cyberpanelcosmetic`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `baseTemplate_version`
--
ALTER TABLE `baseTemplate_version`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `CLManager_clpackages`
--
ALTER TABLE `CLManager_clpackages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `CLManager_clpackages_owner_id_9898c1e8_fk_packages_package_id` (`owner_id`);

--
-- Índices para tabela `cloudAPI_wpdeployments`
--
ALTER TABLE `cloudAPI_wpdeployments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cloudAPI_wpdeploymen_owner_id_506ddf01_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `containerization_containerlimits`
--
ALTER TABLE `containerization_containerlimits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `containerization_con_owner_id_494eb637_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `cryptokeys`
--
ALTER TABLE `cryptokeys`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `databases_databases`
--
ALTER TABLE `databases_databases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dbName` (`dbName`),
  ADD KEY `databases_databases_website_id_fb864a69_fk_websiteFu` (`website_id`);

--
-- Índices para tabela `databases_databasesusers`
--
ALTER TABLE `databases_databasesusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `databases_databasesu_owner_id_908fc638_fk_databases` (`owner_id`);

--
-- Índices para tabela `databases_dbmeta`
--
ALTER TABLE `databases_dbmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `databases_dbmeta_database_id_777997bc_fk_databases_databases_id` (`database_id`);

--
-- Índices para tabela `databases_globaluserdb`
--
ALTER TABLE `databases_globaluserdb`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `dockerManager_containers`
--
ALTER TABLE `dockerManager_containers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `dockerManager_contai_admin_id_58fb62b7_fk_loginSyst` (`admin_id`);

--
-- Índices para tabela `domainmetadata`
--
ALTER TABLE `domainmetadata`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `domains_admin_id_c9d09cb8_fk_loginSystem_administrator_id` (`admin_id`);

--
-- Índices para tabela `emailMarketing_emailjobs`
--
ALTER TABLE `emailMarketing_emailjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailMarketing_email_owner_id_73ee4827_fk_emailMark` (`owner_id`);

--
-- Índices para tabela `emailMarketing_emaillists`
--
ALTER TABLE `emailMarketing_emaillists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listName` (`listName`),
  ADD KEY `emailMarketing_email_owner_id_bf1b4530_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `emailMarketing_emailmarketing`
--
ALTER TABLE `emailMarketing_emailmarketing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Índices para tabela `emailMarketing_emailsinlist`
--
ALTER TABLE `emailMarketing_emailsinlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailMarketing_email_owner_id_c5c27005_fk_emailMark` (`owner_id`);

--
-- Índices para tabela `emailMarketing_emailtemplate`
--
ALTER TABLE `emailMarketing_emailtemplate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `emailMarketing_email_owner_id_d27e1d00_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `emailMarketing_smtphosts`
--
ALTER TABLE `emailMarketing_smtphosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `emailMarketing_smtph_owner_id_8b2d4ac7_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `emailMarketing_validationlog`
--
ALTER TABLE `emailMarketing_validationlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailMarketing_valid_owner_id_240ad36e_fk_emailMark` (`owner_id`);

--
-- Índices para tabela `emailPremium_domainlimits`
--
ALTER TABLE `emailPremium_domainlimits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailPremium_domainlimits_domain_id_303ab297_fk_e_domains_domain` (`domain_id`);

--
-- Índices para tabela `emailPremium_emaillimits`
--
ALTER TABLE `emailPremium_emaillimits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailPremium_emaillimits_email_id_1c111df5_fk_e_users_email` (`email_id`);

--
-- Índices para tabela `emailPremium_emaillogs`
--
ALTER TABLE `emailPremium_emaillogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailPremium_emaillogs_email_id_9ef49552_fk_e_users_email` (`email_id`);

--
-- Índices para tabela `e_domains`
--
ALTER TABLE `e_domains`
  ADD PRIMARY KEY (`domain`),
  ADD KEY `e_domains_childOwner_id_6c9fd49d_fk_websiteFu` (`childOwner_id`),
  ADD KEY `e_domains_domainOwner_id_581e752a_fk_websiteFu` (`domainOwner_id`);

--
-- Índices para tabela `e_forwardings`
--
ALTER TABLE `e_forwardings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `e_transport`
--
ALTER TABLE `e_transport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Índices para tabela `e_users`
--
ALTER TABLE `e_users`
  ADD PRIMARY KEY (`email`),
  ADD KEY `e_users_emailOwner_id_761bf267_fk_e_domains_domain` (`emailOwner_id`);

--
-- Índices para tabela `filemanager_trash`
--
ALTER TABLE `filemanager_trash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filemanager_trash_website_id_e2762f3c_fk_websiteFu` (`website_id`);

--
-- Índices para tabela `firewall_firewallrules`
--
ALTER TABLE `firewall_firewallrules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `IncBackups_backupjob`
--
ALTER TABLE `IncBackups_backupjob`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `IncBackups_incjob`
--
ALTER TABLE `IncBackups_incjob`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IncBackups_incjob_website_id_aad31bf6_fk_websiteFu` (`website_id`);

--
-- Índices para tabela `IncBackups_jobsites`
--
ALTER TABLE `IncBackups_jobsites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IncBackups_jobsites_job_id_494a1f69_fk_IncBackups_backupjob_id` (`job_id`);

--
-- Índices para tabela `IncBackups_jobsnapshots`
--
ALTER TABLE `IncBackups_jobsnapshots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IncBackups_jobsnapshots_job_id_a8237ca8_fk_IncBackups_incjob_id` (`job_id`);

--
-- Índices para tabela `loginSystem_acl`
--
ALTER TABLE `loginSystem_acl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `loginSystem_administrator`
--
ALTER TABLE `loginSystem_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD KEY `acl_id` (`acl_id`);

--
-- Índices para tabela `mailServer_pipeprograms`
--
ALTER TABLE `mailServer_pipeprograms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `managePHP_apachephp`
--
ALTER TABLE `managePHP_apachephp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phpVers` (`phpVers`);

--
-- Índices para tabela `managePHP_installedpackages`
--
ALTER TABLE `managePHP_installedpackages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managePHP_installedp_phpVers_id_54d8b7bc_fk_managePHP` (`phpVers_id`);

--
-- Índices para tabela `managePHP_installedpackagesapache`
--
ALTER TABLE `managePHP_installedpackagesapache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managePHP_installedp_phpVers_id_d01eb0b2_fk_managePHP` (`phpVers_id`);

--
-- Índices para tabela `managePHP_php`
--
ALTER TABLE `managePHP_php`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phpVers` (`phpVers`);

--
-- Índices para tabela `manageServices_pdnsstatus`
--
ALTER TABLE `manageServices_pdnsstatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `manageServices_slaveservers`
--
ALTER TABLE `manageServices_slaveservers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `packages_package`
--
ALTER TABLE `packages_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packageName` (`packageName`),
  ADD KEY `packages_package_admin_id_23828c6a_fk_loginSyst` (`admin_id`);

--
-- Índices para tabela `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `records_domainOwner_id_e29f5ff2_fk_domains_id` (`domainOwner_id`);

--
-- Índices para tabela `s3Backups_backuplogs`
--
ALTER TABLE `s3Backups_backuplogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_backuplogs_owner_id_7b4653af_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `s3Backups_backuplogsdo`
--
ALTER TABLE `s3Backups_backuplogsdo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_backuplogs_owner_id_c7cb5872_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `s3Backups_backuplogsminio`
--
ALTER TABLE `s3Backups_backuplogsminio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_backuplogs_owner_id_f19e1736_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `s3Backups_backupplan`
--
ALTER TABLE `s3Backups_backupplan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `s3Backups_backupplan_owner_id_7d058ced_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `s3Backups_backupplando`
--
ALTER TABLE `s3Backups_backupplando`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `s3Backups_backupplan_owner_id_1a3ec86d_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `s3Backups_backupplanminio`
--
ALTER TABLE `s3Backups_backupplanminio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `s3Backups_backupplan_minioNode_id_a4eaf917_fk_s3Backups` (`minioNode_id`),
  ADD KEY `s3Backups_backupplan_owner_id_d6830e67_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `s3Backups_minionodes`
--
ALTER TABLE `s3Backups_minionodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `endPointURL` (`endPointURL`),
  ADD UNIQUE KEY `accessKey` (`accessKey`),
  ADD KEY `s3Backups_minionodes_owner_id_e50993d9_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `s3Backups_websitesinplan`
--
ALTER TABLE `s3Backups_websitesinplan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_websitesin_owner_id_0e9a4fe3_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `s3Backups_websitesinplando`
--
ALTER TABLE `s3Backups_websitesinplando`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_websitesin_owner_id_cef3ea04_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `s3Backups_websitesinplanminio`
--
ALTER TABLE `s3Backups_websitesinplanminio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s3Backups_websitesin_owner_id_224ce049_fk_s3Backups` (`owner_id`);

--
-- Índices para tabela `supermasters`
--
ALTER TABLE `supermasters`
  ADD PRIMARY KEY (`ip`),
  ADD UNIQUE KEY `supermasters_ip_nameserver_1d444554_uniq` (`ip`,`nameserver`);

--
-- Índices para tabela `tsigkeys`
--
ALTER TABLE `tsigkeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tsigkeys_name_algorithm_6f5ee63a_uniq` (`name`,`algorithm`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User` (`User`),
  ADD KEY `users_domain_id_d179d1af_fk_websiteFunctions_websites_id` (`domain_id`);

--
-- Índices para tabela `websiteFunctions_aliasdomains`
--
ALTER TABLE `websiteFunctions_aliasdomains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_ali_master_id_726c433d_fk_websiteFu` (`master_id`);

--
-- Índices para tabela `websiteFunctions_backupjob`
--
ALTER TABLE `websiteFunctions_backupjob`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `websiteFunctions_backupjoblogs`
--
ALTER TABLE `websiteFunctions_backupjoblogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_bac_owner_id_af3d15f9_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_backups`
--
ALTER TABLE `websiteFunctions_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_bac_website_id_a77aa1d3_fk_websiteFu` (`website_id`);

--
-- Índices para tabela `websiteFunctions_backupschedules`
--
ALTER TABLE `websiteFunctions_backupschedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_bac_dest_id_cce9d45e_fk_websiteFu` (`dest_id`);

--
-- Índices para tabela `websiteFunctions_childdomains`
--
ALTER TABLE `websiteFunctions_childdomains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD KEY `websiteFunctions_chi_master_id_0db0702c_fk_websiteFu` (`master_id`);

--
-- Índices para tabela `websiteFunctions_dest`
--
ALTER TABLE `websiteFunctions_dest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destLoc` (`destLoc`);

--
-- Índices para tabela `websiteFunctions_gdrive`
--
ALTER TABLE `websiteFunctions_gdrive`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `websiteFunctions_gdr_owner_id_b5b1e86f_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_gdrivejoblogs`
--
ALTER TABLE `websiteFunctions_gdrivejoblogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_gdr_owner_id_4cf7983e_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_gdrivesites`
--
ALTER TABLE `websiteFunctions_gdrivesites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_gdr_owner_id_ff78b305_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_gitlogs`
--
ALTER TABLE `websiteFunctions_gitlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_git_owner_id_ce74c7de_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_normalbackupdests`
--
ALTER TABLE `websiteFunctions_normalbackupdests`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `websiteFunctions_normalbackupjoblogs`
--
ALTER TABLE `websiteFunctions_normalbackupjoblogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_nor_owner_id_69403e73_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_normalbackupjobs`
--
ALTER TABLE `websiteFunctions_normalbackupjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_nor_owner_id_3a7a13db_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_normalbackupsites`
--
ALTER TABLE `websiteFunctions_normalbackupsites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_nor_domain_id_c03362bc_fk_websiteFu` (`domain_id`),
  ADD KEY `websiteFunctions_nor_owner_id_c6ece6cc_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_remotebackupconfig`
--
ALTER TABLE `websiteFunctions_remotebackupconfig`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_rem_owner_id_27340736_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_remotebackupschedule`
--
ALTER TABLE `websiteFunctions_remotebackupschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_rem_RemoteBackupConfig_i_224c46fb_fk_websiteFu` (`RemoteBackupConfig_id`);

--
-- Índices para tabela `websiteFunctions_remotebackupsites`
--
ALTER TABLE `websiteFunctions_remotebackupsites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_rem_owner_id_d6c4475a_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_websites`
--
ALTER TABLE `websiteFunctions_websites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD KEY `websiteFunctions_web_admin_id_9c73217c_fk_loginSyst` (`admin_id`),
  ADD KEY `websiteFunctions_web_package_id_d266bd7a_fk_packages_` (`package_id`);

--
-- Índices para tabela `websiteFunctions_wpplugins`
--
ALTER TABLE `websiteFunctions_wpplugins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_wpp_owner_id_493a02c7_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_wpsites`
--
ALTER TABLE `websiteFunctions_wpsites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_wps_owner_id_6d67df2a_fk_websiteFu` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_wpsitesbackup`
--
ALTER TABLE `websiteFunctions_wpsitesbackup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_wps_owner_id_8a8dd0c5_fk_loginSyst` (`owner_id`);

--
-- Índices para tabela `websiteFunctions_wpstaging`
--
ALTER TABLE `websiteFunctions_wpstaging`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websiteFunctions_wps_owner_id_543d8aec_fk_websiteFu` (`owner_id`),
  ADD KEY `websiteFunctions_wps_wpsite_id_82843593_fk_websiteFu` (`wpsite_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `baseTemplate_cyberpanelcosmetic`
--
ALTER TABLE `baseTemplate_cyberpanelcosmetic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `baseTemplate_version`
--
ALTER TABLE `baseTemplate_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `CLManager_clpackages`
--
ALTER TABLE `CLManager_clpackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cloudAPI_wpdeployments`
--
ALTER TABLE `cloudAPI_wpdeployments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `containerization_containerlimits`
--
ALTER TABLE `containerization_containerlimits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cryptokeys`
--
ALTER TABLE `cryptokeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `databases_databases`
--
ALTER TABLE `databases_databases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `databases_databasesusers`
--
ALTER TABLE `databases_databasesusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `databases_dbmeta`
--
ALTER TABLE `databases_dbmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `databases_globaluserdb`
--
ALTER TABLE `databases_globaluserdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `dockerManager_containers`
--
ALTER TABLE `dockerManager_containers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `domainmetadata`
--
ALTER TABLE `domainmetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_emailjobs`
--
ALTER TABLE `emailMarketing_emailjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_emaillists`
--
ALTER TABLE `emailMarketing_emaillists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_emailmarketing`
--
ALTER TABLE `emailMarketing_emailmarketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_emailsinlist`
--
ALTER TABLE `emailMarketing_emailsinlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_emailtemplate`
--
ALTER TABLE `emailMarketing_emailtemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_smtphosts`
--
ALTER TABLE `emailMarketing_smtphosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailMarketing_validationlog`
--
ALTER TABLE `emailMarketing_validationlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emailPremium_domainlimits`
--
ALTER TABLE `emailPremium_domainlimits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `emailPremium_emaillimits`
--
ALTER TABLE `emailPremium_emaillimits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `emailPremium_emaillogs`
--
ALTER TABLE `emailPremium_emaillogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `e_forwardings`
--
ALTER TABLE `e_forwardings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `e_transport`
--
ALTER TABLE `e_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filemanager_trash`
--
ALTER TABLE `filemanager_trash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `firewall_firewallrules`
--
ALTER TABLE `firewall_firewallrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `IncBackups_backupjob`
--
ALTER TABLE `IncBackups_backupjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `IncBackups_incjob`
--
ALTER TABLE `IncBackups_incjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `IncBackups_jobsites`
--
ALTER TABLE `IncBackups_jobsites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `IncBackups_jobsnapshots`
--
ALTER TABLE `IncBackups_jobsnapshots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loginSystem_acl`
--
ALTER TABLE `loginSystem_acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `loginSystem_administrator`
--
ALTER TABLE `loginSystem_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mailServer_pipeprograms`
--
ALTER TABLE `mailServer_pipeprograms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `managePHP_apachephp`
--
ALTER TABLE `managePHP_apachephp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `managePHP_installedpackages`
--
ALTER TABLE `managePHP_installedpackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT de tabela `managePHP_installedpackagesapache`
--
ALTER TABLE `managePHP_installedpackagesapache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `managePHP_php`
--
ALTER TABLE `managePHP_php`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `manageServices_pdnsstatus`
--
ALTER TABLE `manageServices_pdnsstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `manageServices_slaveservers`
--
ALTER TABLE `manageServices_slaveservers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `packages_package`
--
ALTER TABLE `packages_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backuplogs`
--
ALTER TABLE `s3Backups_backuplogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backuplogsdo`
--
ALTER TABLE `s3Backups_backuplogsdo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backuplogsminio`
--
ALTER TABLE `s3Backups_backuplogsminio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backupplan`
--
ALTER TABLE `s3Backups_backupplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backupplando`
--
ALTER TABLE `s3Backups_backupplando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_backupplanminio`
--
ALTER TABLE `s3Backups_backupplanminio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_minionodes`
--
ALTER TABLE `s3Backups_minionodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_websitesinplan`
--
ALTER TABLE `s3Backups_websitesinplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_websitesinplando`
--
ALTER TABLE `s3Backups_websitesinplando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `s3Backups_websitesinplanminio`
--
ALTER TABLE `s3Backups_websitesinplanminio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tsigkeys`
--
ALTER TABLE `tsigkeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_aliasdomains`
--
ALTER TABLE `websiteFunctions_aliasdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_backupjob`
--
ALTER TABLE `websiteFunctions_backupjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_backupjoblogs`
--
ALTER TABLE `websiteFunctions_backupjoblogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_backups`
--
ALTER TABLE `websiteFunctions_backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_backupschedules`
--
ALTER TABLE `websiteFunctions_backupschedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_childdomains`
--
ALTER TABLE `websiteFunctions_childdomains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_dest`
--
ALTER TABLE `websiteFunctions_dest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_gdrive`
--
ALTER TABLE `websiteFunctions_gdrive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_gdrivejoblogs`
--
ALTER TABLE `websiteFunctions_gdrivejoblogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_gdrivesites`
--
ALTER TABLE `websiteFunctions_gdrivesites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_gitlogs`
--
ALTER TABLE `websiteFunctions_gitlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_normalbackupdests`
--
ALTER TABLE `websiteFunctions_normalbackupdests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_normalbackupjoblogs`
--
ALTER TABLE `websiteFunctions_normalbackupjoblogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_normalbackupjobs`
--
ALTER TABLE `websiteFunctions_normalbackupjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_normalbackupsites`
--
ALTER TABLE `websiteFunctions_normalbackupsites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_remotebackupconfig`
--
ALTER TABLE `websiteFunctions_remotebackupconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_remotebackupschedule`
--
ALTER TABLE `websiteFunctions_remotebackupschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_remotebackupsites`
--
ALTER TABLE `websiteFunctions_remotebackupsites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_websites`
--
ALTER TABLE `websiteFunctions_websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_wpplugins`
--
ALTER TABLE `websiteFunctions_wpplugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_wpsites`
--
ALTER TABLE `websiteFunctions_wpsites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_wpsitesbackup`
--
ALTER TABLE `websiteFunctions_wpsitesbackup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websiteFunctions_wpstaging`
--
ALTER TABLE `websiteFunctions_wpstaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `CLManager_clpackages`
--
ALTER TABLE `CLManager_clpackages`
  ADD CONSTRAINT `CLManager_clpackages_owner_id_9898c1e8_fk_packages_package_id` FOREIGN KEY (`owner_id`) REFERENCES `packages_package` (`id`);

--
-- Limitadores para a tabela `cloudAPI_wpdeployments`
--
ALTER TABLE `cloudAPI_wpdeployments`
  ADD CONSTRAINT `cloudAPI_wpdeploymen_owner_id_506ddf01_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `containerization_containerlimits`
--
ALTER TABLE `containerization_containerlimits`
  ADD CONSTRAINT `containerization_con_owner_id_494eb637_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `databases_databases`
--
ALTER TABLE `databases_databases`
  ADD CONSTRAINT `databases_databases_website_id_fb864a69_fk_websiteFu` FOREIGN KEY (`website_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `databases_databasesusers`
--
ALTER TABLE `databases_databasesusers`
  ADD CONSTRAINT `databases_databasesu_owner_id_908fc638_fk_databases` FOREIGN KEY (`owner_id`) REFERENCES `databases_databases` (`id`);

--
-- Limitadores para a tabela `databases_dbmeta`
--
ALTER TABLE `databases_dbmeta`
  ADD CONSTRAINT `databases_dbmeta_database_id_777997bc_fk_databases_databases_id` FOREIGN KEY (`database_id`) REFERENCES `databases_databases` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `dockerManager_containers`
--
ALTER TABLE `dockerManager_containers`
  ADD CONSTRAINT `dockerManager_contai_admin_id_58fb62b7_fk_loginSyst` FOREIGN KEY (`admin_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_admin_id_c9d09cb8_fk_loginSystem_administrator_id` FOREIGN KEY (`admin_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `emailMarketing_emailjobs`
--
ALTER TABLE `emailMarketing_emailjobs`
  ADD CONSTRAINT `emailMarketing_email_owner_id_73ee4827_fk_emailMark` FOREIGN KEY (`owner_id`) REFERENCES `emailMarketing_emailtemplate` (`id`);

--
-- Limitadores para a tabela `emailMarketing_emaillists`
--
ALTER TABLE `emailMarketing_emaillists`
  ADD CONSTRAINT `emailMarketing_email_owner_id_bf1b4530_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `emailMarketing_emailsinlist`
--
ALTER TABLE `emailMarketing_emailsinlist`
  ADD CONSTRAINT `emailMarketing_email_owner_id_c5c27005_fk_emailMark` FOREIGN KEY (`owner_id`) REFERENCES `emailMarketing_emaillists` (`id`);

--
-- Limitadores para a tabela `emailMarketing_emailtemplate`
--
ALTER TABLE `emailMarketing_emailtemplate`
  ADD CONSTRAINT `emailMarketing_email_owner_id_d27e1d00_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `emailMarketing_smtphosts`
--
ALTER TABLE `emailMarketing_smtphosts`
  ADD CONSTRAINT `emailMarketing_smtph_owner_id_8b2d4ac7_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `emailMarketing_validationlog`
--
ALTER TABLE `emailMarketing_validationlog`
  ADD CONSTRAINT `emailMarketing_valid_owner_id_240ad36e_fk_emailMark` FOREIGN KEY (`owner_id`) REFERENCES `emailMarketing_emaillists` (`id`);

--
-- Limitadores para a tabela `emailPremium_domainlimits`
--
ALTER TABLE `emailPremium_domainlimits`
  ADD CONSTRAINT `emailPremium_domainlimits_domain_id_303ab297_fk_e_domains_domain` FOREIGN KEY (`domain_id`) REFERENCES `e_domains` (`domain`);

--
-- Limitadores para a tabela `emailPremium_emaillimits`
--
ALTER TABLE `emailPremium_emaillimits`
  ADD CONSTRAINT `emailPremium_emaillimits_email_id_1c111df5_fk_e_users_email` FOREIGN KEY (`email_id`) REFERENCES `e_users` (`email`);

--
-- Limitadores para a tabela `emailPremium_emaillogs`
--
ALTER TABLE `emailPremium_emaillogs`
  ADD CONSTRAINT `emailPremium_emaillogs_email_id_9ef49552_fk_e_users_email` FOREIGN KEY (`email_id`) REFERENCES `e_users` (`email`);

--
-- Limitadores para a tabela `e_domains`
--
ALTER TABLE `e_domains`
  ADD CONSTRAINT `e_domains_childOwner_id_6c9fd49d_fk_websiteFu` FOREIGN KEY (`childOwner_id`) REFERENCES `websiteFunctions_childdomains` (`id`),
  ADD CONSTRAINT `e_domains_domainOwner_id_581e752a_fk_websiteFu` FOREIGN KEY (`domainOwner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `e_users`
--
ALTER TABLE `e_users`
  ADD CONSTRAINT `e_users_emailOwner_id_761bf267_fk_e_domains_domain` FOREIGN KEY (`emailOwner_id`) REFERENCES `e_domains` (`domain`);

--
-- Limitadores para a tabela `filemanager_trash`
--
ALTER TABLE `filemanager_trash`
  ADD CONSTRAINT `filemanager_trash_website_id_e2762f3c_fk_websiteFu` FOREIGN KEY (`website_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `IncBackups_incjob`
--
ALTER TABLE `IncBackups_incjob`
  ADD CONSTRAINT `IncBackups_incjob_website_id_aad31bf6_fk_websiteFu` FOREIGN KEY (`website_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `IncBackups_jobsites`
--
ALTER TABLE `IncBackups_jobsites`
  ADD CONSTRAINT `IncBackups_jobsites_job_id_494a1f69_fk_IncBackups_backupjob_id` FOREIGN KEY (`job_id`) REFERENCES `IncBackups_backupjob` (`id`);

--
-- Limitadores para a tabela `IncBackups_jobsnapshots`
--
ALTER TABLE `IncBackups_jobsnapshots`
  ADD CONSTRAINT `IncBackups_jobsnapshots_job_id_a8237ca8_fk_IncBackups_incjob_id` FOREIGN KEY (`job_id`) REFERENCES `IncBackups_incjob` (`id`);

--
-- Limitadores para a tabela `loginSystem_administrator`
--
ALTER TABLE `loginSystem_administrator`
  ADD CONSTRAINT `loginSystem_administrator_acl_id_1ec0dc78_fk_loginSystem_acl_id` FOREIGN KEY (`acl_id`) REFERENCES `loginSystem_acl` (`id`),
  ADD CONSTRAINT `loginSystem_administrator_ibfk_1` FOREIGN KEY (`acl_id`) REFERENCES `loginSystem_acl` (`id`);

--
-- Limitadores para a tabela `managePHP_installedpackages`
--
ALTER TABLE `managePHP_installedpackages`
  ADD CONSTRAINT `managePHP_installedp_phpVers_id_54d8b7bc_fk_managePHP` FOREIGN KEY (`phpVers_id`) REFERENCES `managePHP_php` (`id`);

--
-- Limitadores para a tabela `managePHP_installedpackagesapache`
--
ALTER TABLE `managePHP_installedpackagesapache`
  ADD CONSTRAINT `managePHP_installedp_phpVers_id_d01eb0b2_fk_managePHP` FOREIGN KEY (`phpVers_id`) REFERENCES `managePHP_apachephp` (`id`);

--
-- Limitadores para a tabela `packages_package`
--
ALTER TABLE `packages_package`
  ADD CONSTRAINT `packages_package_admin_id_23828c6a_fk_loginSyst` FOREIGN KEY (`admin_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_domainOwner_id_e29f5ff2_fk_domains_id` FOREIGN KEY (`domainOwner_id`) REFERENCES `domains` (`id`);

--
-- Limitadores para a tabela `s3Backups_backuplogs`
--
ALTER TABLE `s3Backups_backuplogs`
  ADD CONSTRAINT `s3Backups_backuplogs_owner_id_7b4653af_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplan` (`id`);

--
-- Limitadores para a tabela `s3Backups_backuplogsdo`
--
ALTER TABLE `s3Backups_backuplogsdo`
  ADD CONSTRAINT `s3Backups_backuplogs_owner_id_c7cb5872_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplando` (`id`);

--
-- Limitadores para a tabela `s3Backups_backuplogsminio`
--
ALTER TABLE `s3Backups_backuplogsminio`
  ADD CONSTRAINT `s3Backups_backuplogs_owner_id_f19e1736_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplanminio` (`id`);

--
-- Limitadores para a tabela `s3Backups_backupplan`
--
ALTER TABLE `s3Backups_backupplan`
  ADD CONSTRAINT `s3Backups_backupplan_owner_id_7d058ced_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `s3Backups_backupplando`
--
ALTER TABLE `s3Backups_backupplando`
  ADD CONSTRAINT `s3Backups_backupplan_owner_id_1a3ec86d_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `s3Backups_backupplanminio`
--
ALTER TABLE `s3Backups_backupplanminio`
  ADD CONSTRAINT `s3Backups_backupplan_minioNode_id_a4eaf917_fk_s3Backups` FOREIGN KEY (`minioNode_id`) REFERENCES `s3Backups_minionodes` (`id`),
  ADD CONSTRAINT `s3Backups_backupplan_owner_id_d6830e67_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `s3Backups_minionodes`
--
ALTER TABLE `s3Backups_minionodes`
  ADD CONSTRAINT `s3Backups_minionodes_owner_id_e50993d9_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `s3Backups_websitesinplan`
--
ALTER TABLE `s3Backups_websitesinplan`
  ADD CONSTRAINT `s3Backups_websitesin_owner_id_0e9a4fe3_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplan` (`id`);

--
-- Limitadores para a tabela `s3Backups_websitesinplando`
--
ALTER TABLE `s3Backups_websitesinplando`
  ADD CONSTRAINT `s3Backups_websitesin_owner_id_cef3ea04_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplando` (`id`);

--
-- Limitadores para a tabela `s3Backups_websitesinplanminio`
--
ALTER TABLE `s3Backups_websitesinplanminio`
  ADD CONSTRAINT `s3Backups_websitesin_owner_id_224ce049_fk_s3Backups` FOREIGN KEY (`owner_id`) REFERENCES `s3Backups_backupplanminio` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_domain_id_d179d1af_fk_websiteFunctions_websites_id` FOREIGN KEY (`domain_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_aliasdomains`
--
ALTER TABLE `websiteFunctions_aliasdomains`
  ADD CONSTRAINT `websiteFunctions_ali_master_id_726c433d_fk_websiteFu` FOREIGN KEY (`master_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_backupjoblogs`
--
ALTER TABLE `websiteFunctions_backupjoblogs`
  ADD CONSTRAINT `websiteFunctions_bac_owner_id_af3d15f9_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_backupjob` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_backups`
--
ALTER TABLE `websiteFunctions_backups`
  ADD CONSTRAINT `websiteFunctions_bac_website_id_a77aa1d3_fk_websiteFu` FOREIGN KEY (`website_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_backupschedules`
--
ALTER TABLE `websiteFunctions_backupschedules`
  ADD CONSTRAINT `websiteFunctions_bac_dest_id_cce9d45e_fk_websiteFu` FOREIGN KEY (`dest_id`) REFERENCES `websiteFunctions_dest` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_childdomains`
--
ALTER TABLE `websiteFunctions_childdomains`
  ADD CONSTRAINT `websiteFunctions_chi_master_id_0db0702c_fk_websiteFu` FOREIGN KEY (`master_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_gdrive`
--
ALTER TABLE `websiteFunctions_gdrive`
  ADD CONSTRAINT `websiteFunctions_gdr_owner_id_b5b1e86f_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_gdrivejoblogs`
--
ALTER TABLE `websiteFunctions_gdrivejoblogs`
  ADD CONSTRAINT `websiteFunctions_gdr_owner_id_4cf7983e_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_gdrive` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_gdrivesites`
--
ALTER TABLE `websiteFunctions_gdrivesites`
  ADD CONSTRAINT `websiteFunctions_gdr_owner_id_ff78b305_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_gdrive` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_gitlogs`
--
ALTER TABLE `websiteFunctions_gitlogs`
  ADD CONSTRAINT `websiteFunctions_git_owner_id_ce74c7de_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_normalbackupjoblogs`
--
ALTER TABLE `websiteFunctions_normalbackupjoblogs`
  ADD CONSTRAINT `websiteFunctions_nor_owner_id_69403e73_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_normalbackupjobs` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_normalbackupjobs`
--
ALTER TABLE `websiteFunctions_normalbackupjobs`
  ADD CONSTRAINT `websiteFunctions_nor_owner_id_3a7a13db_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_normalbackupdests` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_normalbackupsites`
--
ALTER TABLE `websiteFunctions_normalbackupsites`
  ADD CONSTRAINT `websiteFunctions_nor_domain_id_c03362bc_fk_websiteFu` FOREIGN KEY (`domain_id`) REFERENCES `websiteFunctions_websites` (`id`),
  ADD CONSTRAINT `websiteFunctions_nor_owner_id_c6ece6cc_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_normalbackupjobs` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_remotebackupconfig`
--
ALTER TABLE `websiteFunctions_remotebackupconfig`
  ADD CONSTRAINT `websiteFunctions_rem_owner_id_27340736_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_remotebackupschedule`
--
ALTER TABLE `websiteFunctions_remotebackupschedule`
  ADD CONSTRAINT `websiteFunctions_rem_RemoteBackupConfig_i_224c46fb_fk_websiteFu` FOREIGN KEY (`RemoteBackupConfig_id`) REFERENCES `websiteFunctions_remotebackupconfig` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_remotebackupsites`
--
ALTER TABLE `websiteFunctions_remotebackupsites`
  ADD CONSTRAINT `websiteFunctions_rem_owner_id_d6c4475a_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_remotebackupschedule` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_websites`
--
ALTER TABLE `websiteFunctions_websites`
  ADD CONSTRAINT `websiteFunctions_web_admin_id_9c73217c_fk_loginSyst` FOREIGN KEY (`admin_id`) REFERENCES `loginSystem_administrator` (`id`),
  ADD CONSTRAINT `websiteFunctions_web_package_id_d266bd7a_fk_packages_` FOREIGN KEY (`package_id`) REFERENCES `packages_package` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_wpplugins`
--
ALTER TABLE `websiteFunctions_wpplugins`
  ADD CONSTRAINT `websiteFunctions_wpp_owner_id_493a02c7_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_wpsites`
--
ALTER TABLE `websiteFunctions_wpsites`
  ADD CONSTRAINT `websiteFunctions_wps_owner_id_6d67df2a_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_websites` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_wpsitesbackup`
--
ALTER TABLE `websiteFunctions_wpsitesbackup`
  ADD CONSTRAINT `websiteFunctions_wps_owner_id_8a8dd0c5_fk_loginSyst` FOREIGN KEY (`owner_id`) REFERENCES `loginSystem_administrator` (`id`);

--
-- Limitadores para a tabela `websiteFunctions_wpstaging`
--
ALTER TABLE `websiteFunctions_wpstaging`
  ADD CONSTRAINT `websiteFunctions_wps_owner_id_543d8aec_fk_websiteFu` FOREIGN KEY (`owner_id`) REFERENCES `websiteFunctions_wpsites` (`id`),
  ADD CONSTRAINT `websiteFunctions_wps_wpsite_id_82843593_fk_websiteFu` FOREIGN KEY (`wpsite_id`) REFERENCES `websiteFunctions_wpsites` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
