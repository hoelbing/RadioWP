--
-- Datenbank: `RadioWP`
--
SET NAMES 'utf8';
SET CHARACTER SET 'utf8';

-- --------------------------------------------------------
DROP TABLE IF EXISTS `radiowp_artist`;
CREATE TABLE IF NOT EXISTS `radiowp_artist` (
  `artist_id` int(10) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_name_pronounced` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_herkunft` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_years_active` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_member_anzahl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist_miscellaneous` text COLLATE utf8_unicode_ci NOT NULL,
  `artist_last_track` text COLLATE utf8_unicode_ci NOT NULL,
  `promolabel_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`artist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `radiowp_artist`
--

INSERT INTO `radiowp_artist` (`artist_id`, `artist_name`, `artist_name_pronounced`, `artist_herkunft`, `artist_years_active`, `artist_genre`, `artist_website`, `artist_member_anzahl`, `artist_miscellaneous`, `artist_last_track`, `promolabel_id`) VALUES
('1', 'Depeche Mode', '', 'England', '1980', 'Synthie Pop, Synth Rock, New Wave', 'http://www.depechemode.com/', 'Dave Gahan,Martin Gore,Andrew Fletcher', 'Depeche Mode ist eine englische Synth-Rock- bzw. Synthie-Pop-Gruppe.\r\nDepeche Mode gilt mit weltweit ueber 100 Millionen verkauften Tontraegern als eine der erfolg- und einflussreichsten Bands der Welt', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_feedbacksenden`
--
DROP TABLE IF EXISTS `radiowp_feedbacksenden`;
CREATE TABLE IF NOT EXISTS `radiowp_feedbacksenden` (
  `feedbacksenden_id` int(10) NOT NULL AUTO_INCREMENT,
  `feedbacksenden_sendto_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feedbacksenden_sendto_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feedbacksenden_date_year` int(10) NOT NULL DEFAULT '-1',
  `feedbacksenden_date_kw` int(10) NOT NULL DEFAULT '-1',
  `feedbacksenden_send_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feedbacksenden_send_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `feedbacksenden_emailtext` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`feedbacksenden_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `radiowp_feedbacksenden`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_feedback_kwemailtext`
--
DROP TABLE IF EXISTS `radiowp_feedback_kwemailtext`;
CREATE TABLE IF NOT EXISTS `radiowp_feedback_kwemailtext` (
  `feedback_kwemailtext_id` int(10) NOT NULL AUTO_INCREMENT,
  `kwemailtext_date_year` int(10) NOT NULL DEFAULT '-1',
  `kwemailtext_date_kw` int(10) NOT NULL DEFAULT '-1',
  `kwemailtext_emailtext` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`feedback_kwemailtext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `radiowp_feedback_kwemailtext`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_permission_group`
--
DROP TABLE IF EXISTS `radiowp_permission_group`;
CREATE TABLE IF NOT EXISTS `radiowp_permission_group` (
  `permission_group_id` int(10) NOT NULL AUTO_INCREMENT,
  `permission_group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permission_group_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `radiowp_permission_group`
--

INSERT INTO `radiowp_permission_group` (`permission_group_id`, `permission_group_name`, `permission_group_description`) VALUES
('1', 'RadioWP Admin', 'voller Zugriff'),
('2', 'RadioWP normmaler Benutzer', 'einfacher Zugriff'),
('3', 'RadioWP Besucher', 'lesender Zugriff');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_posteingang`
--
DROP TABLE IF EXISTS `radiowp_posteingang`;
CREATE TABLE IF NOT EXISTS `radiowp_posteingang` (
  `posteingang_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_incomming_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_incomming_kw` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_incomming_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `post_incomming_folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_artist_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `release_type_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_titel_pronounced` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_release_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_rezension` text COLLATE utf8_unicode_ci NOT NULL,
  `post_bemerkung` text COLLATE utf8_unicode_ci NOT NULL,
  `post_Feedback_type_grabben_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_Feedback_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_kw_beginplay` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `titel_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `titel_desc_author` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`posteingang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `radiowp_posteingang`
--
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_posteingang_contact`
--
DROP TABLE IF EXISTS `radiowp_posteingang_contact`;
CREATE TABLE IF NOT EXISTS `radiowp_posteingang_contact` (
  `posteingang_id` int(10) NOT NULL DEFAULT '0',
  `promolabel_contact_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `radiowp_posteingang_contact`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_profile`
--
DROP TABLE IF EXISTS `radiowp_profile`;
CREATE TABLE IF NOT EXISTS `radiowp_profile` (
  `profile_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permission_group_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `radiowp_profile`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_promolabel`
--
DROP TABLE IF EXISTS `radiowp_promolabel`;
CREATE TABLE IF NOT EXISTS `radiowp_promolabel` (
  `promolabel_id` int(10) NOT NULL AUTO_INCREMENT,
  `promolabel_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_adress_land` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'de',
  `promolabel_adress_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_adress_plz` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_adress_town` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_miscellaneous` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`promolabel_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=100 ;

--
-- Daten für Tabelle `radiowp_promolabel`
--

INSERT INTO `radiowp_promolabel` (`promolabel_id`, `promolabel_name`, `promolabel_owner`, `promolabel_adress_land`, `promolabel_adress_street`, `promolabel_adress_plz`, `promolabel_adress_town`, `promolabel_miscellaneous`) VALUES
(1, 'Cargo Records GmbH', '', 'de', 'Kaiserstr. 52', 'D-42329', 'Wuppertal', ''),
(2, 'Hazelwood Vinyl Plastics', '', 'de', 'Esterbachstr. 47', 'D-60489', 'Frankfurt am Main', ''),
(3, 'popup-records & promotion', '', 'de', 'Stahltwiete 10', '22761', 'Hamburg', 'arne@popup-records.de\r\nwww.popup-records.de'),
(4, '!K7 Records', '', 'de', '', '', '', ''),
(5, 'Community Promotion', '', 'de', 'Susannenstr. 21a', '20357', 'Hamburg', '<p style="margin-bottom: 0.52cm;" lang="en-US"><span style="color: #000000;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"><strong><a href="mailto:lucia@community-promotion.com">lucia@community-promotion.com</a></strong></span></span></span></p>\r\n<p style="margin-bottom: 0.52cm;" lang="en-US"><span style="color: #000000;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"><strong>patrick@community-promotion.de</strong></span></span></span></p>'),
(6, 'Die4Ma', 'Ulf Bellmann & Sascha Hoffmann GbR', 'de', 'SchloÃŸstr. 91a', '44357', 'Dortmund', ''),
(7, 'Nois-o-lution', 'Arne Gesemann', 'de', 'Cuvrystr. 30', '10997', 'Berlin', ''),
(8, 'Domino Recording Company Deutschland GmbH', '', 'de', 'Kopenhagener Str. 29 a', '10437', 'Berlin', ''),
(9, 'Gordeon Music Promotion', '', 'de', 'Brunnenstr 181', '10119', 'Berlin', ''),
(10, 'Triton Promotion', 'Paul Blau', 'de', 'Carl-Schurz-Str. 33', '13597', 'Berlin', ''),
(11, 'Queen About Music', '', 'de', 'Grosse Elbstr. 277a', '22767', 'Hamburg', 'http://de-de.facebook.com/QueenAboutMusic'),
(12, 'About,  What s So Funny', 'Zick Zack', 'de', '', '20201', 'Hamburg', ''),
(13, 'King-ink', 'Zick Zack', 'de', 'Peter-Kraft-Str. 58', '40882', 'Ratingen', ''),
(14, 'Roadrunner Records', '', 'de', 'Richard-Wagner-Str. 39', '50674', 'Köln', ''),
(15, 'Audiolith', '', 'de', 'Neuer Kamp 32', '20357', 'Hamburg', 'coole Leute'),
(16, 'Beggars Group', '', 'de', 'OberhafenstraÃŸe 1', '20097', 'Hamburg', ''),
(17, 'Profiler Promotion', '', 'de', 'Steiler Berg 7', '06114', 'Halle', ''),
(18, 'Beats International', '', 'de', 'BouchÃ©str. 12', '12435', 'Berlin', ''),
(19, 'Welthit', '', 'de', 'Wilhelm-Mauser-Str. 45', '50827', 'KÃ¶ln', ''),
(20, 'PIAS', '', 'de', 'Zippelhaus 5a', '20457', 'Hamburg', ''),
(21, 'Marcsfirma', '', 'de', 'TorstraÃŸe 171', '10115', 'Berlin', ''),
(22, 'AdP Records', '', 'de', 'Fischergasse 35', '95326', 'Kulmbach', ''),
(23, 'Four Music', '', 'de', 'Schlegelstr. 26b', '10115', 'Berlin', ''),
(24, 'Radar M & U GmbH | Radar Media GmbH', '', 'de', 'BrÃ¼ckstr. 33', '44787', 'Bochum', ''),
(25, 'Sinnbus', '', 'de', 'Kinzigstr. 38', '10247', 'Berlin', ''),
(26, 'Starkult', '', 'de', 'Merowingerstr. 57', '40225', 'DÃ¼sseldorf', ''),
(27, 'Divine Records', '', 'de', 'KreuzbergstraÃŸe 30', '10965', 'Berlin', '<p>www.divine-records.com</p>'),
(28, 'VerstÃ¤rker', '', 'de', 'DieffenbachstraÃŸe 33', '10967', 'Berlin', ''),
(29, 'Styleheads', '', 'de', 'KÃ¶penicker StraÃŸe 178', '10997 ', 'Berlin', ''),
(30, 'Arctic Rodeo Recordings', '', 'de', 'Luisenweg 97', '20537', 'Hamburg', ''),
(31, 'Rewika Promotion', '', 'de', 'Sonnenburger Str. 54', '10437 ', 'Berlin', ''),
(32, 'BluNoise Records', '', 'de', 'Vogteistr. 18', '50670', 'KÃ¶ln', ''),
(33, 'Mute Germany', '', 'de', 'Kopenhagener Str. 29', '10437', 'Berlin', ''),
(34, 'Mute Music Promotion MMP', '', 'de', 'Pfarrwiese 20a', '86551', 'Aichbach', ''),
(35, 'Ãœbersee Records', '', 'de', 'Brauhofstr. 4', '30449', 'Hannover', ''),
(36, 'Absolut Promotion', '', 'de', 'Zehdenickerstr. 16', '10119', 'Berlin', ''),
(37, '5000records', '', 'de', 'Methfesselstr. 46', '202257', 'Hamburg', ''),
(38, 'Agathos/Simon GbR', '', 'de', 'Leostr.11', '50823', 'KÃ¶ln', ''),
(39, 'Cooking Vinyl', '', 'eng', '10 Allied Way', 'Acton /  W3 0RQ', 'London', ''),
(40, 'Freak Noise Records', '', 'de', '', '', '', ''),
(41, 'Rookie Records', '', 'de', 'Corneliusstr. 2', '50678', 'KÃ¶ln', ''),
(42, 'DevilDuck Records', '', 'de', 'Vereinsstrasse 85', '20357', 'Hamburg', ''),
(43, 'Guerilla Music GmbH', '', 'de', 'Pfuelstrasse 5', '10997', 'Berlin', ''),
(44, 'Kastellamedia', '', 'de', 'Roonstr. 35', '20253', 'Hamburg', ''),
(45, 'BrillJant Alternatives', '', 'de', 'Tresckowstr. 52', '20259', 'Hamburg', ''),
(46, 'PukeMusic', '', 'de', 'Samariterstrasse 34a', '10247', 'Berlin', ''),
(47, 'Radio Relations', '', 'de', 'Niederkastenholzer Str.50', '53881', 'Euskirchen', ''),
(48, 'Warner / Chappell Music GMBH & CO. KG Germany', '', 'de', '', '', '', ''),
(49, 'Warner Music Inc.', '', 'de', '', '', '', ''),
(50, 'PROMOSUITE', '', 'de', '', '', '', 'Bemerkung: Homepage geht gerade nicht'),
(51, 'Four Artists Booking Agentur GmbH', '', 'de', 'Arndtstr. 34', '10965', 'Berlin', ''),
(52, 'WortArt', '', 'de', '', '', '', ''),
(53, 'Raum 3 Konzertveranstaltungs GmbH', '', 'de', 'LindenstraÃŸe 1b', '46459', 'Rees-Haldern', ''),
(54, 'EMI Music Germany GmbH & Co. KG', '', 'de', '', '50773', 'KÃ¶ln', ''),
(55, 'Motor Entertainment GmbH', '', 'de', 'Brunnenstr. 24', '10119', 'Berlin', ''),
(56, 'PRiMA PROMO', '', 'de', 'Schliemannstr. 29', '10437', 'Berlin', ''),
(57, 'Bureau B', '', 'de', 'Stahltwiete 10', '22761', 'Hamburg', ''),
(58, 'Tapete Records', '', 'de', 'Stahltwiete 10', '22761', 'Hamburg', ''),
(59, 'Nettwerk Music Group', '', 'de', 'Neuer Kamp 32', '20357', 'Hamburg', 'Bemerkung: nachfragen ob "patricia@nettwerk.com" noch aktiv ist'),
(60, 'Sinnbus / Records + Publishing  Bossenz, Eichhorn, Gruse, Spindler GbR', '', 'de', 'Kinzigstr. 38', '10247', 'Berlin', ''),
(61, 'I Hate Music Records', '', 'de', '', '', '', ''),
(62, 'Sony Music Entertainment Germany', '', 'de', '', '', '', ''),
(63, 'PUBLIC Music & Media Ltd.', '', 'de', 'Alte Rabenstrasse 12a', '20148', 'Hamburg', ''),
(64, 'me&myfriends Promotion', '', 'de', 'BrombergstraÃŸe 21', '79102', 'Freiburg', ''),
(65, 'WAGGLE-DAGGLE Records', '', 'de', 'BrombergstraÃŸe 21', '79102', 'Freiburg im Breisgau', ''),
(66, 'Rootdown Records', '', 'de', 'Kalscheurener Str. 19', '50354', 'Huerth', ''),
(67, 'king kong records', '', 'de', 'vogelsanger strasse 193', '50825', 'KÃ¶ln', ''),
(68, 'Rough Trade Distribution GmbH', '', 'de', 'Von-Huenefeld-Str. 2', '50829', 'KÃ¶ln', ''),
(69, 'SNOWHITE', '', 'de', 'Kastanienallee 11', '10435', 'Berlin', ''),
(70, 'Wolverine Records', '', 'de', 'Im Huckinger Kamp 43a', '47259', 'Duisburg', ''),
(71, 'FUNKFAKTOR SÃ¶ren Gattung', '', 'de', 'Kastanienallee 56', '10119', 'Berlin', ''),
(72, 'The Shelter Club', '', 'de', 'Ecke Alte Schleuse', '21107', 'Hamburg-Wilhelmsburg', ''),
(73, 'poolpromotion', '', 'de', 'Panoramastr. 7', '70174', 'Stuttgart', ''),
(74, 'passionate pr', '', 'de', '', '', '', ''),
(75, 'popdis!', '', 'de', 'THULESTR. 5', '13189', 'BERLIN', ''),
(76, 'Revolver Promotion', '', 'de', 'GÃ¶rlitzer Str. 52, 2. HH, 4. OG', '10997', 'Berlin', ''),
(77, 'Volksmusike', '', 'de', 'Romain-Rolland-Str. 135 //Haus 20', '13089', 'Berlin', ''),
(78, 'Tomlab', '', 'de', 'Bismarckstr.70', '50672', 'KÃ¶ln', ''),
(79, 'City Slang GmbH & Co.KG', '', 'de', 'Dieffenbachstr. 33', '10967', 'Berlin', ''),
(80, 'Humming Records', '', 'de', 'Kernhofer StraÃŸe 1', '10317', 'Berlin', ''),
(81, 'Grand Hotel van Cleef Musik GmbH', '', 'de', 'Feldstrasse 36', '20357', 'Hamburg', ''),
(82, 'BROKEN SILENCE Independent Distribution GmbH', '', 'de', 'Stadtdeich 27', '20097', 'Hamburg', ''),
(83, '247 QM', '', 'de', 'BrÃ¼derstrasse 19', '20355', 'Hamburg', ''),
(84, 'Mind Of Music', '', 'de', 'BrÃ¼derstrasse 19', '20355', 'Hamburg', ''),
(85, 'One.Louder - PR & Musikmanagement', 'Biggi Dinter', 'de', 'MÃ¼llerstrasse 42', '80469', 'MÃ¼nchen', ''),
(86, 'afmusic', 'Falk Merten', 'de', 'Ottostrasse 46', '47169', 'Duisburg', ''),
(87, 'Karaoke Kalk | Kalk Pets | Karaoke Kalk Musikverlag', 'Thorsten LÃ¼tz', 'de', 'Schwedter StraÃŸe 8/9 (Haus 9 A)', '10119', 'Berlin', ''),
(88, 'Digital Kunstrasen', '', 'de', 'Hattinger Str. 152', '44795', 'Bochum', ''),
(89, 'Co-Operative Music', '', 'de', 'Dieffenbachstrasse 33', '10967', 'Berlin', ''),
(90, 'Armada Music', '', 'de', '', '', '', '<p>1070AE Amsterdam</p>'),
(91, 'Tumbleweed Records', 'c/o Michael Kolepke', 'de', 'Eigelstein 22', '50668', 'KÃ¶ln', ''),
(92, 'Destiny Int. Tourbooking', 'Inh. David Pollack', 'de', 'Oranienstr. 24', '10999', 'Berlin', ''),
(93, 'Nuclear Blast - TontrÃ¤ger Produktions und Vertriebs GmbH', '', 'de', 'Oeschstr. 40', '73072', 'Donzdorf', '<p><br /><br /><br /><br /><br /><br /></p>'),
(94, 'Patty Promotion', 'Patricia Nigiani', 'de', 'GrÃ¼ndgenstrasse 4', '22309', 'Hamburg', ''),
(95, 'KS Music - Klaus Stracke Music', '', 'de', 'Perleberger Str. 39', '10559', 'Berlin', ''),
(96, '50/50 KreativbÃ¼ro', '', 'de', 'Dieffenbachstr. 33 (Hof 3)', '10967', 'Berlin', '<p><br /><br /><br /><br /><br /><br /></p>'),
(97, 'C a L u F o - music :: promotion :: management', 'carmen ghetu', 'de', '', '', '', ''),
(98, 'FUEGO', 'Friedel Muders', 'de', 'Friesenstr. 106', '28203', 'Bremen', ''),
(99, 'MIDSUMMER RECORDS', 'Tim Masson', 'de', 'HeiligenhÃ¤uschen 18', '66606', 'St. Wendel', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_promolabel_contact`
--
DROP TABLE IF EXISTS `radiowp_promolabel_contact`;
CREATE TABLE IF NOT EXISTS `radiowp_promolabel_contact` (
  `promolabel_contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `promolabel_id` int(10) NOT NULL DEFAULT '0',
  `promolabel_contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_contact_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_contact_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `promolabel_contact_miscellaneous` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`promolabel_contact_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=199 ;

--
-- Daten für Tabelle `radiowp_promolabel_contact`
--
INSERT INTO `radiowp_promolabel_contact` ( `promolabel_contact_id`,`promolabel_id`, `promolabel_contact_name`, `promolabel_contact_tel`, `promolabel_contact_fax`, `promolabel_contact_email`, `promolabel_contact_miscellaneous`) VALUES
(1, 1, 'Nina Maenz', '0202736570', '', 'nina.maenz@cargo-records.de', ''),
(2, 2, 'Alexx', '0171 301 85 23', '', 'alexx@hazelwood.de', ''),
(3, 3, '', '#49 40 881666-16', '#49 40 881666-22', 'info@popup-records.de', ''),
(4, 3, '', '', '', 'promo@popup-records.de', ''),
(5, 4, 'Karsten Braun', '030-202095806', '', 'karsten@k7.com', ''),
(6, 5, '', '04043208460', '', 'radio@community-promotion.com', ''),
(7, 5, '', '', '', 'moritz@community-promotion.com', ''),
(8, 6, 'Sebastian Stiewe', '0231-162248', '', 'sebastian.stiewe@die4ma.com', ''),
(9, 6, '', '', '', 'ilona.kattau@die4ma.com', ''),
(10, 7, '', '+49(0)30 61074712', '+49(0)30-61285954', 'promo@noisolution.de', ''),
(11, 8, '', '+49 304 403 46 35', '', 'promotion@dominorecordco.com', ''),
(12, 8, '', '', '', 'eva@dominorecordco.com', ''),
(13, 9, 'kati Schulte', '+49 (0) 30 284 960 0', '+49 (0) 30 284 960 25', 'Kati@gordeonmusic.de', ''),
(14, 9, '', '', '', 'info@gordeonmusic.de', 'http://www.gordeonmusic.de'),
(15, 10, 'Paul Blau', '++49(0)30  34 39 83 39', '', 'paul.blau@tritonberlin.com', ''),
(16, 11, 'Jan', '', '', 'jan@queenaboutmusic.de', ''),
(17, 11, 'Tina', '', '', 'tina@queenaboutmusic.de', ''),
(18, 12, '', '0404395518', '', 'info@whatssofunnyabout.de', ''),
(19, 13, 'JÃ¶rn-Eric Morgenroth', '02102704875', '', 'joern@king-ink.de', ''),
(20, 13, 'Andreas', '', '', 'andreas@king-ink.de', ''),
(21, 14, '', '02219407416', '', 'intern@roadrunnerrecords.de', ''),
(22, 15, '', '04022625640', '', 'audiolith@audiolith.net', 'coole Leute'),
(23, 16, '', '040239087429', '', 'info@beggarsgroup.de', ''),
(24, 17, 'Birgit Baerenz', '03452944177', '', 'birgit@profilerpromotion.de', ''),
(25, 17, 'Birgit Baerenz (Handy)', '015150607869', '', 'birgit.baerenz@t-online.de', ''),
(26, 18, 'Birgit Peter', '03024639724', '', 'birgit@beatsinternational.de', ''),
(27, 18, 'Birgit Peter (Handy)', '01715418749', '', '', ''),
(28, 19, 'Manuel Bareth', '0221 2999581', '', 'manuel.bareth@welthit.net', ''),
(29, 19, 'Brian Thomas', '', '', 'brian.thomas@welthit.net', ''),
(30, 20, 'Mitja Bruch', '04031803102 / 015772171046', '', 'Mitja.Bruch@pias.com', ''),
(31, 21, 'Katja', '03028876411', '', 'katja@marcsfirma.de', ''),
(32, 22, 'Tess', '092216058640', '', 'tess@adp-records.net', ''),
(33, 23, 'Claudia', '03072624449', '', 'claudia@fourmusic.com', ''),
(34, 23, 'Susanne', '', '', 'susanne@fourmusic.com ', ''),
(35, 24, 'Daniel', '02343248714', '', 'daniel@radar-net.de', ''),
(36, 24, 'Welli', '0234.32487-0', '0234.32487-18', 'welli@radar-net.de', ''),
(37, 25, 'Daniel', '03097883577', '', 'daniel@sinnbus.de ', ''),
(38, 26, 'Dennis', '021130211712', '', 'dennis@starkult.de', ''),
(39, 27, '', '03075520505 / 01637332841', '', 'radiopromo@divine-records.com', ''),
(40, 27, '', '', '', 'mail@divine-records.com', ''),
(41, 28, 'Raphael', '030319880314', '', 'raphael@verstaerker.com', ''),
(42, 29, 'wiegand', '0306959720', '', 'wiegand@styleheads.de', ''),
(43, 30, 'Frederic', '04028801838', '', 'frederic@arcticrodeorecordings.com', ''),
(44, 30, '', '', '', 'info@arcticrodeorecordings.com', ''),
(45, 31, 'Markus GÃ¶res', '03039930888', '', 'markus@rewika-promotion.de', ''),
(46, 32, 'Guido Lucas', '022127070999', '', 'Guido.lucas@blunoise.de', ''),
(47, 33, 'Markus Goeres', '030225027925', '', 'markus.goeres@mute.com', ''),
(48, 34, 'Gerhard Zimmermann', '08251891910', '', 'gz@mutemusicpromotion.de', ''),
(49, 35, 'Henning', '051191199783', '', 'henning@uebersee-records.de', ''),
(50, 36, 'Ina Klein', '030-44 00 9278', '', 'ina@absolutpromotion.de', ''),
(51, 37, '', '', '', 'info@5000records.com', ''),
(52, 38, '', '+49. 221. 570 836-0', '+49. 221. 570 836-20', 'info@alexia-agathos.de', ''),
(53, 39, '', '+44 (0)20 8600 9200', '', 'info@cookingvinyl.com', ''),
(54, 40, '', '', '', 'info@freaknoiserecords.de', ''),
(55, 41, '', '+49 (0)221 29074674', '+49 (0)1212 510580534', 'info@rookierecords.de', ''),
(56, 41, '', '', '', 'promotion@rookierecords.de', ''),
(57, 42, 'JÃ¶rg Tresp', '(040) 60 08 59 51', '', 'joerg@devilduckrecords.de', ''),
(58, 43, 'JÃ¶rn Dunker', '+49 (0) 30 61622-0', '', 'joern@guerilla-music.de', ''),
(59, 44, 'Karsten', '+49.4031817652', '+49.32121160553', 'karsten@kastellamedia.com', ''),
(60, 45, 'Jan Kleinschmidt', '+49.(0)40.298 102.68', '+49.(0)40.298 102.66', 'jan@brilljant-alternatives.de', ''),
(61, 46, '', '030/41726210', '030/41726210', 'kontakt@pukemusic.de', ''),
(62, 47, '', '', '', 'kontakt@radiorelations.de', ''),
(63, 48, 'Linus Schlueter', '', '', 'linus.schlueter@warnerchappell.com', ''),
(64, 49, 'LisaMarie Hering', '', '', 'LisaMarie.Hering@warnermusic.com', ''),
(65, 49, '', '', '', 'soundsource@warnermusic.com', ''),
(66, 50, 'Lucia', '', '', 'lucia@promosuite.de', ''),
(67, 51, '', '+49-(0)30-34 66 30 8 0', '+49-(0)30-34 66 30 8 99', 'lydia@fourartists.com', ''),
(68, 51, '', '', '', 'info@fourartists.com', ''),
(69, 52, 'Maria Polch', '0221 - 99 22 77 90', '0221 - 99 22 77 920', 'Maria.Polch@wortart.de', ''),
(70, 52, 'Anke Rose', '', '', 'anke.rose@wortart.de', ''),
(71, 53, 'Michael', '02850 - 1000', '02850 - 1002', 'michael@haldern-pop.de', ''),
(72, 53, 'Steven', '', '', 'steven@haldern-pop.de', ''),
(73, 54, 'Monika Glaesser', '0221-4902-0', '', 'monika.glaesser@emimusic.de', ''),
(74, 54, '', '', '', '', 'Postfach 30 03 29'),
(75, 55, 'Yvonne Franken', '+49 (0)30- 74 777 7', '+49 (0)30- 74 777 999', 'yvonne.franken@motor.de', ''),
(76, 55, 'Sarah Waechter', '', '', 'Sarah.waechter@motor.de', ''),
(77, 56, 'Nils Arndt', '030 - 440 44 185 / mobil 0172 - 395 34 34', '030 - 440 43 745', 'nils@prima-promo.de', ''),
(78, 57, 'Nina Thomsen', '0049-40-88 16 66 62', '0049-40-88 16 66 22', 'nina@bureau-b.de', ''),
(79, 57, 'Matthias KÃ¼mpflein', 'Tel. 0049-(0)40-881666-63', '', 'mk@bureau-b.com', ''),
(80, 58, '', '+49 (0)40/881666-70', '+49(0)40/881666-22', 'radio@tapeterecords.de', ''),
(81, 58, 'Nina', '', '', 'nina@tapeterecords.de', ''),
(82, 59, 'Patricia', '49.40.431.846.50', '49.40.431.846.51', 'patricia@nettwerk.com', ''),
(83, 60, 'Peter Gruse', '+49 30 - 97 883 577', '', 'peter@sinnbus.de', ''),
(84, 61, '', '', '', 'promo@ihatemusic.de', ''),
(85, 62, '', '+49 89 4136 0', '', 'radio.presse.promo@sonymusic.com', ''),
(86, 63, '', '+49 (0) 40 / 369 059 â€“ 0', '', 'radio@djpropaganda.com', ''),
(87, 63, 'Thomas Friedmann', '', '', 'Thomas.Friedmann@publicmusicmedia.com', 'Niederlassung Hamburg'),
(88, 64, '', '+49 (0)761 / 498 777 05', '+49 (0)171 / 64 77 104', 'radio@meandmyfriends.de', ''),
(89, 64, 'Daniel', '', '', 'daniel@meandmyfriends.de', ''),
(90, 65, '', '', '', 'radio@waggle-daggle.com', 'Daniel Theuerkaufer'),
(91, 65, '', '', '', 'daniel@waggle-daggle.com', ''),
(92, 66, 'Marius', '+49-2233-93905-10', '', 'marius@rootdown-music.com', ''),
(93, 67, 'Rosalie', '+49 (0) 221 2809258', '', 'rosalie@kingkongrecords.de', ''),
(94, 68, 'Sabine Kuehn', '49 (0) 221 99075 0', '', 'Sabine.kuehn@roughtrade.de', ''),
(95, 70, 'Sascha', '', '', 'sascha@wolverine-records.de', ''),
(96, 71, 'SÃ¶ren Gattung', '+49. 30. 700 116 728', '', 'soeren.gattung@funkfaktor.de', ''),
(97, 72, 'Stepahn Rath', '', '', 'stephan@soulsville.de', ''),
(98, 73, 'Tina Rodloff', '0151/17 50 94 37', '', 'tina.rodloff@poolpromotion.com', ''),
(99, 74, 'Tobi Kirsch', '', '', 'tobi.kirsch@passionate-pr.de', ''),
(100, 75, 'Tobi Kirsch', '+49 30 4700 4262', '+49 721 1513 31951', 'tobi.kirsch@popdis.com', ''),
(101, 75, '', '', '', 'info@popdis.com', ''),
(102, 76, 'Tom', '+49 (30) 627 351 71/73', '+49 (30) 627 351 72', 'tom@revolverpromotion.de', ''),
(103, 76, 'Joerg', '', '', 'joerg@revolverpromotion.de', ''),
(104, 77, 'Tom', '030 / 762 10 661', '', 'tom@volksmusike.de', ''),
(105, 78, 'Gordon Weber', '0221-2761845', '0221-2761844', 'gordon@tomlab.com', ''),
(106, 79, 'Torben', '+49 30 700 116 700', '+49 30 700 116 716', 'torben@cityslang.com', ''),
(107, 79, 'Wido', '', '', 'wido@cityslang.com', ''),
(108, 80, 'Vivien', '', '', 'vivien@hummingrecords.com', ''),
(109, 81, '', '040 / 38 07 75 10', '040/3 80 77 51 99', 'info@ghvc.de', ''),
(110, 82, 'Jana Meyer', '040/32 52 85-0', '040/32 52 85-20', 'Jana.Meyer@brokensilence.de', ''),
(111, 83, 'Torsten Mewes', '+49(0) 40 675 822 77', '', 'mewes@247-publicrelations.de', ''),
(112, 83, '', '', '', 'info(@)247qm.de', ''),
(113, 84, 'Knut ClauÃŸen', '+49(0) 40 675 822 77', '', 'knut.claussen@mindofmusic.de', ''),
(114, 85, 'Biggi Dinter', 'Tel: +49 (0)89 - 20 00 12 56', 'Fax: +49 (0)89 - 21 11 12 29', 'biggi.dinter@onelouder-pr.de', ''),
(115, 85, '', '', '', 'news@onelouder-pr.de', ''),
(116, 86, 'Falk Merten', '+49(0) 203 - 87 83 01 30| Funk: +49(0) 174 - 8 44 81 19', 'Fax: +49(0) 203 â€“ 87 83 01 39', 'fm@af-music.de', ''),
(117, 86, 'Thomas "TeeHaa" Thurow', '+49(0) 64 21 - 34 02 60 | Funk: +49(0) 176 - 50 20 60 16', '', 'thomas@af-music.de', ''),
(118, 87, '', '+49 (0) 30 41725531', '', 'info@karaokekalk.de', ''),
(119, 88, 'THOMAS KEMPKA', '', '', 'digitalkunstrasen@web.de', ''),
(120, 88, 'MEIK PUPPE', '', '', 'puppe@digitalkunstrasen.net', ''),
(121, 89, 'Kathrin Maxer', '', '', 'Kathrin.maxer@cooperativemusic.de', ''),
(122, 90, 'Rosalie', 'T: +31 20 408 0846', 'F: +31 20 617 2249', 'Rosalie@armadamusic.de', ''),
(123, 91, '', 'Tel: 0173-7790940', '', 'info@tumbleweedrecords.de', ''),
(124, 92, '', '', '', 'records@destiny-tourbooking.com', ''),
(125, 92, 'Angie', '', '', 'angie@destiny-tourbooking.com', ''),
(126, 93, 'Christian', 'Telefon: +49 (0)7162 9280-26', 'Telefax: +49 (0)7162 24554', 'christian@nuclearblast.de', ''),
(127, 93, '', '', '', 'info@nuclearblast.de', ''),
(128, 94, 'Patricia Nigiani', '', '', 'Patricia.nigiani@patty-promotion.de', ''),
(129, 95, '', 'Tel: +49-30-53097089 / Mobil: +49-179-2673776', '', 'info@ksmusic-booking.de', ''),
(130, 96, 'Wassif Hoteit', '', '', 'wassif@prinzpi.biz', ''),
(131, 97, 'carmen ghetu', 'fon +49 (0)40 4293 6651', 'fax +49 (0)40 4293 6652', 'carmen@calufo.de', ''),
(132, 97, '', '', '', 'mail@calufo.de', ''),
(133, 98, '', 'Tel.: 0421-75111', '', 'info@fuego.de', ''),
(134, 98, '', '', '', 'music@fuego.de', ''),
(135, 99, '', 'Mobil: ++(49)17620038622', '', 'info@midsummer-records.de', ''),
(136, 99, '', '', '', 'midsummer-records@t-online.de', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_release_type`
--
DROP TABLE IF EXISTS `radiowp_release_type`;
CREATE TABLE IF NOT EXISTS `radiowp_release_type` (
  `release_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `release_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`release_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `radiowp_release_type`
--

INSERT INTO `radiowp_release_type` (`release_type_id`, `release_type_name`) VALUES
(1, 'Single'),
(2, 'Album'),
(3, 'EP');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_sessions`
--
DROP TABLE IF EXISTS `radiowp_sessions`;
CREATE TABLE IF NOT EXISTS `radiowp_sessions` (
  `ses_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_lastUpdated` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ses_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `radiowp_sessions`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_todolist`
--
DROP TABLE IF EXISTS `radiowp_todolist`;
CREATE TABLE IF NOT EXISTS `radiowp_todolist` (
  `todolist_id` int(10) NOT NULL AUTO_INCREMENT,
  `todolist_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `todolist_kw` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`todolist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `radiowp_todolist`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_todolist_tasktype`
--
DROP TABLE IF EXISTS `radiowp_todolist_tasktype`;
CREATE TABLE IF NOT EXISTS `radiowp_todolist_tasktype` (
  `todolist_id` int(10) NOT NULL,
  `tasktype_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `radiowp_todolist_tasktype`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `radiowp_todo_tasktype`
--
DROP TABLE IF EXISTS `radiowp_todo_tasktype`;
CREATE TABLE IF NOT EXISTS `radiowp_todo_tasktype` (
  `tasktype_id` int(10) NOT NULL AUTO_INCREMENT,
  `tasktype_shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tasktype_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tasktype_texttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tasktype_desc` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tasktype_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
