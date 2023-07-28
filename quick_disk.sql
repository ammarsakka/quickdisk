-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2023 at 03:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quick_disk`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `tables_name` varchar(150) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `tables_name`, `avatar`, `created`) VALUES
(1, 'novux', 'novux_tables', 'novux_69532.85742288291.png', '2023-02-22 13:18:04'),
(6, 'MyOfficeRenovation', 'renovation_tables', 'Renovation_14947.454407695024.png', '2023-02-24 16:18:21'),
(5, 'MyDGTech', 'mydgtech_tables', 'MyDGTech_41907.22979631614.png', '2023-02-24 16:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_comments`
--

DROP TABLE IF EXISTS `mydgtech_tables_comments`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_comments` (
  `comments_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_inquiry_id` int NOT NULL,
  `comments_comment` json NOT NULL,
  PRIMARY KEY (`comments_id`),
  KEY `inquiry_id` (`comments_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_comments`
--

INSERT INTO `mydgtech_tables_comments` (`comments_id`, `comments_inquiry_id`, `comments_comment`) VALUES
(2, 6, '[{\"id\": 0, \"date\": \"2023-01-03\", \"comment\": \"client asked an inquiry for web design via email\"}, {\"id\": 1, \"date\": \"2023-01-03\", \"comment\": \"client looking for redevelopment of service center website\"}, {\"id\": 2, \"date\": \"2023-01-03\", \"comment\": \"client not pickup the phone call\"}]'),
(3, 7, '[{\"id\": 0, \"date\": \"2023-01-07\", \"comment\": \"client asked for an advertisement board design with different size \"}, {\"id\": 1, \"date\": \"2023-01-09\", \"comment\": \" send the quotation to client on 09/01\"}, {\"id\": 2, \"date\": \"2023-01-12\", \"comment\": \"Client made full payment with total RM 742\"}]'),
(4, 8, '[{\"id\": 0, \"date\": \"2023-01-10\", \"comment\": \"client asked an inquiry for banner design for baby expo via WS  (Ridwan) on 10/01\"}, {\"id\": 1, \"date\": \"2023-01-11\", \"comment\": \"send the quotation to client \"}, {\"id\": 2, \"date\": \"2023-01-12\", \"comment\": \"client made a full payment RM212\"}]'),
(5, 9, '[{\"id\": 0, \"date\": \"2023-01-19\", \"comment\": \"client asked for having a video shoot for Novux; short video\"}, {\"id\": 1, \"date\": \"2023-01-19\", \"comment\": \"client give their details with script in English and Mandarin Language\"}, {\"id\": 2, \"date\": \"2023-01-20\", \"comment\": \"the shoot will be on 20/01 at 10AM\"}]'),
(6, 10, '[{\"id\": 0, \"date\": \"2022-01-20\", \"comment\": \"client asked an inquiry for having a shooting space; office space and  meeting room\"}, {\"id\": 1, \"date\": \"2023-01-20\", \"comment\": \"f/u on the updated (20/01); client no response yet\"}, {\"id\": 2, \"date\": \"2023-01-25\", \"comment\": \"f/u on the updated (25/01); client give the details and rquested for  6PAX for 2 days; 8 hours/day\"}, {\"id\": 3, \"date\": \"2023-01-25\", \"comment\": \"client want to come for viewing on 3rd February 2023\"}, {\"id\": 4, \"date\": \"2023-02-03\", \"comment\": \"Mr Mehdi give the price RM 2,500\"}, {\"id\": 5, \"date\": \"2023-02-07\", \"comment\": \"f/u on the update (07/02); Will update asap\"}]'),
(7, 11, '[{\"id\": 0, \"date\": \"2023-01-20\", \"comment\": \"client asked an inquiry for web maintenance\"}, {\"id\": 1, \"date\": \"2023-01-21\", \"comment\": \"client had a meeting with team on 20/01\"}, {\"id\": 2, \"date\": \"2023-01-21\", \"comment\": \"client requested to manage their website and update some layout and  content such as change the theme of the website colour\"}, {\"id\": 3, \"date\": \"2023-01-27\", \"comment\": \"done submit the project on 27/01 (Friday)\"}]'),
(8, 12, '[{\"id\": 0, \"date\": \"2023-01-25\", \"comment\": \"client asked for the fashion show videography for the event   Roberto Cavvali\"}, {\"id\": 1, \"date\": \"2023-01-25\", \"comment\": \"video shooting of the main event, location, audiences attending and  reactions, backstage, models and Cavalli team\"}, {\"id\": 2, \"date\": \"2023-01-25\", \"comment\": \"client request the highlight video of the event will be up to  120 seconds = 2 minutes)\"}, {\"id\": 3, \"date\": \"2023-01-25\", \"comment\": \"client asked for professional photos editing for all selected photos\"}, {\"id\": 4, \"date\": \"2023-01-25\", \"comment\": \"we will provide 2 professional fashion show photography\"}]'),
(9, 13, '[{\"id\": 0, \"date\": \"2023-02-02\", \"comment\": \"client asked an inquiry for shooting space through whatsapp\"}, {\"id\": 1, \"date\": \"2023-02-02\", \"comment\": \"shooting for 20PAX; 8am-9pm; the time is TBC\"}, {\"id\": 2, \"date\": \"2023-02-02\", \"comment\": \"Mr Mehdi gave price to the client; RM2,500\"}, {\"id\": 3, \"date\": \"2023-02-07\", \"comment\": \"client still in reviewing process for their pitch and it take a few weeks\"}]'),
(10, 14, '[{\"id\": 0, \"date\": \"2023-02-03\", \"comment\": \"client asked an inquiry for web design via email and liaised via Whatsapp\"}, {\"id\": 1, \"date\": \"2023-02-03\", \"comment\": \"client is looking for web agency that can do for the web page; for game project includes several webs and landing page\"}, {\"id\": 2, \"date\": \"2023-02-03\", \"comment\": \"the client asked to meet them for discussion\"}, {\"id\": 3, \"date\": \"2023-02-07\", \"comment\": \"lient share the website look book and asked for an online meeting\"}, {\"id\": 4, \"date\": \"2023-02-13\", \"comment\": \"will do have a meeting after 22/02 after the client come to Malaysia\"}, {\"id\": 5, \"date\": \"2023-02-28\", \"comment\": \"client will do with another company\"}]'),
(11, 15, '[{\"id\": 0, \"date\": \"2023-02-03\", \"comment\": \"client asked an inquiry for Web Design through WS\"}, {\"id\": 1, \"date\": \"2023-02-03\", \"comment\": \"client want to know the package for the Web Design\"}, {\"id\": 2, \"date\": \"2023-02-03\", \"comment\": \"we gave the Advance Store Package to the client; RM7,750\"}, {\"id\": 3, \"date\": \"2023-02-07\", \"comment\": \"f/u on the updated (07/02); no response\"}, {\"id\": 4, \"date\": \"2023-02-17\", \"comment\": \"f/u on the updated (17/02); client not interested\"}]'),
(12, 16, '[{\"id\": 0, \"date\": \"2023-02-03\", \"comment\": \"client invite to PERKIM for discussion regarding the video production\"}, {\"id\": 1, \"date\": \"2023-02-03\", \"comment\": \"client asked to change the sample videos with the new ideas \"}, {\"id\": 2, \"date\": \"2023-02-03\", \"comment\": \"the due for the videos will be 13th Feb 2023\"}, {\"id\": 3, \"date\": \"2023-02-08\", \"comment\": \"f/u on the updated (08/02); postponed the meeting to 10/02 (Friday)\"}, {\"id\": 4, \"date\": \"2023-02-10\", \"comment\": \"f/u on the updated (10/02); the video is done but will use for another event\"}, {\"id\": 5, \"date\": \"2023-02-13\", \"comment\": \"f/u on the updated; the video is nice but they will use it for another event\"}]'),
(13, 17, '[{\"id\": 0, \"date\": \"2023-02-07\", \"comment\": \"*client asked an inquiry for graphic design via Whatsapp\"}, {\"id\": 1, \"date\": \"2023-02-07\", \"comment\": \"*client needs company logo, company business card, and company letterhead\"}, {\"id\": 2, \"date\": \"2023-02-07\", \"comment\": \"*f/u on the updated; already give the client details to our PIC\"}, {\"id\": 3, \"date\": \"2023-02-07\", \"comment\": \"*f/u on the updated; client is not interested and their budget only RM150\"}]'),
(14, 18, '[{\"id\": 0, \"date\": \"2023-02-07\", \"comment\": \"*client asked an inquiry for shooting space for photoshoot for their company through Whatsapp\"}, {\"id\": 1, \"date\": \"2023-02-07\", \"comment\": \"*client needs for; 6PAX; Office space level 23-7 and CEO Room Level 31-3A for 2hours\"}, {\"id\": 2, \"date\": \"2023-02-07\", \"comment\": \"*Mr Mehdi give prices; RM500\"}, {\"id\": 3, \"date\": \"2023-02-16\", \"comment\": \"*f/u on the updated (16/02); no response\"}]'),
(15, 50, '[{\"id\": 0, \"date\": \"2023-04-10\", \"comment\": \"*client asked an inquiry for handling their social media platform via WS\"}, {\"id\": 1, \"date\": \"2023-04-10\", \"comment\": \"*their concern would be on generate more sales on specific location which are Cyberjaya and Klang Valley\"}, {\"id\": 2, \"date\": \"2023-04-10\", \"comment\": \"*send the client details to our PIC \"}, {\"id\": 3, \"date\": \"2023-04-10\", \"comment\": \"*f/u on the updated (10/04); client need a graphic design for social media platform and need a copywriting /content writing for their social platform but we dont provide the services for handling social media platform \"}]'),
(16, 52, '[{\"id\": 0, \"date\": \"2023-04-11\", \"comment\": \"*client asked an inquiry for web design via WS (client MR ALI)\"}, {\"id\": 1, \"date\": \"2023-04-11\", \"comment\": \"*client need a simple website and maximum 10 page\"}, {\"id\": 2, \"date\": \"2023-04-11\", \"comment\": \"*FMCG Company (Fast Moving Consumer Goods)\"}, {\"id\": 3, \"date\": \"2023-04-11\", \"comment\": \"*client need a quotation for their enquiry \"}, {\"id\": 4, \"date\": \"2023-04-11\", \"comment\": \"*f/u on the updated (11/04); send the quotation to the client \"}]'),
(17, 53, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*client asked an inquiry for a new portal \"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*they provide a link for the portal they want to have\"}, {\"id\": 2, \"date\": \"2023-04-12\", \"comment\": \"*asked the client details for the further assists; not respond yet\"}, {\"id\": 3, \"date\": \"2023-04-13\", \"comment\": \"*f/u on the updated (13/04); no response\"}, {\"id\": 4, \"date\": \"2023-04-14\", \"comment\": \"*f/u on the updated (14/04); no response\"}]'),
(18, 54, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*client asked an inquiry for shooting space via WS \"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*client asked an enquiry for; Meeting room level 31-1, receptionist level 31-1, ceo room level 31-2, office space level 31-1 (unit 6), lounge level 31-7, pantry level 31-1\"}, {\"id\": 2, \"date\": \"2023-04-12\", \"comment\": \"*Mr Mehdi give price; RM2,000; full-day (9am - 6pm)\"}, {\"id\": 3, \"date\": \"2023-04-13\", \"comment\": \"*f/u on the updated (13/04); their client skip the shooting \"}]'),
(19, 57, '[{\"id\": 0, \"date\": \"2023-04-17\", \"comment\": \"*client asked an inquiry for web design and development via WS on 17/04\"}, {\"id\": 1, \"date\": \"2023-04-17\", \"comment\": \"*the client needs the quotation for their enquiry\"}, {\"id\": 2, \"date\": \"2023-04-18\", \"comment\": \"*f/u on the updated (18/04); done prepare the quotation but client asked to combine the quotation \"}, {\"id\": 3, \"date\": \"2023-04-17\", \"comment\": \"*client asked an inquiry for videography and photography via WS on 17/04\"}, {\"id\": 4, \"date\": \"2023-04-17\", \"comment\": \"*the client needs a product videography and photography for blower machine\"}, {\"id\": 5, \"date\": \"2023-04-17\", \"comment\": \"*they would like to have the video shoot and photoshoot at their office in Cheras\"}, {\"id\": 6, \"date\": \"2023-04-17\", \"comment\": \"*the client need the quotation for the inquiry and asked to send it together for both enquiry \"}, {\"id\": 7, \"date\": \"2023-04-27\", \"comment\": \"*f/u on the updated (27/04); send the quotation to the client \"}, {\"id\": 8, \"date\": \"2023-04-28\", \"comment\": \"*f/u on the updated (28/04); client want to know more about photography services\"}]'),
(20, 58, '[{\"id\": 0, \"date\": \"2023-04-20\", \"comment\": \"*client asked an inquiry for shooting space via whatsapp \"}, {\"id\": 1, \"date\": \"2023-04-20\", \"comment\": \"*client need a space for pantry, private room and office space ; 4 Hours; <20PAX\"}, {\"id\": 2, \"date\": \"2023-04-20\", \"comment\": \"*we give suggestion for the space for Pantry Level 31-1, CEO Room 31-2 and Office Space 31-1 (Suite 6)\"}, {\"id\": 3, \"date\": \"2023-04-20\", \"comment\": \"*client asked the quotation for her inquiry \"}, {\"id\": 4, \"date\": \"2023-04-20\", \"comment\": \"*done send the quotation to the client via email \"}, {\"id\": 5, \"date\": \"2023-05-09\", \"comment\": \"*f/u on the updated (09/05); the budget doesn\'t fit with our location so they won\'t use our space\"}]'),
(21, 61, '[{\"id\": 0, \"date\": \"2023-04-26\", \"comment\": \"- client asked an inquiry for shooting space via email and liaised via Whatsapp\"}, {\"id\": 1, \"date\": \"2023-04-26\", \"comment\": \"- client request to come for a viewing before choose the space because need to proposed to their management\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"- Mr Mehdi offered space at level 31-5 for the price RM9,000 for 12 hour per day for 3 days \"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"- send the quotation to client via Whatsapp \"}]'),
(22, 55, '[{\"id\": 0, \"date\": \"2023-04-13\", \"comment\": \"*client asked an inquiry for shooting space via email and liaised via WS\"}, {\"id\": 1, \"date\": \"2023-04-13\", \"comment\": \"*asked the client details for the shooting space\"}, {\"id\": 2, \"date\": \"2023-04-13\", \"comment\": \"*they give their details but didn\'t provide a full-details\"}, {\"id\": 3, \"date\": \"2023-04-14\", \"comment\": \"*f/u on the updated (14/04); client would like to have a space hold the artist and then he walk from behind of his fans.\"}, {\"id\": 4, \"date\": \"2023-04-14\", \"comment\": \"*f/u on the updated (14/04); send the photos space that suitable for their enquiry to the client and asked to complete the details to get the prices\"}, {\"id\": 5, \"date\": \"2023-04-17\", \"comment\": \"*f/u on the updated (17/04); the client already found another space\"}]'),
(23, 60, '[{\"id\": 0, \"date\": \"2023-04-26\", \"comment\": \"*client asked an inquiry for shooting space via email and liaised via Whatsapp \"}, {\"id\": 1, \"date\": \"2023-04-26\", \"comment\": \"*client need an office space for the shooting\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"*send the photos to client but they still didn\'t choose which suite they want for the shooting space\"}]'),
(24, 62, '[{\"id\": 0, \"date\": \"2023-01-19\", \"comment\": \"*client asked for having a video shoot for Novux; short video\"}, {\"id\": 1, \"date\": \"2023-01-19\", \"comment\": \"*client give their details with script too\"}, {\"id\": 2, \"date\": \"2023-01-20\", \"comment\": \"*the shoot will be on 20/01; 10AM\"}]'),
(25, 56, '[{\"id\": 0, \"date\": \"2023-04-13\", \"comment\": \"*client asked an inquiry for shooting space via email and liaised via WS\"}, {\"id\": 1, \"date\": \"2023-04-13\", \"comment\": \"*client provides the details but didn\'t complete\"}, {\"id\": 2, \"date\": \"2023-04-13\", \"comment\": \"*they would like to come for a reccee on Monday but still didn\'t provide the time\"}, {\"id\": 3, \"date\": \"2023-04-13\", \"comment\": \"*f/u on the updated (13/04); ask the client what time the client will come for a recce this monday but the client said will reply as soon as possible\"}, {\"id\": 4, \"date\": \"2023-04-13\", \"comment\": \"*f/u on the updated (13/04); client cancel to use office space because have slight changes in their script and doesn\'t need to use an office space\"}]'),
(26, 59, '[{\"id\": 0, \"date\": \"2023-04-25\", \"comment\": \"*client asked an inquiry for company brochure via whatsapp on 23/04 and liaised with the client on 25/04\"}, {\"id\": 1, \"date\": \"2023-04-25\", \"comment\": \"*send the details to our PIC \"}, {\"id\": 2, \"date\": \"2023-04-25\", \"comment\": \"*they would like to have 11 pages of the brochure\"}, {\"id\": 3, \"date\": \"2023-04-25\", \"comment\": \"*we give the price RM80/per page but their budget only RM300 for the 11 pages \"}, {\"id\": 4, \"date\": \"2023-04-25\", \"comment\": \"*client not proceed because it exceed their budget\"}]'),
(27, 63, '[{\"id\": 0, \"date\": \"2023-05-05\", \"comment\": \"- client asked an inquiry for video production via email and liaised via WS\"}, {\"id\": 1, \"date\": \"2023-05-05\", \"comment\": \"- client need 2 minutes video for corporate videos; the location will be at Shah Alam\"}, {\"id\": 2, \"date\": \"2023-05-05\", \"comment\": \"- the client would like to start as soon as possible and the project deadline also as soon as possible\"}, {\"id\": 3, \"date\": \"2023-05-09\", \"comment\": \"- f/u on the updated (09/05); Mr Ali already liaised with the client and waiting for the draft update from the client\"}, {\"id\": 4, \"date\": \"2023-05-15\", \"comment\": \"- f/u on the updated (15/05); client mentioned will give the draft video soon\"}]'),
(28, 65, '[{\"id\": 0, \"date\": \"2023-05-09\", \"comment\": \"- client asked an inquiry via email \"}, {\"id\": 1, \"date\": \"2023-05-10\", \"comment\": \"- liaised with client via email and whatsapp \"}, {\"id\": 2, \"date\": \"2023-05-10\", \"comment\": \"- f/u on the updated (10/5); client provide all the details that we need \"}, {\"id\": 3, \"date\": \"2023-05-11\", \"comment\": \"- client mention to have an infographic poster, SIS Banner, landing page, long poster with additional 3-4 thumbnail image and there are 20 products\"}, {\"id\": 4, \"date\": \"2023-05-11\", \"comment\": \"- client want to have a quotation for their inquiry and we done share our graphic design portfolio\"}, {\"id\": 5, \"date\": \"2023-05-16\", \"comment\": \"- f/u on the updated (16/05); send the quotation to the client via WS\"}, {\"id\": 6, \"date\": \"2023-05-17\", \"comment\": \"- f/u on the updated (17/05); client need in AI format and have additional charge\"}, {\"id\": 7, \"date\": \"2023-05-17\", \"comment\": \"- f/u on the updated (17/05); client will discuss with their team first\"}, {\"id\": 8, \"date\": \"2023-05-22\", \"comment\": \"-f/u on the updated (22/05); client update that she already find another company that suites their criteria for the project \"}]'),
(29, 64, '[{\"id\": 0, \"date\": \"2023-05-08\", \"comment\": \"- client asked an inquiry for shooting space via Whatsapp\"}, {\"id\": 1, \"date\": \"2023-05-08\", \"comment\": \"- client would like to come for a reccee for office room and conference room \"}, {\"id\": 2, \"date\": \"2023-05-08\", \"comment\": \"- client needs for 50pax; 7am - 10pm (15 hours)\"}, {\"id\": 3, \"date\": \"2023-05-08\", \"comment\": \"- client come for a reccee at 4pm\"}]'),
(30, 66, '[{\"id\": 0, \"date\": \"2023-05-15\", \"comment\": \"- Client asked an inquiry for shooting space via WS\"}, {\"id\": 1, \"date\": \"2023-05-15\", \"comment\": \"- Send the photos to client the available space that we have for shooting\"}, {\"id\": 2, \"date\": \"2023-05-15\", \"comment\": \"- Client would like to know the price for Level 31-5 \"}, {\"id\": 3, \"date\": \"2023-05-15\", \"comment\": \"- Ms Diyana mention after this Novux will handle shooting space inquiry\"}]'),
(31, 67, '[{\"id\": 0, \"date\": \"2023-05-15\", \"comment\": \"- Client asked an inquiry for logo design via WS\"}, {\"id\": 1, \"date\": \"2023-05-15\", \"comment\": \"- Client nature of business is food industries and they would like to have a logo that contain text\"}, {\"id\": 2, \"date\": \"2023-05-15\", \"comment\": \"- Send the details to our person in charge (Ridwan)\"}, {\"id\": 3, \"date\": \"2023-05-15\", \"comment\": \"- Ridwan mentioned he will liaised with the client\"}, {\"id\": 4, \"date\": \"2023-05-22\", \"comment\": \"- f/u on the updated (22/05); client update and tell already find another designer\"}]'),
(32, 31, '[{\"id\": 0, \"date\": \"2023-02-09\", \"comment\": \"*client asked an inquiry for graphic design via email\"}, {\"id\": 1, \"date\": \"2023-02-09\", \"comment\": \"*Give the client details to our PIC and in inquiry group\"}, {\"id\": 2, \"date\": \"2023-02-13\", \"comment\": \"*f/u on the updated (13/02); client need for packaging design for their product but they didn\'t give the full details\"}]'),
(33, 41, '[{\"id\": 0, \"date\": \"2023-03-01\", \"comment\": \"*client asked an inquiry for web design through email and liaised through WS\"}, {\"id\": 1, \"date\": \"2023-03-01\", \"comment\": \"*client need a custom website for salary display and they already give the other details\"}, {\"id\": 2, \"date\": \"2023-03-01\", \"comment\": \"*Our PIC liaised to do a website without template or 3rd party plug in including logo design \"}, {\"id\": 3, \"date\": \"2023-03-01\", \"comment\": \"*We offered the price for RM15,000 and the client is rejected the price because their budget is only RM2,000\"}]'),
(34, 42, '[{\"id\": 0, \"date\": \"2023-03-02\", \"comment\": \"*client asked an inquiry for 2-3 minutes interview video \"}, {\"id\": 1, \"date\": \"2023-03-02\", \"comment\": \"*their targetting for 5-8 doctors  different clinic around Klang Valley \"}, {\"id\": 2, \"date\": \"2023-03-02\", \"comment\": \"*each doctor will have 2-3 minutes video regarding the product \"}, {\"id\": 3, \"date\": \"2023-03-02\", \"comment\": \"*done give the details to our PIC to liaised with the client \"}, {\"id\": 4, \"date\": \"2023-03-06\", \"comment\": \"*f/u on the updated (06/03); our PIC already give the quotation; price given RM10,000\"}, {\"id\": 5, \"date\": \"2023-03-16\", \"comment\": \"*f/u on the updated (16/03); no response from the client\"}, {\"id\": 6, \"date\": \"2023-03-20\", \"comment\": \"*f/u on the updated (20/03); no response from the client\"}]'),
(35, 32, '[{\"id\": 0, \"date\": \"2023-02-13\", \"comment\": \"*client asked an inquiry for graphic design via email\"}, {\"id\": 1, \"date\": \"2023-02-13\", \"comment\": \"*client need the price for logo, business card, company profile, poster and flyer design & social media marketing (IG and FB)\"}, {\"id\": 2, \"date\": \"2023-02-13\", \"comment\": \"*send the quotation to the client via email on 13/02\"}, {\"id\": 3, \"date\": \"2023-02-27\", \"comment\": \"*f/u on the updated (27/02); asked the client regarding the quotation given whether they are still interested or not but still didn\'t get any feedback\"}]'),
(36, 33, '[{\"id\": 0, \"date\": \"2023-02-15\", \"comment\": \"*client asked an inquiry for 2 corporate videos; 3 minutes for each videos\"}, {\"id\": 1, \"date\": \"2023-02-15\", \"comment\": \"*The client budget is RM10,000 for the 2 videos and the client need to shoot from the beginning\"}, {\"id\": 2, \"date\": \"2023-02-15\", \"comment\": \"*The due date will be on May and start for shooting on March and the videos will be shown on their 30th year company anniversary\"}, {\"id\": 3, \"date\": \"2023-02-15\", \"comment\": \"*Client needs the quotation but didn\'t give the full requirement\"}, {\"id\": 4, \"date\": \"2023-02-17\", \"comment\": \"*f/u on the updated (17/02); no response\"}, {\"id\": 5, \"date\": \"2023-02-20\", \"comment\": \"*f/u on the updated (20/02); no response\"}]'),
(37, 34, '[{\"id\": 0, \"date\": \"2023-02-16\", \"comment\": \"*client asked an inquiry for shooting space; 10PAX; office space level 23-7 and pantry level 15-1; 4Hours\"}, {\"id\": 1, \"date\": \"2023-02-16\", \"comment\": \"*Mr Mehdi give price; RM2,000\"}, {\"id\": 2, \"date\": \"2023-02-16\", \"comment\": \"*client will come for viewing on 17th Feb; 12.30PM\"}, {\"id\": 3, \"date\": \"2023-02-17\", \"comment\": \"*Mr Mehdi offered the other place for level 31-2; full-day with price RM3,000 with discount RM200\"}, {\"id\": 4, \"date\": \"2023-02-17\", \"comment\": \"*Prepared an invoice for the client \"}, {\"id\": 5, \"date\": \"2023-02-17\", \"comment\": \"*f/u on the updated (17/02); send the invoice to the client via WS\"}, {\"id\": 6, \"date\": \"2023-02-21\", \"comment\": \"*f/u on the updated (21/02); client doesn\'t want to proceed\"}]'),
(38, 35, '[{\"id\": 0, \"date\": \"2023-02-20\", \"comment\": \"*client asked an inquiry for shooting space via email and liased through WS ; 12 PAX; office space level 23-7; 9am-4pm (7 hours)\"}, {\"id\": 1, \"date\": \"2023-02-20\", \"comment\": \"*Mr Mehdi give price RM2,000 \"}, {\"id\": 2, \"date\": \"2023-02-20\", \"comment\": \"*client asked to negotiate the price to RM1,500 but Mr Mehdi give RM1,800\"}, {\"id\": 3, \"date\": \"2023-02-20\", \"comment\": \"*client asked to send the quotation via email\"}, {\"id\": 4, \"date\": \"2023-02-21\", \"comment\": \"*f/u on the update (21/02); the client want to come for viewing but suddenly cancel because the management still didn\'t get the confirmation yet\"}, {\"id\": 5, \"date\": \"2023-03-03\", \"comment\": \"*f/u on the update (03/03);  the client is cancel to rent the place\"}]'),
(39, 36, '[{\"id\": 0, \"date\": \"2023-02-20\", \"comment\": \"*client asked an inquiry for shooting space for photoshoot 6 hours\"}, {\"id\": 1, \"date\": \"2023-02-20\", \"comment\": \"*the client asked for quotation but didn\'t provide the full-details\"}, {\"id\": 2, \"date\": \"2023-02-20\", \"comment\": \"*f/u on the update (20/02); no response\"}, {\"id\": 3, \"date\": \"2023-02-21\", \"comment\": \"*f/u on the update (21/02); no response\"}]'),
(40, 37, '[{\"id\": 0, \"date\": \"2023-02-21\", \"comment\": \"*client asked an inquiry for brochure design related to oil and gas industrial via WS\"}, {\"id\": 1, \"date\": \"2023-02-21\", \"comment\": \"*send the details to our person in charge for the further assists\"}, {\"id\": 2, \"date\": \"2023-02-22\", \"comment\": \" *f/u on the updated (22/02); client need to discuss with the management first\"}]'),
(41, 38, '[{\"id\": 0, \"date\": \"2023-02-21\", \"comment\": \"*client asked for a professional studio photo shooting with corporate and potrait style for 20 people \"}, {\"id\": 1, \"date\": \"2023-02-21\", \"comment\": \"*the event will be on 28th February 2023\"}, {\"id\": 2, \"date\": \"2023-02-21\", \"comment\": \"*given price to the client; RM11,000\"}, {\"id\": 3, \"date\": \"2023-02-21\", \"comment\": \"*send the quotation to the client and the project is confirmed\"}, {\"id\": 4, \"date\": \"2023-03-01\", \"comment\": \"*f/u on the updated (01/03); the project is done\"}]'),
(42, 39, '[{\"id\": 0, \"date\": \"2023-02-22\", \"comment\": \"*client asked an inquiry for video production\"}, {\"id\": 1, \"date\": \"2023-02-22\", \"comment\": \"*the client needed for one year contract and prepare for 25 videos for them\"}]'),
(43, 40, '[{\"id\": 0, \"date\": \"2023-02-28\", \"comment\": \"*client asked an inquiry for shooting space; 5-10 pax; 2-3 days;half-day shoot via WS\"}, {\"id\": 1, \"date\": \"2023-02-28\", \"comment\": \"*send to the client photos of shooting space that available\"}, {\"id\": 2, \"date\": \"2023-02-28\", \"comment\": \"*the client still didn\'t provide the full details so can\'t give the price to the client\"}]'),
(44, 43, '[{\"id\": 0, \"date\": \"2023-03-07\", \"comment\": \"*client asked an inquiry for brochure design (fold brochure)\"}, {\"id\": 1, \"date\": \"2023-03-07\", \"comment\": \"*client need 10 pages brochure for one week duration \"}, {\"id\": 2, \"date\": \"2023-03-07\", \"comment\": \"*give the quotation to client on (07/03) and the price RM1,000\"}, {\"id\": 3, \"date\": \"2023-03-10\", \"comment\": \"*f/u on the updated (10/03); the client asked to send invoice\"}]'),
(45, 44, '[{\"id\": 0, \"date\": \"2023-03-13\", \"comment\": \"*client asked for having a photoshoot on 20th March 2023 (Monday)\"}, {\"id\": 1, \"date\": \"2023-03-13\", \"comment\": \"*the quotation for this project is still not ready yet\"}, {\"id\": 2, \"date\": \"2023-03-14\", \"comment\": \"*f/u on the update (14/03); give the quotation to client; photoshoot for 3 people and have a 2 group photoshoot - different groups of directors and manager\"}, {\"id\": 3, \"date\": \"2023-03-14\", \"comment\": \"*given price RM8,500 include the transportation prices\"}, {\"id\": 4, \"date\": \"2023-03-14\", \"comment\": \"*the project is confirmed and done\"}]'),
(46, 45, '[{\"id\": 0, \"date\": \"2023-03-22\", \"comment\": \"*client asked an inquiry for shooting space via WS; CEO Room level 31-2, 31-3A and pantry level 31-1 \"}, {\"id\": 1, \"date\": \"2023-03-22\", \"comment\": \"*client need for half-day from 2pm-6pm;\"}, {\"id\": 2, \"date\": \"2023-03-22\", \"comment\": \"*client need a seperate pricing for CEO Room (31-2) & Pantry (31-1) and CEO Room (31-3A) & Pantry (31-1)\"}, {\"id\": 3, \"date\": \"2023-03-22\", \"comment\": \"*Mr Mehdi gave price: RM1,000 for both enquiry\"}, {\"id\": 4, \"date\": \"2023-03-22\", \"comment\": \"*client will update if they want come for a viewing \"}, {\"id\": 5, \"date\": \"2023-03-27\", \"comment\": \"*f/u on the updated (27/03); send the quotation to client via email and client asked the location of our office\"}, {\"id\": 6, \"date\": \"2023-04-03\", \"comment\": \"*f/u on the updated (03/04); they still waiting the update from their client and will update once confirm\"}, {\"id\": 7, \"date\": \"2023-04-14\", \"comment\": \"*f/u on the updated (14/04); the client unconfirm for their inquiry\"}]'),
(47, 46, '[{\"id\": 0, \"date\": \"2023-03-27\", \"comment\": \"*client asked an inquiry for inclination logo via WS \"}, {\"id\": 1, \"date\": \"2023-03-27\", \"comment\": \"*give the details to our person in charge to liaised with the client regarding their inquiry\"}, {\"id\": 2, \"date\": \"2023-03-28\", \"comment\": \"*f/u on the updated (28/03); give the price to client \"}, {\"id\": 3, \"date\": \"2023-04-05\", \"comment\": \"*f/u on the updated (05/04); no response from the client\"}]'),
(48, 47, '[{\"id\": 0, \"date\": \"2023-03-29\", \"comment\": \"*client asked an inquiry for site design their career page\"}, {\"id\": 1, \"date\": \"2023-03-29\", \"comment\": \"*client need their career page same like watson career page\"}, {\"id\": 2, \"date\": \"2023-03-29\", \"comment\": \"*send the client details to our person in charge\"}, {\"id\": 3, \"date\": \"2023-03-30\", \"comment\": \"*f/u on the updated (30/03); give the price to client\"}, {\"id\": 4, \"date\": \"2023-04-05\", \"comment\": \"*f/u on the updated (05/04); client will update once get the confirmation from the management\"}, {\"id\": 5, \"date\": \"2023-04-14\", \"comment\": \"*f/u on the updated  (14/04); no response\"}]'),
(49, 48, '[{\"id\": 0, \"date\": \"2023-03-30\", \"comment\": \"*client asked an inquiry for brochure design \"}, {\"id\": 1, \"date\": \"2023-03-30\", \"comment\": \"*client need in Bahasa Melayu brochure\"}, {\"id\": 2, \"date\": \"2023-03-30\", \"comment\": \"*send the quotation to clients next week \"}, {\"id\": 3, \"date\": \"2023-04-05\", \"comment\": \"*f/u on the updated (05/04); send the invoice to the client \"}, {\"id\": 4, \"date\": \"2023-04-06\", \"comment\": \"*f/u on the updated (06/04); waiting for client to made a payment \"}, {\"id\": 5, \"date\": \"2023-04-07\", \"comment\": \"*f/u on the updated (07/04); client made a payment \"}]'),
(50, 49, '[{\"id\": 0, \"date\": \"2023-03-31\", \"comment\": \"*client asked an inquiry for web design for page via Email and liaised thru WS and Phone Call ; About us, events, registration + payment gateway, membership\"}, {\"id\": 1, \"date\": \"2023-03-31\", \"comment\": \"*send the client details in inquiry group and mentioned the PIC\"}, {\"id\": 2, \"date\": \"2023-03-31\", \"comment\": \"*client need a quotation \"}, {\"id\": 3, \"date\": \"2023-03-31\", \"comment\": \"*f/u on the updated (31/03); send the quotation to the client via email \"}, {\"id\": 4, \"date\": \"2023-04-03\", \"comment\": \"*f/u on the update (03/04); client received the email and will update if they want proceed\"}, {\"id\": 5, \"date\": \"2023-04-06\", \"comment\": \"*f/u on the updated (06/04); client have choose the other company \"}]'),
(51, 69, '[{\"id\": 0, \"date\": \"2023-06-01\", \"comment\": \"- client asked an inquiry for video shooting at different locations such as Airports, and ports\"}, {\"id\": 1, \"date\": \"2023-06-01\", \"comment\": \"- client asked inquiry for 3 days shooting\"}, {\"id\": 2, \"date\": \"2023-06-02\", \"comment\": \"- Mr Ali send the quotation to client\"}, {\"id\": 3, \"date\": \"2023-07-05\", \"comment\": \"- f/u on the updated (05/07); based on the proposal, the client needs to have a meeting between team and their founder Prof Hisham to go through proposal together  \"}, {\"id\": 4, \"date\": \"2023-07-05\", \"comment\": \"- They are going to include your Corporate Video commercial proposal in their new budget list; they would like to have technical meeting with Mr Ali and Ms Diyana \"}]'),
(52, 68, '[{\"id\": 0, \"date\": \"2023-06-08\", \"comment\": \"- client asked for graphic design services for long-term collaboration\"}, {\"id\": 1, \"date\": \"2023-06-08\", \"comment\": \"- client need packages for visual design such as poster, brand promotion visual\"}, {\"id\": 2, \"date\": \"2023-06-08\", \"comment\": \"- client quote for price of doing 20 designs (poster design, promotion visual and so on) for 3-4 designs in a month in AI format\"}, {\"id\": 3, \"date\": \"2023-06-09\", \"comment\": \"- f/u on the updated (09/06); send the quotation to client \"}, {\"id\": 4, \"date\": \"2023-06-12\", \"comment\": \"- f/u on the updated (12/06); no response\"}, {\"id\": 5, \"date\": \"2023-06-13\", \"comment\": \"- f/u on the updated (13/06); client hire another designer\"}]'),
(53, 70, '[{\"id\": 0, \"date\": \"2023-06-12\", \"comment\": \"- client asked an inquiry for 2 videos via WhatsApp\"}, {\"id\": 1, \"date\": \"2023-06-12\", \"comment\": \"- client need 1 video with 2 talents for 6 minutes and 1 video with 1 talents for 4 minutes\"}, {\"id\": 2, \"date\": \"2023-06-12\", \"comment\": \"- they would like to have educational video to promote road safety campaign featuring professional motorbike racer\"}, {\"id\": 3, \"date\": \"2023-06-13\", \"comment\": \"- f/u on the updated (13/06); send 2 different quotation to the client via WS\"}, {\"id\": 4, \"date\": \"2023-06-13\", \"comment\": \"- first quotation based on their requirement and second quotation with extra shots for videos\"}, {\"id\": 5, \"date\": \"2023-06-14\", \"comment\": \"- f/u on the updated (14/06); client will update by next week\"}, {\"id\": 6, \"date\": \"2023-06-16\", \"comment\": \"- f/u on the updated (16/06); client asked a technical part and asked Mr Ali to liaised to them\"}, {\"id\": 7, \"date\": \"2023-06-19\", \"comment\": \"- f/u on the updated (19/06); client and dgtech production team having a meeting at Berjaya Sompo office at level 36\"}, {\"id\": 8, \"date\": \"2023-07-05\", \"comment\": \"- f/u on the updated (05/07); client found another production house\"}]'),
(54, 71, '[{\"id\": 0, \"date\": \"2023-06-17\", \"comment\": \"- client asked the rate for landing page and basic website via WS\"}, {\"id\": 1, \"date\": \"2023-06-17\", \"comment\": \"- we inform to them our landing price starting at RM3,000 but their budget only for RM2,000\"}, {\"id\": 2, \"date\": \"2023-06-19\", \"comment\": \"- f/u on the updated (19/06); they are looking for small business F&B website\"}, {\"id\": 3, \"date\": \"2023-06-20\", \"comment\": \"- f/u on the updated (20/06); asked for the sample but didn\'t reply and we share the example of F&B page that suite with their budget and not inclusive domain and hosting\"}, {\"id\": 4, \"date\": \"2023-06-20\", \"comment\": \"- f/u on the updated (20/06); the client mentioned don\'t have the updated from the team yet and they will decided once have the updated\"}, {\"id\": 5, \"date\": \"2023-06-21\", \"comment\": \"- f/u on the updated (21/06); the client asked how much we will charge for additional stock image and we inform to them we will give 10 complimentary stock image and for additional stock image they need to pay RM10/per stock image\"}, {\"id\": 6, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); client asked the price for domain and hosting, we mentioned that the price is RM800 annually\"}, {\"id\": 7, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); they will keep in touch once they decided\"}]'),
(55, 72, '[{\"id\": 0, \"date\": \"2023-06-20\", \"comment\": \"- client asked an inquiry for Web Introduction Video aka User Guide Video and they provide link youtube as reference to us\"}, {\"id\": 1, \"date\": \"2023-06-20\", \"comment\": \"- client provide full details for their inquiry and they need within 3 minutes video\"}, {\"id\": 2, \"date\": \"2023-06-20\", \"comment\": \"- the deadline of the project is on 30th June 2023\"}, {\"id\": 3, \"date\": \"2023-06-21\", \"comment\": \"- f/u on the updated (21/06); send the quotation to the client\"}, {\"id\": 4, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); asked for the updated inquiry and quotation but the client need to confirm with the boss and will update ASAP\"}, {\"id\": 5, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); no response\"}, {\"id\": 6, \"date\": \"2023-06-26\", \"comment\": \"- f/u on the updated (26/06); no response\"}, {\"id\": 7, \"date\": \"2023-06-28\", \"comment\": \"- f/u on the updated (28/06); no response \"}, {\"id\": 8, \"date\": \"2023-07-03\", \"comment\": \"- f/u on the updated (03/07); no response\"}]'),
(56, 73, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"- client email to us regarding their organization would like to have a convocation development on 4th November 2023\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"- client would like to have a quotation for this criteria; concept development, collateral adaption, microsite development. \"}, {\"id\": 2, \"date\": \"2023-06-21\", \"comment\": \"- the details for the quotation design; convo booklet A4 size (40 pages include cover & back), Convo guidebook (PDF & softcopy for students), Invitation card for vip, students and parents, backdrop design on stage (Physical), backdrop design on stage (Digital screen-right & left side), content design for digital screen, photo op design, banner/bunting design, instagram filters, EDM invite (for external and internal-email blast)\"}, {\"id\": 3, \"date\": \"2023-06-21\", \"comment\": \"- the details for printing of collaterals; convo booklet A4 size (40 pages include cover & back) - 250pcs; Invitation card for VIP (Include envelope) - 50pcs; Invitation card for students & parents (include envelope) - 200pcs\"}, {\"id\": 4, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); whatsapp the client regarding the budget and she mentioned the budget is RM33,000 including printing\"}, {\"id\": 5, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); the client provide details material for printing; Invitation card - Size 241mm(w) x 114mm(h); for VIP (hot stamped Finish); Material - shing card; Inclusive Envelope\"}, {\"id\": 6, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); for booklet printing; A4 Size; 40 pages; cover, back 260gsm art card; matt lamination; spot UV; Inner 128gsm art paper; Perfect Binding\"}, {\"id\": 7, \"date\": \"2023-06-22\", \"comment\": \"- the client mentioned for invitation card they are open suggestion/design from agency\"}, {\"id\": 8, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); send the quotation to the client via email\"}, {\"id\": 9, \"date\": \"2023-07-03\", \"comment\": \"- f/u on the updated (03/07); send the revised quotation for additional printing \"}, {\"id\": 10, \"date\": \"2023-07-04\", \"comment\": \"- f/u on the updated (04/07); send the revised quotation because client need the installation for the banner\"}, {\"id\": 11, \"date\": \"2023-07-07\", \"comment\": \"- f/u on the updated (06/07); we mention to the client that we have also photographer and videographer services; the client reply they would like to see the photos and videos that dgtech did for the client\"}]'),
(57, 74, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"- client asked an inquiry for website package via WS and the client share to us their website content\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"- liaised with the client thru phone call and the client need to change the logos, graphic, content by our side and they share the example website that they would prefer to change\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"- the client budget is only RM1500\"}, {\"id\": 3, \"date\": \"2023-06-22\", \"comment\": \"- f/u on the updated (22/06); send the revised quotation based on the website that they would like to have and the give price is including graphic, content and domain. The price is RM2,650\"}, {\"id\": 4, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); no response \"}, {\"id\": 5, \"date\": \"2023-06-26\", \"comment\": \"- f/u on the updated (26/06); no response\"}, {\"id\": 6, \"date\": \"2023-07-03\", \"comment\": \"- f/u on the updated (03/07); they already pass to their management, and if we are chosen to do this their team will call us\"}]'),
(58, 75, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"- client asked for backdrop design via phone call and we liaised via WS\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"- client mentioned it can be re-use on other property expo (might have to resize but still using same artwork)\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"- their budget is RM1000 per artwork (including amendments) and they need the working file upon artwork final delivery\"}, {\"id\": 3, \"date\": \"2023-06-22\", \"comment\": \"- their additional info: artwork will combine 2 +1 project in one design; 2 from 3 storey semi-detached house project, 1 high-rise condo project\"}, {\"id\": 4, \"date\": \"2023-06-22\", \"comment\": \"- they will provide to us project logo, company logo, project facade images and colour guildeline\"}, {\"id\": 5, \"date\": \"2023-06-22\", \"comment\": \"- send the quotation to the client and give price is RM901\"}, {\"id\": 6, \"date\": \"2023-06-22\", \"comment\": \"- the client called and mention to add more additional item regarding the size of the artwork\"}, {\"id\": 7, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (27/06); send the revised quotation to the client and mention to him; for artwork sizing artwork we don\'t charge anything unless the client would like to have a different design and after 4 times ammend\"}, {\"id\": 8, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); no response\"}, {\"id\": 9, \"date\": \"2023-07-27\", \"comment\": \"- f/u on the updated (27/06); send the second revised quotation; no response\"}, {\"id\": 10, \"date\": \"2023-07-03\", \"comment\": \"- f/u on the updated (03/07); the client mention all the quotation has been proposed to their boss\"}, {\"id\": 11, \"date\": \"2023-07-07\", \"comment\": \"- f/u on the updated (06/07); the client call and he asked to revised new quotation because they would like to have more artwork \"}]'),
(59, 76, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"- the client asked an inquiry for video production; the event will be on August at Sunway Pyramid for 5 hours; Grand opening event\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"- the client need grand opening event video; for 2 - 4 minutes video; the deadline within a week after grand opening event; their budget only for RM1,000\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"- the client share to use the link for example of the videos as reference\"}, {\"id\": 3, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); send the quotation to the client and given price RM10,000 the minimum price for video production\"}, {\"id\": 4, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); the client would like to have a look first and discuss with management\"}, {\"id\": 5, \"date\": \"2023-06-26\", \"comment\": \"- f/u on the updated (26/06); client still in discussion and will update if received the feedback\"}, {\"id\": 6, \"date\": \"2023-07-03\", \"comment\": \"- f/u on the updated (03/07); no response\"}, {\"id\": 7, \"date\": \"2023-07-06\", \"comment\": \"- f/u on the updated (06/07); no response\"}]'),
(60, 77, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"- client asked an inquiry for Poster design and packaging box design via email but client didn\'t provide the full details. \"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"- client would like to have for 4 poster design and 1 packaging box design; they will provide the photos for the product\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"- send the quotation to the client and the given price is RM2,120\"}, {\"id\": 3, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); the client asked to have a discussion on Tuesday (27/06/2023) at 3pm\"}, {\"id\": 4, \"date\": \"2023-06-27\", \"comment\": \"- f/u on the updated (27/06); have a meeting with the client on 3pm at TTDI\"}, {\"id\": 5, \"date\": \"2023-06-30\", \"comment\": \"- f/u on the updated (30/06); asked the client regarding the bunting poster for revise the quotation and the client mention they will try to send on Monday\"}, {\"id\": 6, \"date\": \"2023-06-22\", \"comment\": \"- client asked an inquiry for Poster design and packaging box design via email but client didn\'t provide the full details. \"}, {\"id\": 7, \"date\": \"2023-06-22\", \"comment\": \"- client would like to have for 4 poster design and 1 packaging box design; they will provide the photos for the product\"}, {\"id\": 8, \"date\": \"2023-06-22\", \"comment\": \"- send the quotation to the client and the given price is RM2,120\"}, {\"id\": 9, \"date\": \"2023-06-23\", \"comment\": \"- f/u on the updated (23/06); the client asked to have a discussion on Tuesday (27/06/2023) at 3pm\"}, {\"id\": 10, \"date\": \"2023-06-27\", \"comment\": \"- f/u on the updated (27/06); have a meeting with the client on 3pm at TTDI\"}, {\"id\": 11, \"date\": \"2023-06-30\", \"comment\": \"- f/u on the updated (30/06); asked the client regarding the bunting poster for revise the quotation and the client mention they will try to send on Monday\"}, {\"id\": 12, \"date\": \"2023-07-04\", \"comment\": \"- f/u on the updated (04/07); send the revised quotation to the client \"}, {\"id\": 13, \"date\": \"2023-07-05\", \"comment\": \"- f/u on the updated (05/07); the client mention still didn\'t received any update from the boss\"}]'),
(61, 78, '[{\"id\": 0, \"date\": \"2023-06-26\", \"comment\": \"- client asked an inquiry for logo design for mineral water 250ml\"}, {\"id\": 1, \"date\": \"2023-06-26\", \"comment\": \"- client would like to have a quotation for the inquiry\"}, {\"id\": 2, \"date\": \"2023-06-27\", \"comment\": \"- f/u on the updated (27/06); send the quotation to the client\"}, {\"id\": 3, \"date\": \"2023-06-28\", \"comment\": \"- f/u on the updated (28/06); no response\"}, {\"id\": 4, \"date\": \"2023-06-30\", \"comment\": \"- f/u on the updated (30/06); client mention they move forward to design with different company\"}]'),
(62, 79, '[{\"id\": 0, \"date\": \"2023-06-27\", \"comment\": \"- client asked an inquiry via phone call and liaised through ws\"}, {\"id\": 1, \"date\": \"2023-06-27\", \"comment\": \"- - client needs 1 leaflet and 1 bunting for business soft launch\"}, {\"id\": 2, \"date\": \"2023-06-27\", \"comment\": \"- f/u on the updated (27/06); asked the client the pages of the leaflet and the sizing for the bunting and leaflet; no response\"}, {\"id\": 3, \"date\": \"2023-06-28\", \"comment\": \"- f/u on the updated (28/06); the client mention they will design their own leaflet\"}]'),
(63, 80, '[{\"id\": 0, \"date\": \"2023-07-06\", \"comment\": \"- the client liaised through phone call and whatsapp; the client need a simple web design \"}, {\"id\": 1, \"date\": \"2023-07-06\", \"comment\": \"- the client mention to have a sample website that we do for the client; they would like to have a website in Malay language\"}, {\"id\": 2, \"date\": \"2023-07-06\", \"comment\": \"- Give the price to the client RM3000; they will get hosting and domain, template also\"}, {\"id\": 3, \"date\": \"2023-07-07\", \"comment\": \"- f/u on the updated (07/07); the client mention that their budget is RM1500\"}, {\"id\": 4, \"date\": \"2023-07-07\", \"comment\": \"- for RM1500 budget, the client will only get 1 landing page exclude the template, hosting and domain. \"}]'),
(64, 81, '[{\"id\": 0, \"date\": \"2023-07-10\", \"comment\": \"- client asked an inquiry for X-stand bunting and banner\"}, {\"id\": 1, \"date\": \"2023-07-10\", \"comment\": \"- design have and just need a printing side\"}, {\"id\": 2, \"date\": \"2023-07-11\", \"comment\": \"- send the quotation to the client; give RM100 discount off to the client; send revised quotation to the client\"}, {\"id\": 3, \"date\": \"2023-07-12\", \"comment\": \"- client mention she waiting for the PO from the management and will send to us once get the update; payment made after 14 days\"}, {\"id\": 4, \"date\": \"2023-07-18\", \"comment\": \"- f/u on the updated (18/07); send the details to the client details staff that will do for installation\"}, {\"id\": 5, \"date\": \"2023-07-21\", \"comment\": \"- f/u on the updated (21/07); done install the banner and bunting\"}, {\"id\": 6, \"date\": \"2023-07-20\", \"comment\": \"- f/u on the updated (20/07); received the PO\"}, {\"id\": 7, \"date\": \"2023-07-21\", \"comment\": \"- f/u on the updated (21/07); invoice send to the client after received the PO\"}]'),
(65, 82, '[{\"id\": 0, \"date\": \"2023-07-11\", \"comment\": \"- client need 4 to 5 pages for simple website; About us, contact us (have whatsapp button), Product and services and others\"}, {\"id\": 1, \"date\": \"2023-07-11\", \"comment\": \"- client didn\'t provide full details for prepare the quotation\"}]'),
(66, 83, '[{\"id\": 0, \"date\": \"2023-07-17\", \"comment\": \"- client would like have photo and video shooting for company team building\"}, {\"id\": 1, \"date\": \"2023-07-17\", \"comment\": \"- client need for 2 days and 1 night shooting\"}, {\"id\": 2, \"date\": \"2023-07-17\", \"comment\": \"- location: Beacon Resort | The date: November 2023 (Half-day)\"}, {\"id\": 3, \"date\": \"2023-07-18\", \"comment\": \"- f/u on the updated (18/07); send the quotation to the client via email and whatsapp\"}]');
INSERT INTO `mydgtech_tables_comments` (`comments_id`, `comments_inquiry_id`, `comments_comment`) VALUES
(67, 84, '[{\"id\": 0, \"date\": \"2023-07-14\", \"comment\": \"- client need design and copywriting for social media post, EDM, and blog articles\"}, {\"id\": 1, \"date\": \"2023-07-14\", \"comment\": \"- EDM and blog articles are for 3 months campaign\"}, {\"id\": 2, \"date\": \"2023-07-14\", \"comment\": \"- Need for 500 words per blog articles (3) and 350 words per EDM (3) and 50 - 70 words for social media posting\"}, {\"id\": 3, \"date\": \"2023-07-14\", \"comment\": \"- Revision for 3 times\"}, {\"id\": 4, \"date\": \"2023-07-14\", \"comment\": \"- They also asked for SEO, photography and videography\"}, {\"id\": 5, \"date\": \"2023-07-14\", \"comment\": \"- send the quotation to the client via email and whatsapp\"}, {\"id\": 6, \"date\": \"2023-07-17\", \"comment\": \"- f/u on the updated (17/07); mention that we send the quotation and the client need more time since she will be outstation\"}]'),
(68, 85, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"- client plan to make a small museum gallery area to introduce about gold and other related information\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"- the client would like to have an information board that have picture and words\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"- they also need a copywriting for the information board and maybe just give a keyword to us\"}, {\"id\": 3, \"date\": \"2023-07-20\", \"comment\": \"- f/u on the updated (20/07); send the  quotation to the client via email and whatsapp\"}]'),
(69, 86, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"- client would like to have a corporate website setup for skincare brand and branding consultation\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"- They would like to have 8 pages in total and never have a domain\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"- Share the skincare website that we do and give the starting price to the client\"}, {\"id\": 3, \"date\": \"2023-07-20\", \"comment\": \"- f/u on the updated (20/07); no response from the client\"}]'),
(70, 87, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"- client would like to have 30 pages for company report and he liaised through phone call\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"- send the brochure to the client and didn\'t reply\"}, {\"id\": 2, \"date\": \"2023-07-20\", \"comment\": \"- f/u on the updated (20/7); no response from the client\"}]'),
(71, 88, '[{\"id\": 0, \"date\": \"2023-07-19\", \"comment\": \"- client would like to have an advertisment on e-bulletin (non-animated), animated banner advertisement for the website, souvenier handbook, and recreated back the design for the company logo\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"- f/u on the updated (21/07); send the quotation to the client via email and whatsapp\"}, {\"id\": 2, \"date\": \"2023-07-24\", \"comment\": \"- f/u on the updated (24/07); the client mention can proceed but they only need design for Advertisement on e-bulletin. non-animated advertisement, Animated Banner Advertisement for the Website, and souvenir handbook   \"}, {\"id\": 3, \"date\": \"2023-07-24\", \"comment\": \"- f/u on the updated (24/07); send the revised quotation to the client \"}, {\"id\": 4, \"date\": \"2023-07-25\", \"comment\": \"- f/u on the updated (25/07); issued an invoice to the client \"}, {\"id\": 5, \"date\": \"2023-07-26\", \"comment\": \"- f/u on the updated (26/07); client made payment and send the receipt to finance email \"}]'),
(72, 89, '[{\"id\": 0, \"date\": \"2023-07-14\", \"comment\": \"- client would like to have a corporate video for their company\"}, {\"id\": 1, \"date\": \"2023-07-14\", \"comment\": \"- the location for the shooting will be at their office or factory\"}, {\"id\": 2, \"date\": \"2023-07-14\", \"comment\": \"- can start earlier and the deadline 20th August 2023\"}, {\"id\": 3, \"date\": \"2023-07-17\", \"comment\": \"- f/u on the updated (17/07); send the quotation to the client\"}, {\"id\": 4, \"date\": \"2023-07-17\", \"comment\": \"- They mention their budget is under RM5K\"}, {\"id\": 5, \"date\": \"2023-07-20\", \"comment\": \"- f/u on the updated (20/7); send the client the update starting price for video shooting\"}]'),
(73, 90, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"- client would like to develop a web design for his company that do for maintenance for elevator\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"- they would like to have a quotation for their inquiry and waiting for example website that we do\"}, {\"id\": 2, \"date\": \"2023-07-25\", \"comment\": \"- f/u on the updated (25/7); client mentioned he need 12-15 pages for the website and the content they will provide\"}, {\"id\": 3, \"date\": \"2023-07-26\", \"comment\": \"- f/u on the updated (26/7); send the quotation to the client via email \"}, {\"id\": 4, \"date\": \"2023-07-27\", \"comment\": \"- f/u on the updated (27/7); no response from the client\"}]'),
(74, 91, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"- the client would like to have a web designing and hosting services\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"- their company background is doing a logistic company\"}, {\"id\": 2, \"date\": \"2023-07-21\", \"comment\": \"- they would like to have Outline: Home, about us, our services, service page (4 page), project page (4 page), contact us\"}, {\"id\": 3, \"date\": \"2023-07-21\", \"comment\": \"- the client need a quotation for their inquiry and they don\'t have fix budget\"}]'),
(75, 92, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"- the client would like to have a commercial product video with talents and the talents is from our side; the product is smart fitness\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"- the duration of the videos not more than 3 minutes\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"- shooting location will be arrange by our production house\"}, {\"id\": 3, \"date\": \"2023-07-18\", \"comment\": \"- Their deadline project is 1st September 2023\"}, {\"id\": 4, \"date\": \"2023-07-21\", \"comment\": \"- f/u on the updated (21/07); send the proposal with the pricing via email\"}]'),
(76, 93, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"- the client would like to have the brochure and flyers for the A4 size\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"- They need a single booklet - 2-3 pages and both sides \"}, {\"id\": 2, \"date\": \"2023-07-21\", \"comment\": \"- client need a quotation for graphic and video production\"}, {\"id\": 3, \"date\": \"2023-07-21\", \"comment\": \"- client need for video production same like this example https://www.youtube.com/watch?v=pHrNc6K5HTo \"}, {\"id\": 4, \"date\": \"2023-07-21\", \"comment\": \"- more details need to asked Mr Ali\"}]'),
(77, 94, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"- client need a product video and photography\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"- the client mention they will launch a new product and will send the details to production email\"}, {\"id\": 2, \"date\": \"2023-07-25\", \"comment\": \"- f/u on the updated (25/7); update the client regarding the bounce email\"}, {\"id\": 3, \"date\": \"2023-07-25\", \"comment\": \"- f/u on the updated (25/7); the client will have a discussion with their team and will provide the details next Monday\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_customers`
--

DROP TABLE IF EXISTS `mydgtech_tables_customers`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_customers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `business` varchar(150) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_customers`
--

INSERT INTO `mydgtech_tables_customers` (`id`, `name`, `position`, `email`, `address`, `phone`, `company`, `business`, `size`, `created`) VALUES
(10, 'Mr Jaya', '', '-', '', '+60 12 310 4360', 'Independent Work', '', '', '2023-04-20 13:45:40'),
(7, 'Mr Sam Pau', '', 'info@scnme.com', '', '+60 12 786 669', 'SCNM', '', '', '2023-04-20 13:08:58'),
(8, 'Dr Soo Ivon', '', 'ivn_soo@yahoo.com', '', '+60 12 550 7981', 'Cell Genesis Sdn Bhd', '', '', '2023-04-20 13:12:25'),
(9, 'Ms Cece', '', '-', '', '+60 19 590 3439', 'BBP Global', '', '', '2023-04-20 13:40:32'),
(11, 'Mr Samuel', '', '-', '', '+60 17 312 5975', 'Kuala Lumpur Clinical Psychologist', '', '', '2023-04-20 13:49:05'),
(12, 'Ms Becca', '', '-', '', '+60', 'XFACTOR EVENTS', '', '', '2023-04-20 13:53:54'),
(13, 'Ms Ginny', '', 'kahyansong@gmail.com', '', '+60 12 965 7213', 'Shiroku Production', '', '', '2023-04-27 10:43:43'),
(14, 'Ms Jinyi / Ms Yun', '', 'yun.chen@joyglob.com', '', '+60 17 662 3198', 'Joy Glob', '', '', '2023-04-27 10:44:58'),
(15, 'Ms Aisha', '', '-', '', '+60 16 311 3651', '', '', '', '2023-04-27 10:45:30'),
(16, 'Mr Luqman', '', '-', '', '+60 12 294 1981', 'PERKIM', '', '', '2023-04-27 10:46:21'),
(17, 'Ms Rozie', '', '-', '', '+60 11 2113 9987', 'RJNB Services', '', '', '2023-04-27 10:46:59'),
(18, 'Mr Firdaus', '', '-', '', '+60 11 6983 2671', 'QR Global Group', '', '', '2023-04-27 10:48:07'),
(34, 'Mr Aizat', '', 'admin@ehsanproperty.com', '', '+60 16 231 6649', 'Ehsan Plant & Property Sdn Bhd', '', '', '2023-04-28 09:12:42'),
(33, 'Ms Lim', '', 'g.limyiqing@gmail.com', '', '+60 18 473 418', 'Clartsy', '', '', '2023-04-28 09:11:45'),
(32, 'Mr Asia', '', 'asiaomary891@gmail.com', '', '+60 11 5143 057', 'Glowup Product', '', '', '2023-04-28 09:10:59'),
(23, 'Mr Ammar', '', 'ammarshukri@twitterjaya.my', '', '+60 13 312 0939', 'Twitterjaya Sdn Bhd', '', '', '2023-04-27 11:00:05'),
(24, 'Ms Amanda', '', '-', '', '+60 16 236 0209', 'Cxpturing Soul Studios', '', '', '2023-04-27 11:00:58'),
(25, 'Mr Asyraf', '', '-', '', '+60 12 850 4118', 'EXS Synergy', '', '', '2023-04-27 11:01:26'),
(26, 'Ms Intan Ilyani', '', '-', '', '+60', 'JCORP', '', '', '2023-04-27 11:02:26'),
(27, 'Martini Bacardi', '', '-', '', '+60', 'Martini Bacardi', '', '', '2023-04-27 11:03:00'),
(28, 'Ms Kimberly ', '', 'kimberly.lam@ambition.com.my', '', '+60 16 696 3267', 'Ambition Malaysia', '', '', '2023-04-27 11:03:47'),
(31, 'Mr Biu Tang', '', '-', '', '+60 19 605 1418', 'VVIP Agency', '', '', '2023-04-27 15:16:49'),
(35, 'Mr Jun', '', 'jun.w@cretopia.asia', '', '+60 11 3901 7377', 'Cretopia Asia', '', '', '2023-04-28 09:13:35'),
(36, 'Ms Marianne', '', 'marianne@excimed.com', '', '+60 18 328 4996', 'ExciMed Malaysia', '', '', '2023-04-28 11:08:32'),
(37, 'Ms Diba', '', 'orangtvproduction@gmail.com', '', '+60 11 3711 7355', 'Orang TV Production', '', '', '2023-04-28 11:09:18'),
(38, 'Mr Shiva', '', '-', '', '+60 14 387 8826', 'Kubera 3D Floor Construction', '', '', '2023-04-28 11:09:58'),
(39, 'Mr Qin', '', '-', '', '+60 12 394 6138', 'GSC', '', '', '2023-04-28 11:10:27'),
(40, 'Dr Schzanne', '', 'drschzanne@gmail.com', '', '+60 12 337 6495', 'The SmileDent Academy', '', '', '2023-04-28 11:11:10'),
(41, 'Ms Deana', '', '-', '', '+60 11 3331 9242', 'Podcreative Office', '', '', '2023-04-28 11:44:49'),
(42, 'Spectra Group', '', '-', '', '+60', 'Spectra Group', '', '', '2023-04-28 11:46:04'),
(43, 'Mr Prem Kumar', '', '-', '', '+60 19 536 8710', '-', '', '', '2023-04-28 11:46:37'),
(44, 'Mr Khoo', '', 'koorealfast@gmail.com', '', '+60 16 678 8663', 'VE Production', '', '', '2023-04-28 11:47:24'),
(45, 'Ms Rinisha', '', 'v.rinishadv@gmail.com', '', '+60 18 320 1926', 'Ambali Clothing', '', '', '2023-04-28 11:50:46'),
(46, 'Ms Victoria', '', 'victoriaeydna@gmail.com', '', '+60 17 514 4541', 'Dissy Sdn Bhd', '', '', '2023-04-28 11:51:30'),
(47, 'Ms May', '', 'acc@evergreenbinary.com.my', '', '+60 16 332 2665', 'Evergreen Binary Sdn Bhd', '', '', '2023-04-28 11:52:56'),
(48, 'Ms Jessica', '', 'jessicayong77@gmail.com', '', '+60 17 775 5172', 'TK Digitize', '', '', '2023-04-28 11:53:44'),
(49, 'Mr Fahmi', '', 'fahmi@sae-malaysia.com', '', '+60 16 735 1892', 'SAE Malaysia Sdn Bhd', '', '', '2023-04-28 11:56:50'),
(50, 'Ms Jeslyn', '', 'jeslyn.kim@korupharma.com', '', '+60 12 399 4791', 'Koru Global', '', '', '2023-04-28 11:58:26'),
(51, 'Mr Zul', '', 'zulledward.work@gmail.com', '', '+60 17 247 3478', 'Filmscape Sdn Bhd', '', '', '2023-04-28 11:59:10'),
(52, 'Mr Arif', '', 'arif.ahmad@gamaluxoils.com.my', '', '+60 17 799 1032', 'Gamalux Oils Sdn Bhd', '', '', '2023-05-05 10:49:34'),
(53, 'Ms Syazmeera', '', 'syazzsham@gmail.com', '', '+60 16 322 5038', 'Red Communications Sdn Bhd', '', '', '2023-05-09 12:13:19'),
(54, 'Ms Zoey', '', 'zoey@puremed.com.my', '', '+60 18 366 6811', 'PureMedisciences Sdn Bhd', '', '', '2023-05-11 17:31:45'),
(55, 'Mr Nash', '', 'nashrur7@gmail.com', '', '+60 16 242 7613', 'Creative Stew Sdn Bhd', '', '', '2023-05-15 15:27:50'),
(56, 'Ms Fifa', '', 'a.hafifah@yahoo.com', '', '+60 18 949 0819', 'Kyros Food Industries Sdn Bhd', '', '', '2023-05-19 16:57:19'),
(57, 'Ms Zhiqing', '', 'zhiqing.xyb2b@gmail.com', '', '+60 17 369 8632', 'Tian Xing Cloud Supply Chain (Malaysia) Sdn Bhd', '', '', '2023-06-09 12:45:16'),
(58, 'Euro-Circuit', '', '-', '', '+60', 'Euro-Circuit Technology Sdn Bhd', '', '', '2023-06-09 16:57:16'),
(59, 'Ms Chai', '', '-', '', '+60 12 810 2526', 'Berjaya Sompo Insurance Berhad', '', '', '2023-06-13 15:45:49'),
(60, 'Ms Anis', '', '-', '', '+60 17 675 4277', '', '', '', '2023-06-21 11:24:48'),
(61, 'Ms Yvonne', '', 'justsuccess111@gmail.com', '', '+60 16 663 7899', 'Just Success Consortium Sdn Bhd', '', '', '2023-06-21 11:25:59'),
(62, 'Mr Chloe', '', '-', '', '+60 16 285 0212', 'Hycopower', '', '', '2023-06-21 11:26:28'),
(63, 'Ms Normas', '', 'normas@incief.org', '', '+60 10 246 5987', 'INCEIF University', '', '', '2023-06-21 11:28:28'),
(64, 'Mr Adrian', '', 'adrian@zicom.my', '', '+60 12 668 6410', 'ZICOM TECHNOLOGIES', '', '', '2023-06-23 11:11:10'),
(65, 'Mr Zaki', '', 'mk.mktgteam@gmail.com', '', '+60 11 6530 5005', 'Saujana Triangle Sdn Bhd', '', '', '2023-06-23 11:12:22'),
(66, 'Ms Vernis', '', 'vernis@yw-group.biz', '', '+60 11 1077 9271', 'Wang Synergy Group Sdn Bhd', '', '', '2023-06-23 11:13:38'),
(67, 'Ms Mei Hui', '', 'lowmh@sunten.com.my', '', '+60 12 627 8899', 'Sun Aten Pharmaceutical', '', '', '2023-06-23 11:15:12'),
(68, 'Ms Farhana', '', 'farhanashukor313@gmail.com', '', '+60 14 226 0843', 'InstaDuit', '', '', '2023-07-03 12:15:59'),
(69, 'Mr Victor', '', 'victorlim@wisrdigital.com.my', '', '+60 17 354 1218', 'Wisr Digital Computing Sdn Bhd', 'Consultancy Business', '', '2023-07-03 12:17:26'),
(70, 'Mr Asyraf', '', '-', '', '+60 17 597 0001', 'Smart Education Training Center', '', '', '2023-07-07 11:24:14'),
(71, 'Mr Lokesh', '', '-', '', '+60 17 362 8585', 'TSG Trading Sdn Bhd', '', '', '2023-07-10 15:39:07'),
(72, 'Ms Jia Yung', '', 'kuala-lumpur@ecovis.com.my', '', '+60 18 791 4200', 'Ecovis Malaysia', '', '', '2023-07-17 13:44:04'),
(73, 'Ms Rachel', '', 'rachelthye@my.com', '', '+60 12 796 8092', 'Imbue Concept', '', '', '2023-07-17 13:45:39'),
(74, 'Mr Somesh', '', 'somesh@pmcopper.com', '', '+60 11 2556 5344', 'PM Copper', '', '', '2023-07-17 13:47:27'),
(75, 'Mr Zi Xuan', '', '04.zx.work@gmail.com', '', '+60 14 309 2632', 'Sin Ter May Sdn Bhd', '', '', '2023-07-21 14:04:48'),
(76, 'Ms Veron', '', '-', '', '+60 12 619 1267', '', '', '', '2023-07-21 14:05:45'),
(77, 'Mr Mohd', '', '-', '', '+60 14 513 6822', '', '', '', '2023-07-21 14:06:31'),
(78, 'Ms Stacey', '', '-', '', '+60 10 766 7066', 'Smart Fitness X', '', '', '2023-07-21 14:07:47'),
(79, 'Mr Sihan', '', 'mastermind@gmail.com', '', '+60 11 1888 9597', 'Elevator', '', '', '2023-07-21 14:08:39'),
(80, 'Mr Harival', '', 'harihari564@gmail.com', '', '+60 18 246 4816', 'PMS Trans Sdn Bhd', '', '', '2023-07-21 14:47:53'),
(81, 'Ms Stacey', '', 'staceyooi@cosway.com.my', '', '+60 10 766 7066', 'COSWAY ', '', '', '2023-07-21 17:36:03'),
(82, 'Ms Rowda', '', 'reyusuf@naue.com', '', '+60 12 374 9581', 'Naue Asia Sdn Bhd', '', '', '2023-07-21 17:36:47'),
(83, 'Mr Faris', '', '-', '', '+60 12 537 3435', 'DRL Sdn Bhd', '', '', '2023-07-21 17:50:09'),
(84, 'Ms Nurul', '', 'nurul.z@srntech.net', '', '+60 14 220 9695', 'SRNTECH Solution Sdn Bhd', '', '', '2023-07-28 09:36:15'),
(85, 'Mr Suhayb', '', '-', '', '+60 11 6431 7973', 'Mamma Africa Restaurant ', '', '', '2023-07-28 09:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_design`
--

DROP TABLE IF EXISTS `mydgtech_tables_design`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_design` (
  `design_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `design_inquiry_id` varchar(50) NOT NULL,
  `design_type` json NOT NULL,
  `design_size` varchar(50) NOT NULL,
  `design_theme` varchar(150) NOT NULL,
  `design_content` json NOT NULL,
  `design_remark` varchar(500) DEFAULT NULL,
  `design_budget` decimal(10,2) NOT NULL,
  `design_due` date NOT NULL,
  PRIMARY KEY (`design_id`),
  KEY `design_inquiry_id` (`design_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_design`
--

INSERT INTO `mydgtech_tables_design` (`design_id`, `design_inquiry_id`, `design_type`, `design_size`, `design_theme`, `design_content`, `design_remark`, `design_budget`, `design_due`) VALUES
(3, '7', '[\"Banner Design\"]', '3.6m x 4m &  5.2m x 3m', '-', '[\"Text\", \"Image\"]', '- Client needs an advertisement board design with different size \n- Client made a full payment on 12 January 2023', '742.00', '2023-01-19'),
(4, '8', '[\"Banner Design\"]', '-', 'Baby Expo', '[\"Text\", \"Image\"]', '- Client asked an inquiry for banner design for baby expo via WS\n- Client made full payment on 12/01/2023', '212.00', '2023-01-19'),
(5, '17', '[\"Logo Design\", \"Business Card Design\", \"Letterhead Design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for graphic design via WS\n*client needs company logo, company business card, and company letterhead\n*f/u on the updated; already give the client details to our PIC\n*f/u on the updated; client is not interested and their budget only RM150', '0.00', '2023-02-08'),
(6, '20', '[\"Logo Design\", \"Business Card Design\", \"Company Profile\", \"Flyers Design\", \"Poster Design\", \"Social Media Design\"]', '-', '-', '[\"Text\", \"Image\"]', '', '0.00', '2023-02-27'),
(7, '26', '[\"Brochure Design\", \"Bunting Design\"]', 'A4', '-', '[\"Text\", \"Image\"]', '', '500.00', '2023-04-28'),
(8, '30', '[\"Packaging Design: labels, boxes, and bags\"]', '0', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for graphic design via email\n*Give the client details to our PIC and in inquiry group\n*f/u on the updated (13/02); client need for packaging design for their product but they didn\'t give the full details', '0.00', '2023-04-28'),
(9, '31', '[\"Packaging Design: labels, boxes, and bags\"]', '-', '-', '[\"Text\", \"Image\"]', 'client need for packaging design for their product but they didn\'t give the full details', '0.00', '2023-02-09'),
(10, '32', '[\"Logo Design\", \"Business Card Design\", \"Company Profile\", \"Flyers Design\", \"Poster Design\", \"Social Media Design\"]', '-', '-', '[\"Text\", \"Image\"]', '- client need the price for logo, business card, company profile, poster and flyer design & social media marketing (IG and FB)\n- send the quotation to the client via email on 13/02\n- f/u on the updated (27/02); asked the client regarding the quotation given whether they are still interested or not but still didn\'t get any feedback', '0.00', '2023-02-27'),
(11, '37', '[\"Brochure Design\"]', '-', '-', '[\"Text\", \"Image\"]', '- client asked an inquiry for brochure design related to oil and gas industrial via WS', '0.00', '2023-02-21'),
(12, '43', '[\"Brochure Design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for brochure design (fold brochure)\n*client need 10 pages brochure\n*one week duration \n*give the quotation to client on (07/03) and the price RM1,000\n*f/u on the updated (10/03); the client asked to send invoice', '1000.00', '2023-03-17'),
(13, '46', '[\"Logo Design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for inclination logo via Whatsapp\n*f/u on the updated (05/04); no response from the client', '0.00', '2023-04-05'),
(14, '47', '[\"Advertising design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for site design their career page\n*client need their career page same like watson career page\n*f/u on the updated (05/04); client will update once get the confirmation from the management \n*f/u on the updated  (14/04); no response', '0.00', '2023-04-14'),
(15, '48', '[\"Brochure Design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for brochure design \n*client need in Bahasa Melayu brochure\n*f/u on the updated (05/04); send the invoice to the client \n*f/u on the updated (06/04); waiting for client to made a payment \n*f/u on the updated (07/04); client made  a payment ', '265.00', '2023-04-14'),
(16, '50', '[\"Social Media Design\"]', '-', '-', '[\"Text\", \"Image\"]', '- the client asked an inquiry for handling their social media platform via WS\n- their concern would be on generating more sales in specific location which are Cyberjaya and Klang Valley\n-  client need a graphic design for social media platform and need a copywriting /content writing for their social platform but we don\'t provide the services for handling social media platform ', '0.00', '2023-04-10'),
(17, '59', '[\"Brochure Design\"]', '-', '-', '[\"Text\", \"Image\"]', '*client asked an inquiry for company brochure via whatsapp on 23/04 and liaised with the client on 25/04\n*send the details to our PIC \n*they would like to have 11 pages of the brochure\n*we give the price RM80/per page but their budget only RM300 for the 11 pages \n*client not proceed because it exceed their budget', '932.80', '2023-04-25'),
(18, '65', '[\"Poster Design\", \"Infographic Desgin\", \"Banner Design\"]', 'Elongated style', '-', '[\"Text\", \"Image\"]', '- client asked an inquiry via email and liaised via email and whatsapp \n- f/u on the updated (10/5); client provide all the details that we need \n- client mention to have an infographic poster, SIS Banner, landing page, long poster with additional 3-4 thumbnail image and there are 20 products\n- client want to have a quotation for their inquiry and we done share our graphic design portfolio', '0.00', '2023-05-12'),
(19, '67', '[\"Logo Design\"]', 'not mentioned but send photos and seems like sente', 'not mentioned', '[\"Text\"]', '- Client asked an inquiry for logo design via WS\n- Client nature of business is food industries and they would like to have a logo that contain text ', '0.00', '2023-05-19'),
(20, '68', '[\"Advertising design\", \"Poster Design\"]', 'not mention', 'not mention', '[\"Text\", \"Image\"]', '- client asked for graphic design services for long-term collaboration\n- client need packages for visual design such as poster, brand promotion visual\n- client quote for price of doing 20 designs (poster design, promotion visual and so on) for 3-4 designs in a month in AI Format', '0.00', '2023-06-09'),
(21, '73', '[\"Advertising design\", \"Printing Material\", \"Banner Design\", \"Bunting Design\"]', 'Details in remarks', 'Convocation Day', '[\"Text\", \"Image\"]', '- client needs convo booklet (A4 size), guidebook (PDF), Invitation card for VIP, students and parents, backdrop design (physical and digital), content design, photo op, banner/bunting, instagram filters, EDM invite, 2 print ads. \n- client needs for printing too; convo booklet (250pcs), Invitation card VIP (50pcs) and Invitation card for students and parents (200pcs) with envelope', '33000.00', '2023-06-30'),
(22, '75', '[\"Banner Design\", \"Bunting Design\"]', '1990H x 1540w', 'Property Expo', '[\"Text\", \"Image\"]', '- client asked for backdrop design via phone call and we liaised via WS\n- client mentioned it can be re-use on other property expo (might have to resize but still using same artwork)\n- additional info from the client:\n1. Artwork will combine 2 + 1 project in one design\n2. 2 from 3-storey semi-detached house project, 1 high-rise condo project.\n- the client will provide project logo, company logo, facade images project and colour guidelines. \n- We give the price to the client still in their budget', '1000.00', '2023-06-30'),
(23, '77', '[\"Poster Design\", \"Packaging Design: labels, boxes, and bags\"]', 'To be discuss', 'Pharmaceutical Product', '[\"Text\", \"Image\"]', '- client would like to have 4 Poster design and 1 packaging box design \n- they will provide us their product photos.\n- to be discuss more on Tuesday (27.06.2023) \n', '2120.00', '2023-06-30'),
(24, '78', '[\"Logo Design\"]', '-', 'Mineral Water for 250ml', '[\"Text\", \"Image\"]', '- client asked an inquiry for logo design for mineral water 250ml\n- client would like to have a quotation\n- f/u on the updated (27/06); send the quotation to the client \n- f/u on the updated (30/06); client mention they move forward to design with different company', '901.00', '2023-06-30'),
(25, '79', '[\"Bunting Design\", \"Brochure Design\", \"Printing Material\", \"Infographic Desgin\"]', '-', '-', '[\"Text\", \"Image\"]', '- client asked an inquiry via phone call and liaised through ws\n- client needs 1 leaflet and 1 bunting for business soft launch\n- f/u on the updated (27/06); asked the client the pages of the leaflet and the sizing for the bunting and leaflet; no response\n- f/u on the updated (28/06); the client mention they will design their own leaflet', '0.00', '2023-06-30'),
(26, '81', '[\"Banner Design\", \"Bunting Design\"]', 'X-stand: 24ft x 6ft | Bridge: 24ft x 5ft | Pole to', '-', '[\"Text\", \"Image\"]', '- client asked an inquiry for X-stand bunting and banner\n- design have and just need a printing side \n- send the quotation to the client; give RM100 discount off to the client; send revised quotation to the client \n- client is waiting for the PO and the payment will be made after 14 days ', '4028.00', '2023-07-28'),
(27, '85', '[\"Infographic Desgin\"]', '1000mm x 2000mm', '-', '[\"Text\", \"Image\"]', '- client plan to make a small museum gallery area to introduce about gold and other related information\n- the client would like to have an information board that have picture and words \n- they also need a copywriting for the information board and maybe just give a keyword to us ', '2120.00', '2023-08-01'),
(28, '87', '[\"Printing Material\", \"Company Profile\"]', 'A4 size', '-', '[\"Text\", \"Image\"]', '- client would like to have 30 pages for company report and he liaised through phone call\n- send the brochure to the client and didn\'t reply', '0.00', '2023-08-01'),
(29, '88', '[\"Advertising design\", \"Banner Design\", \"Logo Design\", \"Infographic Desgin\", \"Printing Material\"]', '178px X 178px (Advertisement on e-bulletin) | 228p', '-', '[\"Image\", \"Text\"]', 'client would like to have an advertisment on e-bulletin (non-animated), animated banner advertisement for the website, souvenier handbook, and recreated back the design for the company logo\n- f/u on the updated (21/07); send the quotation to the client via email and whatsapp ', '2438.00', '2023-08-31'),
(30, '93', '[\"Flyers Design\"]', 'A4 Size', '-', '[\"Text\", \"Image\"]', '- the client would like to have the brochure and flyers for the A4 size\n- They need a single booklet - 2-3 pages and both sides \n- client need a quotation', '0.00', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_inquiries`
--

DROP TABLE IF EXISTS `mydgtech_tables_inquiries`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_inquiries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `inquiry_id` varchar(50) NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date` datetime NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inquiry_id` (`inquiry_id`),
  KEY `customer_id` (`customer_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_inquiries`
--

INSERT INTO `mydgtech_tables_inquiries` (`id`, `inquiry_id`, `customer_id`, `user_id`, `status`, `date`, `created`) VALUES
(5, 'INQ20230420121143', 6, 9, 'pending', '2023-04-20 00:00:00', '2023-04-20 12:11:43'),
(6, 'INQ20230103011022', 7, 9, 'pending', '2023-01-03 00:00:00', '2023-04-20 13:10:22'),
(7, 'INQ20230107011731', 8, 9, 'approved', '2023-01-07 00:00:00', '2023-04-20 13:17:31'),
(8, 'INQ20230110012919', 8, 9, 'approved', '2023-01-10 00:00:00', '2023-04-20 13:29:19'),
(10, 'INQ20230120014818', 10, 9, 'rejected', '2023-01-20 00:00:00', '2023-04-20 13:48:18'),
(11, 'INQ20230120015243', 11, 9, 'approved', '2023-01-20 00:00:00', '2023-04-20 13:52:43'),
(12, 'INQ20230125015737', 12, 9, 'approved', '2023-01-25 00:00:00', '2023-04-20 13:57:37'),
(13, 'INQ20230202110732', 13, 9, 'rejected', '2023-02-02 00:00:00', '2023-04-27 11:07:32'),
(14, 'INQ20230203111005', 14, 9, 'rejected', '2023-02-03 00:00:00', '2023-04-27 11:10:05'),
(15, 'INQ20230203111831', 15, 9, 'rejected', '2023-02-03 00:00:00', '2023-04-27 11:18:31'),
(16, 'INQ20230203112214', 16, 9, 'approved', '2023-02-03 00:00:00', '2023-04-27 11:22:14'),
(17, 'INQ20230207112900', 17, 9, 'rejected', '2023-02-07 00:00:00', '2023-04-27 11:29:00'),
(18, 'INQ20230207113145', 18, 9, 'rejected', '2023-02-07 00:00:00', '2023-04-27 11:31:45'),
(19, 'INQ20230209113446', 19, 9, 'pending', '2023-02-09 00:00:00', '2023-04-27 11:34:46'),
(20, 'INQ20230213023224', 20, 9, 'pending', '2023-02-13 00:00:00', '2023-04-27 14:32:24'),
(21, 'INQ20230209024413', 29, 9, 'pending', '2023-02-09 00:00:00', '2023-04-27 14:44:13'),
(22, 'INQ20230213024915', 30, 9, 'pending', '2023-02-13 00:00:00', '2023-04-27 14:49:15'),
(23, 'INQ20230215025151', 21, 9, 'pending', '2023-02-15 00:00:00', '2023-04-27 14:51:51'),
(24, 'INQ20230216025513', 22, 9, 'pending', '2023-02-16 00:00:00', '2023-04-27 14:55:13'),
(62, 'INQ20230119024101', 9, 9, 'approved', '2023-01-19 00:00:00', '2023-04-28 14:41:01'),
(32, 'INQ20230209101411', 33, 9, 'rejected', '2023-02-09 00:00:00', '2023-04-28 10:14:11'),
(63, 'INQ20230505110328', 52, 9, 'pending', '2023-05-05 00:00:00', '2023-05-05 11:03:28'),
(31, 'INQ20230209100937', 32, 9, 'rejected', '2023-02-09 00:00:00', '2023-04-28 10:09:37'),
(33, 'INQ20230215101724', 34, 9, 'rejected', '2023-02-15 00:00:00', '2023-04-28 10:17:24'),
(34, 'INQ20230216102015', 35, 9, 'rejected', '2023-02-16 00:00:00', '2023-04-28 10:20:15'),
(35, 'INQ20230220103640', 23, 9, 'rejected', '2023-02-20 00:00:00', '2023-04-28 10:36:40'),
(36, 'INQ20230220103853', 24, 9, 'rejected', '2023-02-20 00:00:00', '2023-04-28 10:38:53'),
(37, 'INQ20230221104545', 25, 9, 'pending', '2023-02-21 00:00:00', '2023-04-28 10:45:45'),
(38, 'INQ20230221105739', 26, 9, 'approved', '2023-02-21 00:00:00', '2023-04-28 10:57:39'),
(39, 'INQ20230222110232', 27, 9, 'pending', '2023-02-22 00:00:00', '2023-04-28 11:02:32'),
(40, 'INQ20230228110607', 28, 9, 'rejected', '2023-02-28 00:00:00', '2023-04-28 11:06:07'),
(41, 'INQ20230301111307', 31, 9, 'rejected', '2023-03-01 00:00:00', '2023-04-28 11:13:07'),
(42, 'INQ20230302111607', 36, 9, 'rejected', '2023-03-02 00:00:00', '2023-04-28 11:16:07'),
(43, 'INQ20230307111846', 8, 9, 'approved', '2023-03-07 00:00:00', '2023-04-28 11:18:46'),
(44, 'INQ20230313112021', 26, 9, 'approved', '2023-03-13 00:00:00', '2023-04-28 11:20:21'),
(45, 'INQ20230322112552', 37, 9, 'rejected', '2023-03-22 00:00:00', '2023-04-28 11:25:52'),
(46, 'INQ20230327113524', 38, 9, 'rejected', '2023-03-27 00:00:00', '2023-04-28 11:35:24'),
(47, 'INQ20230329113753', 39, 9, 'rejected', '2023-03-29 00:00:00', '2023-04-28 11:37:53'),
(48, 'INQ20230330113957', 8, 9, 'approved', '2023-03-30 00:00:00', '2023-04-28 11:39:57'),
(49, 'INQ20230331114235', 40, 9, 'rejected', '2023-03-31 00:00:00', '2023-04-28 11:42:35'),
(50, 'INQ20230410121744', 41, 9, 'rejected', '2023-04-10 00:00:00', '2023-04-28 12:17:44'),
(52, 'INQ20230411122026', 42, 9, 'pending', '2023-04-11 00:00:00', '2023-04-28 12:20:26'),
(53, 'INQ20230412122147', 43, 9, 'rejected', '2023-04-12 00:00:00', '2023-04-28 12:21:47'),
(54, 'INQ20230412122743', 44, 9, 'rejected', '2023-04-12 00:00:00', '2023-04-28 12:27:43'),
(55, 'INQ20230413122925', 45, 9, 'rejected', '2023-04-13 00:00:00', '2023-04-28 12:29:25'),
(56, 'INQ20230413124420', 46, 9, 'rejected', '2023-04-13 00:00:00', '2023-04-28 12:44:20'),
(57, 'INQ20230418124907', 47, 9, 'rejected', '2023-04-18 00:00:00', '2023-04-28 12:49:07'),
(58, 'INQ20230420125537', 48, 9, 'rejected', '2023-04-20 00:00:00', '2023-04-28 12:55:37'),
(59, 'INQ20230425021053', 49, 9, 'rejected', '2023-04-25 00:00:00', '2023-04-28 14:10:53'),
(60, 'INQ20230426021258', 50, 9, 'rejected', '2023-04-26 00:00:00', '2023-04-28 14:12:58'),
(61, 'INQ20230426023430', 51, 9, 'rejected', '2023-04-26 00:00:00', '2023-04-28 14:34:30'),
(64, 'INQ20230508121829', 53, 9, 'rejected', '2023-05-08 00:00:00', '2023-05-09 12:18:29'),
(65, 'INQ20230510093558', 54, 9, 'rejected', '2023-05-10 00:00:00', '2023-05-12 09:35:58'),
(66, 'INQ20230515045238', 55, 9, 'rejected', '2023-05-15 00:00:00', '2023-05-19 16:52:38'),
(67, 'INQ20230515050219', 56, 9, 'rejected', '2023-05-15 00:00:00', '2023-05-19 17:02:19'),
(68, 'INQ20230609030647', 57, 9, 'rejected', '2023-06-09 00:00:00', '2023-06-09 15:06:47'),
(69, 'INQ20230601051930', 58, 9, 'pending', '2023-06-01 00:00:00', '2023-06-09 17:19:30'),
(70, 'INQ20230612041449', 59, 9, 'rejected', '2023-06-12 00:00:00', '2023-06-16 16:14:49'),
(71, 'INQ20230617112252', 60, 9, 'pending', '2023-06-17 00:00:00', '2023-06-23 11:22:52'),
(72, 'INQ20230620113321', 61, 9, 'pending', '2023-06-20 00:00:00', '2023-06-23 11:33:21'),
(73, 'INQ20230621114156', 63, 9, 'pending', '2023-06-21 00:00:00', '2023-06-23 11:41:56'),
(74, 'INQ20230622115324', 64, 9, 'rejected', '2023-06-22 00:00:00', '2023-06-23 11:53:24'),
(75, 'INQ20230622121338', 65, 9, 'pending', '2023-06-22 00:00:00', '2023-06-23 12:13:38'),
(76, 'INQ20230622123919', 66, 9, 'rejected', '2023-06-22 00:00:00', '2023-06-23 12:39:19'),
(77, 'INQ20230622124433', 67, 9, 'pending', '2023-06-22 00:00:00', '2023-06-23 12:44:33'),
(78, 'INQ20230626122443', 68, 9, 'rejected', '2023-06-26 00:00:00', '2023-07-03 12:24:43'),
(79, 'INQ20230627123413', 69, 9, 'rejected', '2023-06-27 00:00:00', '2023-07-03 12:34:13'),
(80, 'INQ20230706113100', 70, 9, 'pending', '2023-07-06 00:00:00', '2023-07-07 11:31:00'),
(81, 'INQ20230710014148', 63, 9, 'approved', '2023-07-10 00:00:00', '2023-07-17 13:41:48'),
(82, 'INQ20230711025209', 71, 9, 'pending', '2023-07-11 00:00:00', '2023-07-17 14:52:09'),
(83, 'INQ20230714031132', 72, 9, 'pending', '2023-07-14 00:00:00', '2023-07-17 15:11:32'),
(84, 'INQ20230714032643', 73, 9, 'pending', '2023-07-14 00:00:00', '2023-07-17 15:26:43'),
(85, 'INQ20230718034031', 75, 9, 'pending', '2023-07-18 00:00:00', '2023-07-21 15:40:31'),
(86, 'INQ20230718034345', 76, 9, 'pending', '2023-07-18 00:00:00', '2023-07-21 15:43:45'),
(87, 'INQ20230718034526', 77, 9, 'pending', '2023-07-18 00:00:00', '2023-07-21 15:45:26'),
(88, 'INQ20230719050217', 74, 9, 'approved', '2023-07-19 00:00:00', '2023-07-21 17:02:17'),
(89, 'INQ20230714050746', 74, 9, 'rejected', '2023-07-14 00:00:00', '2023-07-21 17:07:46'),
(90, 'INQ20230721051038', 79, 9, 'pending', '2023-07-21 00:00:00', '2023-07-21 17:10:38'),
(91, 'INQ20230721051500', 80, 9, 'pending', '2023-07-21 00:00:00', '2023-07-21 17:15:00'),
(92, 'INQ20230718054047', 81, 9, 'pending', '2023-07-18 00:00:00', '2023-07-21 17:40:47'),
(93, 'INQ20230721054633', 82, 9, 'pending', '2023-07-21 00:00:00', '2023-07-21 17:46:33'),
(94, 'INQ20230721055204', 83, 9, 'pending', '2023-07-21 00:00:00', '2023-07-21 17:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_production`
--

DROP TABLE IF EXISTS `mydgtech_tables_production`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_production` (
  `production_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `production_inquiry_id` varchar(50) NOT NULL,
  `production_type` json NOT NULL,
  `production_video` json DEFAULT NULL,
  `production_length` varchar(50) DEFAULT NULL,
  `production_location` varchar(150) DEFAULT NULL,
  `production_remark` varchar(500) DEFAULT NULL,
  `production_budget` decimal(10,2) NOT NULL,
  `production_due` date NOT NULL,
  PRIMARY KEY (`production_id`),
  KEY `production_inquiry_id` (`production_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_production`
--

INSERT INTO `mydgtech_tables_production` (`production_id`, `production_inquiry_id`, `production_type`, `production_video`, `production_length`, `production_location`, `production_remark`, `production_budget`, `production_due`) VALUES
(5, '9', '[\"Video Production\"]', '[\"Corporate Video\"]', '1 minutes', 'Preferred Location', 'Client asked for having a video shoot for Novux; short video', '0.00', '2023-01-27'),
(6, '10', '[\"Shooting Space\"]', '[]', '', '', 'The client asked an inquiry for having a shooting space; office space and meeting room for 6 PAX in 2 days for 8 hours per day', '2500.00', '2023-03-14'),
(7, '12', '[\"Video Production\", \"Photography Services\"]', '[\"Event Video\"]', '2 minutes', 'Preferred Location', '- Its a fashion show videography and photography for the event Roberto Cavvali\n- Video shooting of the main event, location, audiences attending \nand reactions, backstage, models and Cavalli team\n- Client asked for professional photos editing for all selected \n photos and we will provide 2 professional fashion show photography\n- Project is done', '0.00', '2023-02-09'),
(8, '13', '[\"Shooting Space\"]', '[]', '', '', '- Shooting space for 20 PAX from 8am - 9pm \n- Client update in 07/02 - still in reviewing process for their pitch\n- Update the client; no response', '2650.00', '2023-02-02'),
(9, '16', '[\"Video Production\"]', '[\"Corporate Video\"]', '3 - 5 minutes', 'Preferred Location', '*client invite to PERKIM for discussion regarding the video production\n*client asked to change the sample videos with the new ideas \n*the due for the videos will be 13th Feb 2023\n*f/u on the updated (08/02); postponed the meeting to 10/02 (Friday)\n*f/u on the updated (10/02); the video is done but will use for another event\n*f/u on the updated; the video is nice but they will use it for another event', '10000.00', '2023-02-10'),
(10, '18', '[\"Shooting Space\"]', '[]', '', '', '*client needs for; 6PAX; Office space level 23-7 and CEO Room Level 31-3A; 2 hours\n*f/u on the updated (16/02); no response', '530.00', '2023-02-16'),
(11, '33', '[\"Video Production\"]', '[\"Corporate Video\"]', '3 minutes', 'Preferred Location', '- client asked an inquiry for 2 corporate videos; 3 minutes for each videos\n- the budget is for 2 videos', '10000.00', '2023-05-01'),
(12, '34', '[\"Shooting Space\"]', '[]', '', '', '- Inquiry shooting space for 10 PAX, office space level 23-7 and Pantry level 15-1 for 4 hours\n- Client come for viewing \n- Mr Mehdi offered level 31-2 with price RM3,000 \n- Client doesn\'t want to proceed', '3000.00', '2023-02-21'),
(13, '35', '[\"Shooting Space\"]', '[]', '', '', '- Shooting space for 12 PAX, Office space level 23-7 from 9am - 4pm (7 hours)\n- Client negotiate the price from RM2,000 to RM1,500 but Mr Mehdi give price RM1,800\n- Client want come for viewing but cancel because the management didn\'t get the confirmation', '1900.00', '2023-03-03'),
(14, '36', '[\"Shooting Space\"]', '[]', '', '', '- the client asked an inquiry for shooting space for photoshoot 6 hours\n- the client asked for quotation but didn\'t provide the full-details', '0.00', '2023-02-21'),
(15, '38', '[\"Photography Services\"]', '[]', '', '', '- client asked for a professional studio photo shooting with corporate and potrait style for 20 people \n- the event will be on 28th February 2023\n- send the quotation to client', '11000.00', '2023-03-01'),
(16, '39', '[\"Video Production\"]', '[\"Commercial Video\"]', 'not mentioned', 'Preferred Location', '*client asked an inquiry for video production\n*the client needed for one year contract and prepare for 25 videos for them', '0.00', '2023-02-22'),
(17, '40', '[\"Shooting Space\"]', '[]', '', '', '- Client asked an inquiry for shooting space for 5 to 10 pax for 2-3 days (Half-day) shoot\n- client didn\'t provide the full details so can\'t give the price to the client\n- f/u on the updated; no response', '0.00', '2023-02-28'),
(18, '42', '[\"Video Production\"]', '[\"Corporate Video\"]', '2-3 minutes', 'Preferred Location', '*client asked an inquiry for 2-3 minutes interview video \n*their targetting for 5-8 doctors  different clinic around Klang Valley \n*each doctor will have 2-3 minutes video regarding the product \n*f/u on the updated (06/03); our PIC already give the quotation; price given RM10,000\n*f/u 2 times and no response', '10000.00', '2023-03-20'),
(19, '44', '[\"Photography Services\"]', '[]', '', '', '*client asked for a photoshoot on 20th March 2023 (Monday)\n*the quotation for this project is still not ready yet\n*f/u on the update (14/03); give the quotation to a client; photoshoot for 3 people and have a 2 group photoshoot - different groups of directors and manager \n*given price RM8,500 including the transportation prices', '8500.00', '2023-03-27'),
(20, '45', '[\"Shooting Space\"]', '[]', '', '', '- Shooting space for CEO Room Level 31-2, 31-3A and Pantry level 31-1\n- Half day from 2pm - 6pm\n- Need a seperate pricing for: CEO Room (31-2) & Pantry (31-1) also CEO Room (31-3A) and Pantry (31-1)', '1000.00', '2023-04-14'),
(21, '54', '[\"Shooting Space\"]', '[]', '', '', '- Shooting Space for meeting room level 31-1, receptionist level 31-1, ceo room level 31-2, office space level 31-1 unit 6, lounge area level 31-7 and pantry level 31-1\n- Mr Mehdi give price; RM2,000; full-day (9am - 6pm)\n- f/u on the updated (client skip shooting)', '2120.00', '2023-04-12'),
(22, '55', '[\"Shooting Space\"]', '[]', '', '', '- client would like to have a space hold the artist and then he walk from behind of his fans.\n- send the photos space that suitable for their enquiry to the client and asked to complete the details to get the prices \n- f/u on the updated (17/04); the client already found another space', '0.00', '2023-04-17'),
(23, '56', '[\"Shooting Space\"]', '[]', '', '', 'they would like to come for a reccee on Monday but still didn\'t provide the time\n*f/u on the updated (13/04); ask the client what time the client will come for a recce this monday but the client said will reply as soon as possible\n*f/u on the updated (13/04); client cancel to use office space because have slight changes in their script and doesn\'t need to use an office space', '0.00', '2023-04-13'),
(24, '57', '[\"Video Production\", \"Photography Services\"]', '[\"Corporate Video\"]', 'not mentioned', 'Preferred Location', 'the client needs a product videography and photography for blower machine\n*they would like to have the video shoot and photoshoot at their office in Cheras\n*the client need the quotation for the inquiry and asked to send it together for both enquiry \n*f/u on the updated (27/04); send the quotation to the client ', '8480.00', '2023-04-28'),
(25, '58', '[\"Shooting Space\"]', '[]', '', '', '*client need a space for pantry, private room and office space ; 4 Hours; <20PAX\n*we give suggestion for the space for Pantry Level 31-1, CEO Room 31-2 and Office Space 31-1 (Suite 6)\n*client asked the quotation for her inquiry \n*f/u on the updated (20/04); done send the quotation to the client via email ', '1272.00', '2023-05-02'),
(26, '60', '[\"Shooting Space\"]', '[]', '', '', '*client asked an inquiry for shooting space via email and liaised via Whatsapp \n*client need an office space for the shooting\n*send the photos to client but they still didn\'t choose which suite they want for the shooting space', '0.00', '2023-04-26'),
(27, '61', '[\"Shooting Space\"]', '[]', '', '', '- client asked an inquiry for shooting space via email and liaised via Whatsapp\n- client request to come for a viewing before choose the space because need to proposed to their management \n- Mr Mehdi offered space at level 31-5 for the price RM9,000 for 12 hour per day for 3 days \n- Send the quotation to client via Whatsapp', '9540.00', '2023-04-28'),
(28, '62', '[\"Video Production\"]', '[\"Corporate Video\"]', '1-2 minutes', 'Preferred Location', '*client asked for having a video shoot for Novux; short video\n *client give their details with script too\n *the shoot will be on 20/01; 10AM', '0.00', '2023-01-31'),
(29, '63', '[\"Video Production\"]', '[\"Corporate Video\"]', '2 minutes', 'Preferred Location', '- client asked an inquiry for video production via email and liaised via WS\n- client need 2 minutes video for corporate videos; the location will be at Shah Alam\n- the client would like to start as soon as possible and the project deadline also as soon as possible', '0.00', '2023-05-05'),
(30, '64', '[\"Shooting Space\"]', '[]', '', '', '- client asked an inquiry for shooting space \n- client would like to come for a reccee the space\n- client would like to have a conference room and office room for shooting space', '0.00', '2023-05-08'),
(31, '66', '[\"Shooting Space\"]', '[]', '', '', '- Client asked an inquiry for shooting space via WS\n- Client asked an inquiry for space level 31-5 \n- Send the photos to client \n- Ms Diyana mention after this shooting space Novux will handle ', '0.00', '2023-05-15'),
(32, '69', '[\"Video Production\"]', '[\"Corporate Video\"]', '3 minutes', 'Preferred Location', '- client asked an inquiry for video shooting at different locations such as Airports, and ports\n- client asked inquiry for 3 days shooting \n- Mr Ali send the quotation to client ', '35500.00', '2023-06-09'),
(33, '70', '[\"Video Production\"]', '[\"Corporate Video\"]', '4 - 6 minutes', 'Preferred Location', '- Video 1: with 2 talent - about 6 mins \n- Video 2: with 1 talent - about 4 mins\n- The speaker will speak in Malay\n- The video need an English subtitle\n', '10600.00', '2023-08-01'),
(34, '72', '[\"Video Production\"]', '[\"Commercial Video\"]', '3 minutes', 'Preferred Location', '- Client would like to have web introduction video or User guide video\n- Client need to put the videos on CIDB Website. \n- We give the price RM7,200', '7200.00', '2023-06-30'),
(35, '76', '[\"Video Production\"]', '[\"Event Video\"]', '2 - 4 minutes', 'Preferred Location', '- client would like to have a videographer services for grand opening event \n- The location will be at Sunway Pyramid and their target to start the shoot will be on August\n- The project deadline within a week after grand opening event and their budget is RM1,000. ', '1000.00', '2023-08-31'),
(36, '83', '[\"Video Production\", \"Photography Services\"]', '[\"Event Video\"]', '3-5 minutes', 'Preferred Location', '- client would like have photo and video shooting for company team building\n- client need for 2 days and 1 night shooting\n- location: Beacon Resort\n- The date: November 2023 (Half-day)', '0.00', '2023-11-01'),
(37, '89', '[\"Video Production\"]', '[\"Corporate Video\"]', '3 minutes', 'Preferred Location', '- client would like to have a corporate video for their company\n- the location for the shooting will be at their office or factory\n- can start earlier  and the deadline 20th August 2023\n- f/u on the updated (17/07); send the quotation to the client\n- They mention their budget is under RM5K', '5000.00', '2023-08-20'),
(38, '92', '[\"Video Production\"]', '[\"Commercial Video\"]', '<3 minutes', 'Preferred Location', '- the client would like to have a commercial product video with talents and the talents is from our side; the product is smart fitness\n- the duration of the videos not more than 3 minutes\n- shooting location will be arrange by our production house\n- Their deadline project is 1st September 2023\n- f/u on the updated (21/07); send the proposal with the pricing via email', '0.00', '2023-09-21'),
(39, '93', '[\"Video Production\"]', '[\"Corporate Video\"]', '4-5 minutes', 'Preferred Location', '- client need for video production same like this example https://www.youtube.com/watch?v=pHrNc6K5HTo \n- more details need to asked Mr Ali', '0.00', '2023-08-31'),
(40, '94', '[\"Video Production\", \"Photography Services\"]', '[\"Commercial Video\"]', 'will mention in production email', 'Preferred Location', '- client need a product video and photography\n- the client mention they will launch a new product and will send the details to production email ', '0.00', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `mydgtech_tables_website`
--

DROP TABLE IF EXISTS `mydgtech_tables_website`;
CREATE TABLE IF NOT EXISTS `mydgtech_tables_website` (
  `website_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_inquiry_id` varchar(50) NOT NULL,
  `website_type` json NOT NULL,
  `website_design` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `website_keywords` int DEFAULT NULL,
  `website_remark` varchar(500) DEFAULT NULL,
  `website_budget` decimal(10,2) NOT NULL,
  `website_due` date NOT NULL,
  PRIMARY KEY (`website_id`),
  KEY `website_inquiry_id` (`website_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mydgtech_tables_website`
--

INSERT INTO `mydgtech_tables_website` (`website_id`, `website_inquiry_id`, `website_type`, `website_design`, `website_keywords`, `website_remark`, `website_budget`, `website_due`) VALUES
(5, '5', '[\"Website Design\", \"SEO Service\"]', 'Custom Website', 5, '', '6000.00', '2023-04-20'),
(6, '6', '[\"Website Design\"]', 'Simple Website', 0, '*client asked an inquiry for web design via email on 29/12\n*client looking for the redevelopment of service center website\n*f/u on the update (03/01); client not pick up the phone call', '0.00', '2023-01-03'),
(7, '11', '[\"Website Design\"]', 'Simple Website', 0, '- Client requested to manage their website and update some layout and content\n- Client asked to change the theme of the colour ', '0.00', '2023-01-27'),
(8, '14', '[\"Website Design\"]', 'Custom Website', 0, '- client is looking for web agency that can do for the web page; for game project includes several webs and landing page\n- the client asked to meet them for discussion\n- f/u on the updated (07/02); client share the website look book and asked for an online meeting\n- f/u on the updated (13/02); will do have a meeting after 22/02 after the client come to Malaysia\n- f/u on the updated (28/02); client will do with another company', '0.00', '2023-02-28'),
(9, '15', '[\"Website Design\"]', 'Custom Website', 0, '- client want to know the package for the Web Design \n- we gave the Advance Store Package to the client; RM7,750\n- f/u on the updated (07/02); no response\n- f/u on the updated (17/02); client not interested\n- the price below are include 6% SST', '8215.00', '2023-02-17'),
(10, '41', '[\"Website Design\"]', 'Custom Website', 0, '- Client need a custom website for salary display and they already give the other details\n- We offered the price for RM15,000 and the client is rejected the price because their budget is only RM2,000', '15000.00', '2023-03-01'),
(11, '49', '[\"Website Design\"]', 'Custom Website', 0, '*client asked an inquiry for web design for page via Email and liaised thru WS and Phone Call ; About us, events, registration + payment gateway, membership\n*f/u on the updated (31/03); send the quotation to the client via email \n*f/u on the updated (06/04); client have choose the other company ', '20405.00', '2023-04-06'),
(12, '51', '[\"Website Design\"]', 'Simple Website', 0, '*client asked an inquiry for web design via WS (client MR ALI)\n*client need a simple website and maximum 10 page\n*FMCG Company (Fast Moving Consumer Goods)', '6000.00', '2023-04-11'),
(13, '52', '[\"Website Design\"]', 'Simple Website', 0, '*client asked an inquiry for web design via WS (client MR ALI)\n*client need a simple website and maximum 10 page\n*FMCG Company (Fast Moving Consumer Goods)', '6360.00', '2023-04-11'),
(14, '53', '[\"Website Design\"]', 'Simple Website', 0, '*client asked an inquiry for a new portal \n*they provide a link for the portal they want to have\n*asked the client details for the further assists; not respond yet\n*f/u on the updated (13/04); no response\n*f/u on the updated (14/04); no response', '0.00', '2023-04-12'),
(15, '57', '[\"Website Design\"]', 'Simple Website', 0, '*client asked an inquiry for web design and development via WS on 17/04\n*f/u on the updated (27/04); send the quotation to the client \n*f/u on the updated (28/04); client want to know more about photography services', '6360.00', '2023-04-28'),
(16, '71', '[\"Website Design\"]', 'Simple Website', 0, '- client asked the rate for landing page and basic website via WS\n- client looking for small business F&B website\n- We share example of the F&B website and the price is not inclusive domain + hosting\n- The client ask for additional stock image and we give 10 complimentary stock image and if need more we will charge RM10 per image', '2000.00', '2023-06-30'),
(17, '74', '[\"Website Design\"]', 'Simple Website', 0, '- client would like to redesign back their website like the example that they share with us.\n- client also need a content writing and some graphics design in their website\n- client budget is RM1,500 and we mentioned to them for this budget only can get one landing page and must use their own content and image and it is not included for the host and domain.\n- we share the new quotation price include with content writing and graphic design with total RM2,650 including the SST', '1500.00', '2023-06-30'),
(18, '80', '[\"Website Design\"]', 'Simple Website', 0, '- client would like to have a simple web in Malay language \n- their budget is RM1500 and he will get only 1 landing page without hosting and domain, and a template too.\n- we offer to them RM3000 because they will get hosting and domain, include the template', '1590.00', '2023-07-21'),
(19, '82', '[\"Website Design\"]', 'Simple Website', 0, '- client need 4 to 5 pages for simple website; About us, contact us (have whatsapp button), Product and services and others\n- client didn\'t provide full details for prepare the quotation', '0.00', '2023-07-31'),
(20, '84', '[\"SEO Service\"]', '', 0, '- client need design and copywriting for social media post, EDM, and blog articles\n- EDM and blog articles are for 3 months campaign \n- Need for 500 words per blog articles (3) and 350 words per EDM (3) and 50 - 70 words for social media posting\n- Revision for 3 times \n- They also asked for SEO, photography and videography', '0.00', '2023-08-31'),
(21, '86', '[\"Website Design\"]', 'Corporate Website', 0, '- client would like to have a corporate website setup for skincare brand and branding consultation\n- They would like to have 8 pages in total and never have a domain\n- Share the skincare website that we do and give the starting price to the client ', '0.00', '2023-08-01'),
(22, '90', '[\"Website Design\"]', 'Simple Website', 0, '- client would like to develop a web design for his company that do for maintenance for elevator \n- they would like to have a quotation for their inquiry and waiting for example website that we do', '0.00', '2023-08-31'),
(23, '91', '[\"Website Design\"]', 'Simple Website', 0, '- the client would like to have a web designing and hosting services\n- their company background is doing a logistic company\n- they would like to have Outline: Home, about us, our services, service page (4 page), project page (4 page), contact us\n- the client need a quotation for their inquiry and they don\'t have fix budget ', '0.00', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_comments`
--

DROP TABLE IF EXISTS `novux_tables_comments`;
CREATE TABLE IF NOT EXISTS `novux_tables_comments` (
  `comments_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_inquiry_id` int NOT NULL,
  `comments_comment` json NOT NULL,
  PRIMARY KEY (`comments_id`),
  KEY `inquiry_id` (`comments_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_comments`
--

INSERT INTO `novux_tables_comments` (`comments_id`, `comments_inquiry_id`, `comments_comment`) VALUES
(5, 15, '[{\"id\": 0, \"date\": \"2023-03-24\", \"comment\": \"helll0\"}, {\"id\": 1, \"date\": \"2023-03-24\", \"comment\": \"sdfdfdfd\"}, {\"id\": 2, \"date\": \"2023-03-24\", \"comment\": \"dfdfdfd\"}]'),
(6, 16, '[{\"id\": 0, \"date\": \"2022-12-01\", \"comment\": \"received inquiry through email \"}, {\"id\": 1, \"date\": \"2022-12-01\", \"comment\": \"sent quotation to the client via email\"}, {\"id\": 2, \"date\": \"2022-12-01\", \"comment\": \" client will update soon\"}, {\"id\": 3, \"date\": \"2022-12-12\", \"comment\": \"f/u on the update: no response\"}]'),
(7, 17, '[{\"id\": 0, \"date\": \"2023-03-01\", \"comment\": \"*sent brochure to the client \"}, {\"id\": 1, \"date\": \"2023-03-01\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 2, \"date\": \"2023-03-01\", \"comment\": \"*client will update soon \"}, {\"id\": 3, \"date\": \"2023-03-20\", \"comment\": \"*f/u on the update; client has opted Regus\"}]'),
(8, 18, '[{\"id\": 0, \"date\": \"2023-04-03\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-04-03\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 2, \"date\": \"2023-04-03\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*client came for a viewing\"}, {\"id\": 4, \"date\": \"2023-04-26\", \"comment\": \"*client will provide full details\"}]'),
(9, 19, '[{\"id\": 0, \"date\": \"2023-04-03\", \"comment\": \"*liaised with the client through phone call\"}, {\"id\": 1, \"date\": \"2023-04-03\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-04-03\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-04-04\", \"comment\": \"*sent revised quotation to the client\"}, {\"id\": 4, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: client is confirmed and will make a payment soon\"}]'),
(10, 20, '[{\"id\": 0, \"date\": \"2023-04-03\", \"comment\": \"*liaised with the client via phone\"}, {\"id\": 1, \"date\": \"2023-04-03\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-04-03\", \"comment\": \"*Mr Mehdi gave price RM 1k/6 hours\"}, {\"id\": 3, \"date\": \"2023-04-03\", \"comment\": \"*client will update soon\"}]'),
(11, 21, '[{\"id\": 0, \"date\": \"2023-04-04\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-04\", \"comment\": \"*sent brochure to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-04\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update:\"}]'),
(12, 23, '[{\"id\": 0, \"date\": \"2023-04-04\", \"comment\": \"*client gave their details \"}, {\"id\": 1, \"date\": \"2023-04-04\", \"comment\": \"*Mr Mehdi gave price RM 700/8 hours and RM 1k/day for 10 hours for Suite 5 23-5\"}, {\"id\": 2, \"date\": \"2023-04-04\", \"comment\": \" *issued invoice to the client \"}, {\"id\": 3, \"date\": \"2023-04-04\", \"comment\": \"*client made the payment\"}]'),
(13, 24, '[{\"id\": 0, \"date\": \"2023-04-04\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-04\", \"comment\": \"*sent brochure to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-20\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: client still in discussion and will update if they are interested\"}]'),
(14, 25, '[{\"id\": 0, \"date\": \"2023-04-05\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-05\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update:\"}]'),
(15, 26, '[{\"id\": 0, \"date\": \"2023-04-05\", \"comment\": \"*client came walk-in for a viewing \"}, {\"id\": 1, \"date\": \"2023-04-05\", \"comment\": \"*sent brochure to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-05\", \"comment\": \" *client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: client will update soon\"}, {\"id\": 4, \"date\": \"2023-04-27\", \"comment\": \"*client has opted another place for their meeting\"}]'),
(16, 27, '[{\"id\": 0, \"date\": \"2023-04-05\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-04-05\", \"comment\": \" *sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}, {\"id\": 3, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update:\"}]'),
(17, 28, '[{\"id\": 0, \"date\": \"2023-04-06\", \"comment\": \"*client made the payment from website \"}, {\"id\": 1, \"date\": \"2023-04-06\", \"comment\": \"*client signed up M&A package \"}, {\"id\": 2, \"date\": \"2023-04-06\", \"comment\": \"*issued C&A to the client\"}]'),
(18, 29, '[{\"id\": 0, \"date\": \"2023-04-06\", \"comment\": \"*client made the payment from website \"}, {\"id\": 1, \"date\": \"2023-04-06\", \"comment\": \"*client signed up M&A package \"}, {\"id\": 2, \"date\": \"2023-04-06\", \"comment\": \"*issued C&A to the client\"}]'),
(19, 30, '[{\"id\": 0, \"date\": \"2023-04-06\", \"comment\": \"*received enquiry via email \"}, {\"id\": 1, \"date\": \"2023-04-06\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-06\", \"comment\": \"*sent quotation to the client via email \"}, {\"id\": 3, \"date\": \"2023-04-06\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}]'),
(20, 31, '[{\"id\": 0, \"date\": \"2023-04-06\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-06\", \"comment\": \"*sent brochure to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-06\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}]'),
(21, 32, '[{\"id\": 0, \"date\": \"2023-04-07\", \"comment\": \"*client gave their details \"}, {\"id\": 1, \"date\": \"2023-04-07\", \"comment\": \"*Mr Mehdi gave discount for meeting room usage \"}, {\"id\": 2, \"date\": \"2023-04-07\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 3, \"date\": \"2023-04-07\", \"comment\": \"*issued invoice to the client \"}, {\"id\": 4, \"date\": \"2023-04-07\", \"comment\": \"*client made payment for deposit\"}, {\"id\": 5, \"date\": \"2023-04-08\", \"comment\": \"*client made balance payment\"}]'),
(22, 33, '[{\"id\": 0, \"date\": \"2023-04-10\", \"comment\": \"*received enquiry via email \"}, {\"id\": 1, \"date\": \"2023-04-10\", \"comment\": \"*liaised with the client through phone call \"}, {\"id\": 2, \"date\": \"2023-04-10\", \"comment\": \"*client gave their details \"}, {\"id\": 3, \"date\": \"2023-04-10\", \"comment\": \"*sent quotation to the client via email \"}, {\"id\": 4, \"date\": \"2023-04-10\", \"comment\": \"*client will update soon\"}, {\"id\": 5, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}, {\"id\": 6, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: \"}]'),
(23, 34, '[{\"id\": 0, \"date\": \"2023-04-10\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-04-10\", \"comment\": \" *client gave their details \"}, {\"id\": 2, \"date\": \"2023-04-10\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 3, \"date\": \"2023-04-10\", \"comment\": \"*client has opted another place for their meeting\"}]'),
(24, 35, '[{\"id\": 0, \"date\": \"2023-04-10\", \"comment\": \"*sent brochure to the client via email \"}, {\"id\": 1, \"date\": \"2023-04-10\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}, {\"id\": 3, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update:\"}]'),
(25, 36, '[{\"id\": 0, \"date\": \"2023-04-10\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-04-10\", \"comment\": \" *sent brochure to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-10\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: their management has decided to not proceed\"}]'),
(26, 37, '[{\"id\": 0, \"date\": \"2023-04-11\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 1, \"date\": \"2023-04-11\", \"comment\": \"*sent photos to the client \"}, {\"id\": 2, \"date\": \"2023-04-11\", \"comment\": \"*client will update soon\"}]'),
(27, 38, '[{\"id\": 0, \"date\": \"2023-04-11\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-11\", \"comment\": \"*client came walk-in for viewing \"}, {\"id\": 2, \"date\": \"2023-04-11\", \"comment\": \"*sent quotation to the client via email \"}, {\"id\": 3, \"date\": \"2023-04-11\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update\"}]'),
(28, 39, '[{\"id\": 0, \"date\": \"2023-04-11\", \"comment\": \"*client gave their details  \"}, {\"id\": 1, \"date\": \"2023-04-11\", \"comment\": \"*issued invoice to the client \"}, {\"id\": 2, \"date\": \"2023-04-11\", \"comment\": \"*client made the payment\"}]'),
(29, 40, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*invite client for a viewing\"}]'),
(30, 41, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*client gave their details \"}, {\"id\": 2, \"date\": \"2023-04-12\", \"comment\": \"*sent quotation to the client via email \"}, {\"id\": 3, \"date\": \"2023-04-12\", \"comment\": \" *client will update soon\"}, {\"id\": 4, \"date\": \"2023-04-26\", \"comment\": \"*f/u on the update: no response\"}]'),
(31, 42, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*received enquiry via email \"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*client gave their details \"}, {\"id\": 2, \"date\": \"2023-04-12\", \"comment\": \"*sent quotation to the client via email \"}, {\"id\": 3, \"date\": \"2023-04-12\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 4, \"date\": \"2023-04-12\", \"comment\": \"*issued invoice to the client \"}, {\"id\": 5, \"date\": \"2023-04-13\", \"comment\": \"*client made the payment\"}]'),
(32, 43, '[{\"id\": 0, \"date\": \"2023-04-12\", \"comment\": \"*liaised with the client via email \"}, {\"id\": 1, \"date\": \"2023-04-12\", \"comment\": \"*sent brochure and quotation to the client\"}]'),
(33, 44, '[{\"id\": 0, \"date\": \"2023-04-13\", \"comment\": \"*liaised with the client via email\"}, {\"id\": 1, \"date\": \"2023-04-13\", \"comment\": \" *sent brochure and quotation to the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-13\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: client will update soon\"}]'),
(34, 45, '[{\"id\": 0, \"date\": \"2023-04-17\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: client will update soon\"}]'),
(35, 46, '[{\"id\": 0, \"date\": \"2023-04-17\", \"comment\": \"*received inquiry via email \"}, {\"id\": 1, \"date\": \"2023-04-17\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-17\", \"comment\": \"*sent brochure to the client  \"}, {\"id\": 3, \"date\": \"2023-04-17\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: client will update soon\"}]'),
(36, 47, '[{\"id\": 0, \"date\": \"2023-04-17\", \"comment\": \"*client came walk-in for a viewing \"}, {\"id\": 1, \"date\": \"2023-04-17\", \"comment\": \"*Mr Mehdi gave pricing RM 10k/month for Unit 31-2 and RM 4k/month for up to 6 PAX (31-1) \"}, {\"id\": 2, \"date\": \"2023-04-17\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-04-17\", \"comment\": \" *client will update soon\"}, {\"id\": 4, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: client is still considering and will update soon\"}]'),
(37, 48, '[{\"id\": 0, \"date\": \"2023-04-18\", \"comment\": \"*received inquiry via email \"}, {\"id\": 1, \"date\": \"2023-04-18\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 2, \"date\": \"2023-04-18\", \"comment\": \"*sent brochure to the client \"}, {\"id\": 3, \"date\": \"2023-04-18\", \"comment\": \" *client will update soon\"}, {\"id\": 4, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update: client still waiting for update from their management\"}]'),
(38, 49, '[{\"id\": 0, \"date\": \"2023-04-18\", \"comment\": \"*liaised with the client through phone call \"}, {\"id\": 1, \"date\": \"2023-04-18\", \"comment\": \"*client gave their details \"}, {\"id\": 2, \"date\": \"2023-04-19\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 3, \"date\": \"2023-04-19\", \"comment\": \"*client will update soon \"}, {\"id\": 4, \"date\": \"2023-04-20\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 5, \"date\": \"2023-04-27\", \"comment\": \"*client came for a viewing\"}, {\"id\": 6, \"date\": \"2023-04-28\", \"comment\": \"*client made the payment\"}]'),
(39, 50, '[{\"id\": 0, \"date\": \"2023-04-18\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-04-18\", \"comment\": \" *client will come for a viewing\"}]'),
(40, 51, '[{\"id\": 0, \"date\": \"2023-04-18\", \"comment\": \"*liaised with the client via WS \"}, {\"id\": 1, \"date\": \"2023-04-18\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 2, \"date\": \"2023-04-18\", \"comment\": \" *client will update soon \"}, {\"id\": 3, \"date\": \"2023-04-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-04-25\", \"comment\": \"*client wished to come for a viewing\"}, {\"id\": 5, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update:\"}]'),
(41, 52, '[{\"id\": 0, \"date\": \"2023-04-19\", \"comment\": \"*liaised with the client via phone call \"}, {\"id\": 1, \"date\": \"2023-04-19\", \"comment\": \"*sent brochure to the client via email \"}, {\"id\": 2, \"date\": \"2023-04-19\", \"comment\": \"*client will update soon\"}]'),
(42, 53, '[{\"id\": 0, \"date\": \"2023-04-25\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-04-25\", \"comment\": \"*client provide passport copy\"}, {\"id\": 2, \"date\": \"2023-04-25\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-04-25\", \"comment\": \"f/u on the update: client would like opted from another place\"}]'),
(43, 54, '[{\"id\": 0, \"date\": \"2023-04-25\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-04-25\", \"comment\": \"*client provide the details\"}, {\"id\": 2, \"date\": \"2023-04-25\", \"comment\": \"*Mr Mehdi gave special price RM 50k for 1 month meeting room usage\"}, {\"id\": 3, \"date\": \"2023-04-25\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 4, \"date\": \"2023-04-25\", \"comment\": \"*client will update soon\"}]'),
(44, 55, '[{\"id\": 0, \"date\": \"2023-04-25\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-04-25\", \"comment\": \"*sent private office room photos to the client\"}, {\"id\": 2, \"date\": \"2023-04-25\", \"comment\": \"*client will update soon\"}]'),
(45, 56, '[{\"id\": 0, \"date\": \"2023-04-25\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-04-25\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 2, \"date\": \"2023-04-25\", \"comment\": \"*client will update soon\"}]'),
(46, 57, '[{\"id\": 0, \"date\": \"2023-04-26\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-04-26\", \"comment\": \"*client provide the details via WS\"}, {\"id\": 2, \"date\": \"2023-04-26\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-04-26\", \"comment\": \"*client will update soon\"}]'),
(47, 58, '[{\"id\": 0, \"date\": \"2023-04-26\", \"comment\": \"*sent brochure to the client via email\"}, {\"id\": 1, \"date\": \"2023-04-26\", \"comment\": \"*client will update soon\"}]'),
(48, 59, '[{\"id\": 0, \"date\": \"2023-04-27\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-04-27\", \"comment\": \"*client will come for a viewing\"}]'),
(49, 60, '[{\"id\": 0, \"date\": \"2023-04-27\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-04-27\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-04-27\", \"comment\": \"*client provide their details\"}, {\"id\": 3, \"date\": \"2023-04-27\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 4, \"date\": \"2023-04-27\", \"comment\": \"*client will update soon\"}]'),
(50, 61, '[{\"id\": 0, \"date\": \"2023-04-27\", \"comment\": \"*client provide the details\"}, {\"id\": 1, \"date\": \"2023-04-27\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-04-27\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-04-27\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-05-08\", \"comment\": \"*f/u on the update:\"}]'),
(51, 62, '[{\"id\": 0, \"date\": \"2023-04-27\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-04-27\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-04-27\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-04-27\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 4, \"date\": \"2023-04-27\", \"comment\": \"*client will update soon\"}]'),
(52, 63, '[{\"id\": 0, \"date\": \"2023-04-28\", \"comment\": \"djfkldjlfjldfjldf\"}, {\"id\": 1, \"date\": \"2023-04-28\", \"comment\": \"dfkjdflkdjflkdjf\"}]'),
(53, 64, '[{\"id\": 0, \"date\": \"2023-04-28\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-04-28\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-04-28\", \"comment\": \"*sent quotation to the client email\"}, {\"id\": 3, \"date\": \"2023-04-28\", \"comment\": \"*client will update soon\"}]'),
(54, 66, '[{\"id\": 0, \"date\": \"2023-05-02\", \"comment\": \"*client purchased Mail & Address package via website\"}, {\"id\": 1, \"date\": \"2023-05-02\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-02\", \"comment\": \"*client provide their IC copy\"}, {\"id\": 3, \"date\": \"2023-05-02\", \"comment\": \"*provide address to the client for SSM registration\"}]'),
(55, 67, '[{\"id\": 0, \"date\": \"2023-05-02\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-02\", \"comment\": \"*sent brochure to the client \"}, {\"id\": 2, \"date\": \"2023-05-02\", \"comment\": \"*sent photos to the client\"}, {\"id\": 3, \"date\": \"2023-05-02\", \"comment\": \"*client will update soon\"}]'),
(56, 68, '[{\"id\": 0, \"date\": \"2023-05-02\", \"comment\": \"*client gave their details\"}, {\"id\": 1, \"date\": \"2023-05-02\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-02\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-02\", \"comment\": \"*client will update soon\"}]'),
(57, 69, '[{\"id\": 0, \"date\": \"2023-05-02\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-02\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 2, \"date\": \"2023-05-02\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-02\", \"comment\": \"*client will get back soon\"}, {\"id\": 4, \"date\": \"2023-05-08\", \"comment\": \"*issued invoice to the client\"}]'),
(58, 70, '[{\"id\": 0, \"date\": \"2023-05-03\", \"comment\": \"*client provide their details via WS\"}, {\"id\": 1, \"date\": \"2023-05-03\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 2, \"date\": \"2023-05-03\", \"comment\": \"*client will update soon\"}]'),
(59, 71, '[{\"id\": 0, \"date\": \"2023-05-05\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-05\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-05\", \"comment\": \"*client will update soon\"}]'),
(60, 72, '[{\"id\": 0, \"date\": \"2023-05-05\", \"comment\": \"*client provide their details via WS\"}, {\"id\": 1, \"date\": \"2023-05-05\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 2, \"date\": \"2023-05-05\", \"comment\": \"*Mr Mehdi gave discount RM1,000 to the client\"}, {\"id\": 3, \"date\": \"2023-05-05\", \"comment\": \"*sent revised quotation to the client \"}, {\"id\": 4, \"date\": \"2023-05-05\", \"comment\": \"*client will update soon\"}, {\"id\": 5, \"date\": \"2023-05-16\", \"comment\": \"*f/u on the update: client has found another place that near to their office\"}]'),
(61, 73, '[{\"id\": 0, \"date\": \"2023-05-05\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-05\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-05\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-05\", \"comment\": \"*client will update soon\"}]'),
(62, 65, '[{\"id\": 0, \"date\": \"2023-05-01\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-05-01\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-05-01\", \"comment\": \"*client came for a viewing\"}, {\"id\": 3, \"date\": \"2023-05-01\", \"comment\": \"*client made the payment\"}]'),
(63, 74, '[{\"id\": 0, \"date\": \"2023-05-08\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-08\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-05-08\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-08\", \"comment\": \"*client will update soon\"}]'),
(64, 75, '[{\"id\": 0, \"date\": \"2023-05-09\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-09\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-09\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-09\", \"comment\": \"*client will update soon\"}]'),
(65, 76, '[{\"id\": 0, \"date\": \"2023-05-10\", \"comment\": \"*client sent their details via WhatsApp\"}, {\"id\": 1, \"date\": \"2023-05-10\", \"comment\": \"*sent quotation & brochure to the client via email\"}, {\"id\": 2, \"date\": \"2023-05-10\", \"comment\": \"*client will update soon\"}]'),
(66, 77, '[{\"id\": 0, \"date\": \"2023-05-10\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-10\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-05-10\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-10\", \"comment\": \"*Mr Mehdi gave RM1.2K/day discount to the client\"}, {\"id\": 4, \"date\": \"2023-05-10\", \"comment\": \"*sent revised quotation to the client\"}, {\"id\": 5, \"date\": \"2023-05-10\", \"comment\": \"*client will update soon\"}, {\"id\": 6, \"date\": \"2023-05-17\", \"comment\": \"*f/u on the update; client postponed their meeting\"}]'),
(67, 78, '[{\"id\": 0, \"date\": \"2023-05-10\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-10\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 2, \"date\": \"2023-05-10\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 3, \"date\": \"2023-05-10\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-05-11\", \"comment\": \"*client made the payment\"}]'),
(68, 80, '[{\"id\": 0, \"date\": \"2023-05-10\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-10\", \"comment\": \"*client interested to sign up WFH package\"}, {\"id\": 2, \"date\": \"2023-05-10\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 3, \"date\": \"2023-05-10\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-05-12\", \"comment\": \"*client came for a viewing\"}, {\"id\": 5, \"date\": \"2023-05-12\", \"comment\": \"*Mr Mehdi gave 1 month complimentary\"}, {\"id\": 6, \"date\": \"2023-05-12\", \"comment\": \"*client made the payment\"}]'),
(69, 81, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-11\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-11\", \"comment\": \"*client will update soon\"}]'),
(70, 82, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-11\", \"comment\": \"*client will update soon\"}]'),
(71, 83, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-11\", \"comment\": \"*client\'s event is clashed with VICTVS\"}]'),
(72, 84, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*received enquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-11\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 3, \"date\": \"2023-05-11\", \"comment\": \"*sent revised quotation to the client\"}, {\"id\": 4, \"date\": \"2023-05-11\", \"comment\": \"*client will update soon\"}]'),
(73, 85, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*client will update soon\"}]'),
(74, 86, '[{\"id\": 0, \"date\": \"2023-05-12\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-12\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-12\", \"comment\": \"*client will update soon\"}]'),
(75, 87, '[{\"id\": 0, \"date\": \"2023-05-12\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-12\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-12\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-12\", \"comment\": \"*client will update soon\"}]'),
(76, 88, '[{\"id\": 0, \"date\": \"2023-05-11\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-11\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-11\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-11\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-05-12\", \"comment\": \"*sent revised quotation to the client\"}, {\"id\": 5, \"date\": \"2023-05-15\", \"comment\": \"*f/u on the update: client\'s event got postponed to another date and will inform new date\"}]'),
(77, 89, '[{\"id\": 0, \"date\": \"2023-05-15\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-15\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-15\", \"comment\": \"*Mr Mehdi gave pricing RM 15k/5 days for Unit 31-5 and RM 9k/5 days for Unit 31-2\"}, {\"id\": 3, \"date\": \"2023-05-15\", \"comment\": \"*sent photos to the client via WhatsApp\"}, {\"id\": 4, \"date\": \"2023-05-15\", \"comment\": \"*Mr Mehdi accepts client\'s budget\"}, {\"id\": 5, \"date\": \"2023-05-15\", \"comment\": \"*client will update soon\"}, {\"id\": 6, \"date\": \"2023-05-23\", \"comment\": \"*client came again with his team for a viewing \"}, {\"id\": 7, \"date\": \"2023-05-26\", \"comment\": \"*Mr Mehdi accepts client budget RM20k/6 days for whole unit 31-5 & 31-7\"}, {\"id\": 8, \"date\": \"2023-05-26\", \"comment\": \"*issued invoice to the client\"}]'),
(78, 90, '[{\"id\": 0, \"date\": \"2023-05-17\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-17\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-17\", \"comment\": \"*sent photos to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-17\", \"comment\": \"*Mr Mehdi gave pricing RM 14k/7 days and discount RM4k for unit 31-5\"}, {\"id\": 4, \"date\": \"2023-05-17\", \"comment\": \"*client will update soon\"}]'),
(79, 91, '[{\"id\": 0, \"date\": \"2023-05-17\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-17\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-17\", \"comment\": \"*Mr Mehdi gave pricing RM 1.2k/6 hours for private office room and RM 2.4k/6 hours for whole unit\"}, {\"id\": 3, \"date\": \"2023-05-17\", \"comment\": \"*client will update soon\"}]'),
(80, 92, '[{\"id\": 0, \"date\": \"2023-05-17\", \"comment\": \"*sent brochure to the client via WhatsApp\"}, {\"id\": 1, \"date\": \"2023-05-17\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-17\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 3, \"date\": \"2023-05-17\", \"comment\": \"*client will update soon\"}]'),
(81, 93, '[{\"id\": 0, \"date\": \"2023-05-17\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-17\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-17\", \"comment\": \"*sent quotation to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-17\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-05-17\", \"comment\": \"*client made the payment\"}]'),
(82, 94, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*client will update soon\"}]'),
(83, 95, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-18\", \"comment\": \"*client will update soon\"}]'),
(84, 96, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-05-18\", \"comment\": \"*client made the payment\"}]'),
(85, 97, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-18\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-18\", \"comment\": \"*client will update soon\"}]'),
(86, 98, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-18\", \"comment\": \"*Mr Mehdi accepts client\'s budget RM 2k/month for 2 PAX\"}, {\"id\": 3, \"date\": \"2023-05-18\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 4, \"date\": \"2023-05-18\", \"comment\": \"*client will update soon\"}]'),
(87, 100, '[{\"id\": 0, \"date\": \"2023-05-18\", \"comment\": \"*client came walk-in for a viewing\"}, {\"id\": 1, \"date\": \"2023-05-18\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-05-18\", \"comment\": \"*client made upfront payment\"}, {\"id\": 4, \"date\": \"2023-05-19\", \"comment\": \"*client made the balance payment\"}]'),
(88, 101, '[{\"id\": 0, \"date\": \"2023-05-19\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-05-19\", \"comment\": \"*client provide IC copy\"}, {\"id\": 2, \"date\": \"2023-05-19\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-05-19\", \"comment\": \"*client made the payment\"}]'),
(89, 102, '[{\"id\": 0, \"date\": \"2023-05-23\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-23\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-23\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-23\", \"comment\": \"*client will update soon\"}]'),
(90, 103, '[{\"id\": 0, \"date\": \"2023-05-23\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-23\", \"comment\": \"*Mr Mehdi gave price RM 7k/month for 6 PAX and assigned Suite 5 23-5\"}, {\"id\": 2, \"date\": \"2023-05-23\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-23\", \"comment\": \"*client will update soon\"}]'),
(91, 104, '[{\"id\": 0, \"date\": \"2023-05-25\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-25\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-25\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-25\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(92, 105, '[{\"id\": 0, \"date\": \"2023-05-25\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(93, 106, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client provides their details\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*sent quotation and brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-26\", \"comment\": \"*sent photos to the client via WS\"}, {\"id\": 4, \"date\": \"2023-05-26\", \"comment\": \"*client will update soon\"}]'),
(94, 107, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*liaised with the client via call\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*sent quotation and brochure to the client via email\"}, {\"id\": 3, \"date\": \"2023-05-26\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(95, 108, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client provide their IC copy\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-05-29\", \"comment\": \"*client made the payment\"}]'),
(96, 109, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 3, \"date\": \"2023-05-26\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-05-26\", \"comment\": \"*client made the payment\"}]'),
(97, 110, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client provide IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-05-29\", \"comment\": \"*client made the payment\"}]'),
(98, 111, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-26\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(99, 112, '[{\"id\": 0, \"date\": \"2023-05-26\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-05-26\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-05-26\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-05-26\", \"comment\": \"*client will update soon\"}]'),
(100, 113, '[{\"id\": 0, \"date\": \"2023-05-29\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(101, 114, '[{\"id\": 0, \"date\": \"2023-05-31\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-05-31\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-05-31\", \"comment\": \"*client provide their details\"}, {\"id\": 3, \"date\": \"2023-05-31\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 4, \"date\": \"2023-05-31\", \"comment\": \"*client will update soon\"}, {\"id\": 5, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update\"}]'),
(102, 115, '[{\"id\": 0, \"date\": \"2023-06-01\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-01\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-01\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-01\", \"comment\": \"*client will update soon\"}]'),
(103, 116, '[{\"id\": 0, \"date\": \"2023-06-01\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-01\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 2, \"date\": \"2023-06-01\", \"comment\": \"*client will update soon\"}]'),
(104, 117, '[{\"id\": 0, \"date\": \"2023-06-02\", \"comment\": \"*client came walk in to sign up Communication package\"}, {\"id\": 1, \"date\": \"2023-06-02\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-06-02\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-06-02\", \"comment\": \"*client made the payment\"}]'),
(105, 118, '[{\"id\": 0, \"date\": \"2023-06-02\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-02\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-02\", \"comment\": \"*client will update soon\"}]'),
(106, 119, '[{\"id\": 0, \"date\": \"2023-06-02\", \"comment\": \"*client provide their details via WS\"}, {\"id\": 1, \"date\": \"2023-06-02\", \"comment\": \"*sent pricing to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-02\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update: client postponed their meeting\"}]'),
(107, 120, '[{\"id\": 0, \"date\": \"2023-06-06\", \"comment\": \"*liaise with the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-06\", \"comment\": \"*sent brochure to the client \"}, {\"id\": 2, \"date\": \"2023-06-06\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update:\"}]'),
(108, 121, '[{\"id\": 0, \"date\": \"2023-06-08\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-06-08\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update: no response\"}, {\"id\": 3, \"date\": \"2023-07-10\", \"comment\": \"* f/u on the update:\"}]'),
(109, 122, '[{\"id\": 0, \"date\": \"2023-06-08\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-08\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-08\", \"comment\": \"*client came for walk-in\"}, {\"id\": 3, \"date\": \"2023-06-13\", \"comment\": \"* f/u on the update:\"}]'),
(110, 123, '[{\"id\": 0, \"date\": \"2023-06-09\", \"comment\": \"*client provide their details via WS\"}, {\"id\": 1, \"date\": \"2023-06-09\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 2, \"date\": \"2023-06-09\", \"comment\": \"*sent revised quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-09\", \"comment\": \"*issued invoice to the client\"}]'),
(111, 124, '[{\"id\": 0, \"date\": \"2023-06-12\", \"comment\": \"*client provides their IC & SSM copy\"}, {\"id\": 1, \"date\": \"2023-06-12\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-06-12\", \"comment\": \"*client made the payment\"}]'),
(112, 125, '[{\"id\": 0, \"date\": \"2023-06-13\", \"comment\": \"* sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-10\", \"comment\": \"* f/u on the update:\"}]'),
(113, 126, '[{\"id\": 0, \"date\": \"2023-06-13\", \"comment\": \"* client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-13\", \"comment\": \"* sent quotation and brochure to the client via email\"}, {\"id\": 2, \"date\": \"2023-06-13\", \"comment\": \"* client will update soon\"}, {\"id\": 3, \"date\": \"2023-07-10\", \"comment\": \"* f/u on the update\"}]'),
(114, 127, '[{\"id\": 0, \"date\": \"2023-06-13\", \"comment\": \"* liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-13\", \"comment\": \"* client provides their details\"}, {\"id\": 2, \"date\": \"2023-06-13\", \"comment\": \"* sent photos to the client via WS\"}, {\"id\": 3, \"date\": \"2023-06-13\", \"comment\": \"* client will update soon\"}]'),
(115, 128, '[{\"id\": 0, \"date\": \"2023-06-15\", \"comment\": \"* client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-06-15\", \"comment\": \"* issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-06-15\", \"comment\": \"* client made the payment\"}]'),
(116, 129, '[{\"id\": 0, \"date\": \"2023-06-15\", \"comment\": \"* liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-15\", \"comment\": \"* client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-16\", \"comment\": \"* Mr Mehdi gave price RM 5.5k/full-day with computer set up and RM 5,900/Full-day with laptop set up\"}, {\"id\": 3, \"date\": \"2023-06-16\", \"comment\": \"* sent quotation to the client via WS\"}, {\"id\": 4, \"date\": \"2023-06-16\", \"comment\": \"* client will update soon\"}]'),
(117, 130, '[{\"id\": 0, \"date\": \"2023-06-15\", \"comment\": \"* liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-15\", \"comment\": \"* client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-15\", \"comment\": \"* sent photos to the client via WS\"}, {\"id\": 3, \"date\": \"2023-06-15\", \"comment\": \"* Mr Mehdi gave price RM 1.5k/Full-day and RM 1k/Half-day for suite 31-5\"}, {\"id\": 4, \"date\": \"2023-06-16\", \"comment\": \"* client provide new details\"}, {\"id\": 5, \"date\": \"2023-06-16\", \"comment\": \"* Mr Mehdi gave price RM 3k/Full-day and RM 2k/Full-day for whole unit 31-5\"}]'),
(118, 131, '[{\"id\": 0, \"date\": \"2023-06-16\", \"comment\": \"* liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-16\", \"comment\": \"* client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-16\", \"comment\": \"* sent brochure to the client\"}, {\"id\": 3, \"date\": \"2023-06-16\", \"comment\": \"* client will update soon\"}, {\"id\": 4, \"date\": \"2023-06-26\", \"comment\": \"*f/u on the update: client has found another place\"}]'),
(119, 132, '[{\"id\": 0, \"date\": \"2023-06-16\", \"comment\": \"* received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-06-16\", \"comment\": \"* liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-16\", \"comment\": \"* sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-16\", \"comment\": \"* client will update soon\"}]'),
(120, 133, '[{\"id\": 0, \"date\": \"2023-06-16\", \"comment\": \"* received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-06-16\", \"comment\": \"* liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-16\", \"comment\": \"* sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-06-16\", \"comment\": \"* client will update soon\"}, {\"id\": 4, \"date\": \"2023-06-27\", \"comment\": \"* client interested to sign up M&A package\"}, {\"id\": 5, \"date\": \"2023-06-27\", \"comment\": \"* issued invoice to the client\"}, {\"id\": 6, \"date\": \"2023-06-27\", \"comment\": \"* client made the payment\"}]'),
(121, 134, '[{\"id\": 0, \"date\": \"2023-06-16\", \"comment\": \"* liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-16\", \"comment\": \"* client provides their detail\"}, {\"id\": 2, \"date\": \"2023-06-16\", \"comment\": \"* sent quotation and brochure to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-16\", \"comment\": \"* client will update soon\"}, {\"id\": 4, \"date\": \"2023-07-10\", \"comment\": \"* f/u on the update\"}]'),
(122, 135, '[{\"id\": 0, \"date\": \"2023-06-19\", \"comment\": \"*liaised with the client through WhatsApp\"}, {\"id\": 1, \"date\": \"2023-06-19\", \"comment\": \"*sent brochure to the client \"}, {\"id\": 2, \"date\": \"2023-06-19\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-07-05\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 4, \"date\": \"2023-07-05\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 5, \"date\": \"2023-07-05\", \"comment\": \"*client made the payment \"}]'),
(123, 136, '[{\"id\": 0, \"date\": \"2023-06-19\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-19\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-19\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 3, \"date\": \"2023-06-23\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 4, \"date\": \"2023-06-23\", \"comment\": \"*client came for a walk-in\"}, {\"id\": 5, \"date\": \"2023-06-30\", \"comment\": \"*client will update soon\"}]'),
(124, 137, '[{\"id\": 0, \"date\": \"2023-06-19\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-19\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-06-19\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-06-19\", \"comment\": \"*client made the payment\"}]'),
(125, 139, '[{\"id\": 0, \"date\": \"2023-06-19\", \"comment\": \"*client came for a walk-in\"}, {\"id\": 1, \"date\": \"2023-06-19\", \"comment\": \"*Mr Mehdi gave price RM 3k/month for Suite 4 and RM 3.5k/month for Suite 6\"}, {\"id\": 2, \"date\": \"2023-06-20\", \"comment\": \"*sent quotation to the client via WS\"}, {\"id\": 3, \"date\": \"2023-06-20\", \"comment\": \"*client will update soon\"}]'),
(126, 140, '[{\"id\": 0, \"date\": \"2023-06-20\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-10\", \"comment\": \"* f/u on the update:\"}]'),
(127, 141, '[{\"id\": 0, \"date\": \"2023-06-20\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-20\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-20\", \"comment\": \"*client will update soon\"}]'),
(128, 142, '[{\"id\": 0, \"date\": \"2023-06-20\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-20\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-20\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-20\", \"comment\": \"*client will update soon\"}]'),
(129, 143, '[{\"id\": 0, \"date\": \"2023-06-20\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-20\", \"comment\": \"*Mr Mehdi gave pricing RM 2k/month for 2 PAX\"}, {\"id\": 2, \"date\": \"2023-06-20\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-20\", \"comment\": \"*client will update soon\"}]'),
(130, 144, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-21\", \"comment\": \"*Mr Mehdi gave pricing RM 2k/month for 2 PAX\"}, {\"id\": 3, \"date\": \"2023-06-21\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 4, \"date\": \"2023-06-22\", \"comment\": \"*sent another quotation to the client for 24 months\"}, {\"id\": 5, \"date\": \"2023-06-22\", \"comment\": \"*client will update soon\"}, {\"id\": 6, \"date\": \"2023-06-30\", \"comment\": \"*client came for a viewing\"}, {\"id\": 7, \"date\": \"2023-07-10\", \"comment\": \"*client came for a viewing to discuss further\"}]'),
(131, 145, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"*Mr Mehdi gave pricing RM 16k/1 year, RM 14k/2 years & RM 18k/6 months\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"*client will update soon\"}]'),
(132, 146, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*client will update soon\"}]');
INSERT INTO `novux_tables_comments` (`comments_id`, `comments_inquiry_id`, `comments_comment`) VALUES
(133, 147, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-21\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-21\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update\"}]'),
(134, 148, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*client will update soon\"}]'),
(135, 149, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-06-21\", \"comment\": \"*client made the payment\"}]'),
(136, 150, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-06-21\", \"comment\": \"*client made the payment\"}]'),
(137, 151, '[{\"id\": 0, \"date\": \"2023-06-21\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-21\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update: client cancelled the meeting\"}]'),
(138, 152, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update\"}]'),
(139, 153, '[{\"id\": 0, \"date\": \"2023-06-22\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-22\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-22\", \"comment\": \"*Mr Mehdi gave pricing\"}, {\"id\": 3, \"date\": \"2023-06-22\", \"comment\": \"*client will update soon\"}]'),
(140, 154, '[{\"id\": 0, \"date\": \"2023-06-23\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-23\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-26\", \"comment\": \"*client came for walk in\"}, {\"id\": 3, \"date\": \"2023-06-26\", \"comment\": \"*client interested to sign up M&A + DID package \"}, {\"id\": 4, \"date\": \"2023-06-26\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 5, \"date\": \"2023-06-26\", \"comment\": \"*client made the payment\"}]'),
(141, 155, '[{\"id\": 0, \"date\": \"2023-06-23\", \"comment\": \"*liaised with the client via email\"}, {\"id\": 1, \"date\": \"2023-06-23\", \"comment\": \"*client will come for a viewing\"}, {\"id\": 2, \"date\": \"2023-07-03\", \"comment\": \"*client came for a viewing\"}, {\"id\": 3, \"date\": \"2023-07-06\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 4, \"date\": \"2023-07-07\", \"comment\": \"*issued invoice to the client\"}]'),
(142, 156, '[{\"id\": 0, \"date\": \"2023-04-26\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-06-26\", \"comment\": \"*client gave their details\"}, {\"id\": 2, \"date\": \"2023-07-26\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 3, \"date\": \"2023-06-26\", \"comment\": \"*client will update soon\"}]'),
(143, 157, '[{\"id\": 0, \"date\": \"2023-06-26\", \"comment\": \"*liaised with the client via call\"}, {\"id\": 1, \"date\": \"2023-06-26\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-06-26\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update\"}]'),
(144, 158, '[{\"id\": 0, \"date\": \"2023-06-27\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-06-27\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-06-27\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-06-27\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-06-27\", \"comment\": \"*client made upfront payment\"}, {\"id\": 5, \"date\": \"2023-07-03\", \"comment\": \"*client made balance payment\"}]'),
(145, 159, '[{\"id\": 0, \"date\": \"2023-06-28\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-28\", \"comment\": \"*client came for a viewing\"}, {\"id\": 2, \"date\": \"2023-06-30\", \"comment\": \"*Mr Mehdi gave price RM 6k/per day for on weekdays and RM 7k/per day for on weekends\"}, {\"id\": 3, \"date\": \"2023-07-03\", \"comment\": \"*client came for another viewing\"}, {\"id\": 4, \"date\": \"2023-07-04\", \"comment\": \"*Mr Mehdi gave price RM 10k/per day \"}, {\"id\": 5, \"date\": \"2023-07-04\", \"comment\": \"*client will update soon\"}, {\"id\": 6, \"date\": \"2023-07-28\", \"comment\": \"*issued invoice to the client\"}]'),
(146, 160, '[{\"id\": 0, \"date\": \"2023-06-28\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-28\", \"comment\": \"*Mr Mehdi gave price RM 5k/month for Suite 9 & 10 (31-1)\"}, {\"id\": 2, \"date\": \"2023-06-28\", \"comment\": \"*sent quotation to the client\"}, {\"id\": 3, \"date\": \"2023-06-28\", \"comment\": \"*client will update soon\"}]'),
(147, 161, '[{\"id\": 0, \"date\": \"2023-06-30\", \"comment\": \"*sent brochure to the client\"}, {\"id\": 1, \"date\": \"2023-06-30\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update\"}]'),
(148, 162, '[{\"id\": 0, \"date\": \"2023-06-30\", \"comment\": \"*client came for walk-in\"}, {\"id\": 1, \"date\": \"2023-06-30\", \"comment\": \"*client confirmed to rent 31-5 & 31-6A\"}, {\"id\": 2, \"date\": \"2023-06-30\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-06-30\", \"comment\": \"*client made the payment\"}]'),
(149, 163, '[{\"id\": 0, \"date\": \"2023-06-30\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-06-30\", \"comment\": \"*sent photos to the client\"}, {\"id\": 2, \"date\": \"2023-07-05\", \"comment\": \"*client provide new details\"}, {\"id\": 3, \"date\": \"2023-07-05\", \"comment\": \"*Mr Mehdi gave price RM 2k/3 hours for shooting\"}, {\"id\": 4, \"date\": \"2023-07-05\", \"comment\": \"*client will update soon\"}, {\"id\": 5, \"date\": \"2023-07-17\", \"comment\": \"*client provide new date for shooting\"}, {\"id\": 6, \"date\": \"2023-07-17\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 7, \"date\": \"2023-07-18\", \"comment\": \"*client made the payment\"}]'),
(150, 164, '[{\"id\": 0, \"date\": \"2023-07-03\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-07-03\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 2, \"date\": \"2023-07-03\", \"comment\": \"*client will update soon\"}, {\"id\": 3, \"date\": \"2023-07-10\", \"comment\": \"*f/u on the update: no response\"}, {\"id\": 4, \"date\": \"2023-07-28\", \"comment\": \"*f/u on the update\"}]'),
(151, 165, '[{\"id\": 0, \"date\": \"2023-07-03\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-07-03\", \"comment\": \"*Mr Mehdi gave price RM 1k/5 hours for CEO Room\"}, {\"id\": 2, \"date\": \"2023-07-03\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-07-03\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-07-05\", \"comment\": \"*client made full payment\"}]'),
(152, 166, '[{\"id\": 0, \"date\": \"2023-07-04\", \"comment\": \"*client gave their details\"}, {\"id\": 1, \"date\": \"2023-07-04\", \"comment\": \"*Mr Mehdi gave price RM 1k/4 hours for CEO Room 31-3\"}, {\"id\": 2, \"date\": \"2023-07-04\", \"comment\": \"*client came for a viewing\"}, {\"id\": 3, \"date\": \"2023-07-04\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-07-04\", \"comment\": \"*client made the payment\"}]'),
(153, 167, '[{\"id\": 0, \"date\": \"2023-07-06\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-07-06\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-07-06\", \"comment\": \"*client will update soon\"}]'),
(154, 169, '[{\"id\": 0, \"date\": \"2023-07-28\", \"comment\": \"*f/u on the update\"}]'),
(155, 170, '[{\"id\": 0, \"date\": \"2023-07-06\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-07-06\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-07-06\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-07-06\", \"comment\": \"*client made the payment\"}]'),
(156, 171, '[{\"id\": 0, \"date\": \"2023-07-06\", \"comment\": \"*client interested to sign up M&A package\"}, {\"id\": 1, \"date\": \"2023-07-06\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-07-06\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-07-06\", \"comment\": \"*client made the payment\"}]'),
(157, 172, '[{\"id\": 0, \"date\": \"2023-07-07\", \"comment\": \"*client provide their IC & SSM \"}, {\"id\": 1, \"date\": \"2023-07-07\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 2, \"date\": \"2023-07-07\", \"comment\": \"*client made the payment\"}]'),
(158, 173, '[{\"id\": 0, \"date\": \"2023-07-28\", \"comment\": \"*f/u on the update:\"}, {\"id\": 0, \"date\": \"2023-07-10\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-07-10\", \"comment\": \"*sent brochure to the client WS\"}, {\"id\": 2, \"date\": \"2023-07-10\", \"comment\": \"*client will update soon\"}]'),
(159, 174, '[{\"id\": 0, \"date\": \"2023-07-10\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-10\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-07-11\", \"comment\": \"*client came for signing up \"}, {\"id\": 3, \"date\": \"2023-07-11\", \"comment\": \"*client interested with M&A + DID\"}, {\"id\": 4, \"date\": \"2023-07-11\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 5, \"date\": \"2023-07-11\", \"comment\": \"*client made the payment\"}]'),
(160, 175, '[{\"id\": 0, \"date\": \"2023-07-12\", \"comment\": \"*received inquiry via email\"}, {\"id\": 1, \"date\": \"2023-07-12\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 2, \"date\": \"2023-07-12\", \"comment\": \"*sent quotation and brochure to the client via email\"}, {\"id\": 3, \"date\": \"2023-07-12\", \"comment\": \"*client will update soon\"}, {\"id\": 4, \"date\": \"2023-07-18\", \"comment\": \"*client postponed their meeting\"}]'),
(161, 176, '[{\"id\": 0, \"date\": \"2023-07-13\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-13\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-07-13\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-07-13\", \"comment\": \"*client will update soon\"}]'),
(162, 177, '[{\"id\": 0, \"date\": \"2023-07-13\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-13\", \"comment\": \"*client will update soon\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"*client interested to sign up M&A + DID\"}, {\"id\": 3, \"date\": \"2023-07-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 4, \"date\": \"2023-07-18\", \"comment\": \"*client made the payment\"}]'),
(163, 178, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"*client interested to sign up M&A + DID\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"*client provide their IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-07-18\", \"comment\": \"*client made the payment\"}]'),
(164, 185, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"*liaised with the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"*client provide IC & SSM copy\"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"*issued invoice to the client\"}, {\"id\": 3, \"date\": \"2023-07-18\", \"comment\": \"*client made the payment\"}]'),
(165, 186, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-07-18\", \"comment\": \"*sent quotation to the client \"}, {\"id\": 2, \"date\": \"2023-07-18\", \"comment\": \"*issued invoice to the client\"}]'),
(166, 187, '[{\"id\": 0, \"date\": \"2023-07-18\", \"comment\": \"*sent brochure to the client via WS\"}]'),
(167, 188, '[{\"id\": 0, \"date\": \"2023-07-19\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-07-19\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 2, \"date\": \"2023-07-19\", \"comment\": \"*client will update soon\"}]'),
(168, 189, '[{\"id\": 0, \"date\": \"2023-07-20\", \"comment\": \"*liaised with the client via phone call\"}, {\"id\": 1, \"date\": \"2023-07-20\", \"comment\": \"*client provide their details\"}, {\"id\": 2, \"date\": \"2023-07-20\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 3, \"date\": \"2023-07-20\", \"comment\": \"*client will update soon\"}]'),
(169, 190, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"*Mr Mehdi gave price RM 1.8k/full-day for shooting price\"}, {\"id\": 2, \"date\": \"2023-07-21\", \"comment\": \"*client will update soon\"}]'),
(170, 191, '[{\"id\": 0, \"date\": \"2023-07-21\", \"comment\": \"*client provide their details\"}, {\"id\": 1, \"date\": \"2023-07-21\", \"comment\": \"*liaised with the client via call\"}, {\"id\": 2, \"date\": \"2023-07-21\", \"comment\": \"*Mr Mehdi gave price RM 2.5k/month for Suite 4 and RM 3.5k/month for Suite 6\"}, {\"id\": 3, \"date\": \"2023-07-21\", \"comment\": \"*sent quotation to the client via email\"}, {\"id\": 4, \"date\": \"2023-07-21\", \"comment\": \"*client will update soon\"}]'),
(171, 168, '[{\"id\": 0, \"date\": \"2023-07-06\", \"comment\": \"*sent brochure to the client via WS\"}, {\"id\": 1, \"date\": \"2023-07-06\", \"comment\": \"*client will update soon\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_customers`
--

DROP TABLE IF EXISTS `novux_tables_customers`;
CREATE TABLE IF NOT EXISTS `novux_tables_customers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `business` varchar(150) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_customers`
--

INSERT INTO `novux_tables_customers` (`id`, `name`, `position`, `email`, `address`, `phone`, `company`, `business`, `size`, `created`) VALUES
(35, 'Ms Nurul Ain', '', 'nurul_ain@gmail.com', '', '+60 13 396 7053', '', '', '', '2023-03-27 09:55:06'),
(36, 'Ms Alla & Mr Paul', '', 'allatabeleva@mynalabs.ai', '', '+7 981 998 01 06', 'Neiro.ai', '', '', '2023-03-27 10:03:11'),
(37, 'Mr Mathivarman ', '', 'sales2u@medleaphs.com', '', '+60 16 719 3808', 'Medleap Healthcare Solutions Sdn. Bhd', '', '', '2023-03-27 10:05:00'),
(38, 'Mr Lim Kah Seng', '', 'kahseng@upstudio.my', '', '+60 16 993 9427', 'UpStudioMalaysia', '', '', '2023-03-27 10:05:55'),
(39, 'Ms S', '', 'ms_s@gmail.com', '', '+60 17 654 3795', '', '', '', '2023-03-27 10:08:13'),
(40, 'Mr L.SYH', '', 'l.syh@gmail.com', '', '+60 16 246 8066', '', '', '', '2023-03-27 10:09:35'),
(41, 'Mr Amiin ', '', 'iamgabere@gmail.com', '', '+60 19 363 5390', 'Pusat Bahasa Britannia Sdn Bhd ', '', '', '2023-03-27 10:11:53'),
(42, 'Ms Low', '', 'low@gmail.com', '', '+60 12 391 1953', '', '', '', '2023-03-28 09:45:28'),
(43, 'Mr Kelvin', '', 'kelvinong@initiumrisk.com', '', '+60', '', '', '', '2023-03-28 09:45:47'),
(44, 'Ms Ooe', '', 'ooe@gmail.com', '', '+60 18 472 8936', '', '', '', '2023-03-28 10:44:56'),
(45, 'Mr Alex', '', 'alex@gmail.com', '', '+60 14 607 3757', '', '', '', '2023-03-28 10:45:20'),
(46, 'Ms Julian Tan', '', 'julia.tan@maybulk.com.my', '', '+60', 'Malaysian Bulk Carriers', '', '', '2023-03-28 10:47:17'),
(47, 'Mr Julian Tay', '', 'julian.tay@aonic.com', '', '+60 12 631 9812', 'Poladrone Solutions Sdn Bhd', '', '', '2023-03-28 10:47:44'),
(48, 'Mr Faizul', '', 'faizulyin@hotmail.com', '', '+60 16 337 3646', 'Invensi Sdn Bhd', '', '', '2023-03-28 10:51:22'),
(49, 'Mr Fakhrul Ikhwan', '', 'fakhrulikhwan.as@gmail.com', '', '+60 17 350 8198', '', '', '', '2023-03-28 10:51:55'),
(50, 'Ms Ainaa', '', 'ainaaazman@yahoo.com', '', '+60 12 688 1758', 'Pertubuhan Amal Peneraju Prihatin', '', '', '2023-03-28 10:53:21'),
(51, 'Ms Shahieda', '', 'nur.shahieda@biolife.com.my', '', '+60 18 292 5965', '', '', '', '2023-03-28 10:53:45'),
(52, 'Ms Sara', '', 'sara@gmail.com', '', '+60 12 240 6221', '', '', '', '2023-03-28 10:55:07'),
(53, 'Mr Saravanan ', '', 'saravanan@gmail.com', '', '+60 12 453 3271', '', '', '', '2023-03-28 10:55:38'),
(54, 'Mr Yong', '', 'yong@brandonteam.com', '', '+60 19 635 7333', 'Brandon Team', '', '', '2023-03-28 10:56:08'),
(55, 'Ms Qinnie', '', 'qinnie@gmail.com', '', '+60 10 762 5016', '', '', '', '2023-03-28 10:58:01'),
(56, 'Ms Dawn Chen', '', 'etc.dawnc@gmail.com', '', '+60 12 689 0600', 'ETC Studio', '', '', '2023-03-28 10:58:23'),
(57, 'Ms Paggie', '', 'paggie@gmail.com', '', '+60 14 232 4598', '', '', '', '2023-03-28 10:59:05'),
(58, 'Mr Tharma ', '', 'tharma@gmail.com', '', '+60 17 200 9137', '', '', '', '2023-03-28 11:02:30'),
(59, 'Ms Dwi Sulistiyani', '', 'dwi_sulistiyani@gmail.com', '', '+60 17 305 5212', '', '', '', '2023-03-28 11:03:07'),
(60, 'Ms Carmen', '', 'carmen@gmail.com', '', '+60 12 681 4123', 'Orissan Plt', '', '', '2023-03-28 11:03:35'),
(61, 'Mr Zohaib', '', 'zohaib_aslam@hotmail.com', '', '+60 11 1688 3786', 'Womespire Skills Development Training Centre (Malaysia) Sdn. Bhd.', '', '', '2023-03-28 11:12:13'),
(62, 'Ms Fatimah', '', 'fatimah@gmail.com', '', '+60 12 293 0897', '', '', '', '2023-03-28 11:12:40'),
(63, 'Mr Ming Yuan', '', 'mingyuan@gmail.com', '', '+60 12 507 1808', '', '', '', '2023-03-28 11:13:35'),
(64, 'Ms Kuah', '', 'kuah@gmail.com', '', '+60 12 676 1281', '', '', '', '2023-03-28 11:14:00'),
(65, 'Ms Aswanie', '', 'aswanieeffindi28@gmail.com', '', '+60 14 367 9771', 'Numa Wear Sdn Bhd ', '', '', '2023-03-28 11:14:50'),
(66, 'Mr Chris', '', 'Fryall112233@gmail.com', '', '+60 12 665 5118', 'Fly All Design Online Trading', '', '', '2023-03-28 11:26:41'),
(67, 'Ms Aida', '', 'aida@gmail.com', '', '+60 18 354 3995', 'Sareeda Rizq Enterprise', '', '', '2023-03-28 11:27:19'),
(68, 'Mr Nicholas', '', 'Elitefigure88@gmail.com', '', '+60 16 553 4326', 'Bluestone Advisory Sdn Bhd', '', '', '2023-03-31 12:16:06'),
(69, 'Mr Gan', '', 'aarongan12@gmail.com', '', '+60 11 1122 0199', '', '', '', '2023-04-06 14:10:15'),
(70, 'Mr Dexter', '', '-', '', '+60 12 928 3103', '', '', '', '2023-04-06 14:10:35'),
(71, 'Mr Sunil', '', 'sunilalbi1980@gmail.com', '', '+974 6683 0330', 'Density Engineering Sdn Bhd', '', '', '2023-04-06 14:12:53'),
(72, 'Ms Reen', '', 'xanggunx@gmail.com', '', '+60 17 255 9352', '', '', '', '2023-04-06 14:15:15'),
(73, 'Mr Chee Yong Ho ', '', 'bbyy111333@gmail.com', '', '+60 11 3622 3730', 'HK ALLIED ENGINEERING & CONSTRUCTION SDN. BHD.', '', '', '2023-04-06 14:16:01'),
(74, 'Ms Nurul Izzah', '', 'Nurulizzah.nor@singlebuyer.com.my', '', '+60 11 5335 7808', '', '', '', '2023-04-06 14:18:47'),
(75, 'Ms Intan', '', 'intanshafika.muhama@petronas.com', '', '+60 11 6301 0246', 'INSTEP (PETRONAS)', '', '', '2023-04-06 14:35:13'),
(77, 'Ms Irlya', '', 'irlya@gmail.com', '', '+60 17 332 0697', '', '', '', '2023-04-10 10:35:29'),
(78, 'Mr Roshan', '', 'roshan@gmail.com', '', '+60 19 384 9133', '', '', '', '2023-04-13 13:44:17'),
(79, 'Ms Stephanie', '', '-', '', '+60 12 403 0108', '', '', '', '2023-04-13 13:45:15'),
(80, 'Ms Simone', '', 'simone@gmail.com', '', '+60 12 923 9862', '', '', '', '2023-04-13 13:46:08'),
(81, 'Mr Rahmad', '', 'rahmad.nazrin.syah@gmail.com', '', '+60 18 206 6609', '', '', '', '2023-04-13 13:50:37'),
(82, 'Mr Malik', '', 'zeksid2711@gmail.com', '', '+60 19 658 0827', 'Big Bull International Sdn Bhd', '', '', '2023-04-14 12:11:52'),
(84, 'Ms Nurul', '', 'cicentral@cimalaysia.com.my', '', '+60 16 261 0827', 'CIMA Malaysia', '', '', '2023-04-14 12:16:29'),
(85, 'Mr Ryan', '', '-', '', '+60 11 1852 1386', 'Annaba Resources', '', '', '2023-04-14 12:24:28'),
(86, 'Ms Dian', '', '-', '', '+60 11 1231 1233', '', '', '', '2023-04-14 12:25:11'),
(87, 'Mr Justin', '', '-', '', '+60 12 324 6769', '', '', '', '2023-04-14 12:25:28'),
(88, 'Ms Izhwani', '', 'izhwani87@gmail.com', '', '+60 11 1748 4890', 'MAXXAN REALTY', '', '', '2023-04-14 12:25:56'),
(89, 'Mr Leong', '', 'leong.wai.sing@deme-group.com', 'DEME Group\n', '+65 9636 8530', '', '', '', '2023-04-14 12:26:31'),
(90, 'Mr Asyraf', '', '-', '', '+60 17 215 3698', 'MY4ACOM SDN BHD', '', '', '2023-04-14 12:26:53'),
(91, 'Ms Catherine ', '', 'catherine@the-credence.com', '', '+60 11 1237 3794', 'Credence Consulting (M) Sdn Bhd', '', '', '2023-04-14 12:27:33'),
(92, 'Ms Pang', '', 'yt_6288@yahoo.com', '', '+60 12 677 2719', '', '', '', '2023-04-14 12:28:19'),
(93, 'Mr Koo', '', '-', '', '+60 16 678 8663', '', '', '', '2023-04-14 12:28:35'),
(94, 'Ms Joanna Ooi', '', 'Joanna.Ooi1@reckitt.com', '', '+60 16 322 5155', 'RB Malaysia', '', '', '2023-04-14 12:28:57'),
(95, 'Ms Amy Kwong', '', 'amy.kwong@sap.com', '', '+60', 'SAP (M) Sdn Bhd', '', '', '2023-04-14 12:57:52'),
(96, 'Ms Celine', '', 'celine@businesstools.asia', '', '+60 16 383 8311', 'BT Corporate Services Sdn Bhd', '', '', '2023-04-14 12:58:31'),
(102, 'Mr Gareth Wong', '', 'pointabovemalaysia@gmail.com', '', '+60 16 444 0833', '', '', '', '2023-04-19 12:54:49'),
(103, 'Mr John', '', 'jiangshusheng3@gmail.com', '', '+60 11 6995 3583', '', '', '', '2023-04-19 12:55:12'),
(101, 'Mr Ganesh', '', '-', '', '+60 12 303 7524', '', '', '', '2023-04-19 12:54:05'),
(104, 'Mr Idros', '', 'idros@iminda.com.my', '', '+60 17 200 0130', '', '', '', '2023-04-19 12:55:28'),
(105, 'Ms Awana', '', 'hr@momentum-commerce.com', '', '+60 12 363 7586', 'Momentum Commerce Sdn Bhd', '', '', '2023-04-19 12:56:03'),
(106, 'Ms Syamira', '', '-', '', '+60 12 792 0969', '', '', '', '2023-04-19 12:56:39'),
(107, 'Mr Kai Wen', '', '-', '', '+1 626 869 8891', '', '', '', '2023-04-19 12:57:01'),
(108, 'Ms Margaret', '', '-', '', '+60 12 363 4289', '', '', '', '2023-04-19 12:57:22'),
(109, 'Mr Jouya', '', 'jouya@movingimage.my', '', '+60 12 331 1869', 'Moving Image', '', '', '2023-04-19 12:58:35'),
(110, 'Mr Chee Yong Ho', '', 'bbyy111333@gmail.com', '', '+60 11 3622 3730', 'KK HEAVY ENGINEERING & CONSTRUCTION', '', '', '2023-04-20 12:52:48'),
(111, 'Mr Herry', '', 'herrykhairuddin.pinkandgrey@gmail.com', '', '+60 19 305 6453', 'Pink & Grey Enterprise', '', '', '2023-04-20 14:06:19'),
(112, 'Mr Lim', '', 'sfcm.operation@gmail.com', '', '+60 11 2528 4984', '', '', '', '2023-04-26 14:36:54'),
(113, 'Mr Richard', '', 'Guocong@greaterheat.com', '', '+65 8502 0243', 'Greaterheat Pte Ltd', '', '', '2023-04-26 14:41:55'),
(114, 'Ms Julie', '', '-', '', '+60 17 350 8676', '', '', '', '2023-04-26 14:48:03'),
(115, 'Mr Lee', '', '-', '', '+60 12 626 4001', '', '', '', '2023-04-26 14:51:01'),
(116, 'Ms Liz Ho', '', 'krakenheist12@gmail.com', '', '+60 11 5993 8062', 'Kraken Heist', '', '', '2023-04-26 14:52:43'),
(117, 'Mr Tanson Khoo', '', 'onersc000@gmail.com', '', '+60 11 5764 9263', '', '', '', '2023-04-26 17:42:46'),
(118, 'Ms Wong', '', '-', '', '+60 10 203 5808', '', '', '', '2023-04-27 17:17:07'),
(119, 'Mr Norman', '', '-', '', '+60 12 605 0049', 'ELN', '', '', '2023-04-27 17:18:32'),
(120, 'Ms Rini', '', 'norini@exabytes.com', '', '+60 14 907 4308', '', '', '', '2023-04-27 17:22:04'),
(121, 'MR DT', '', '-', '', '+60 12 333 9733', 'The Craftsmen Bearer Sdn Bhd', '', '', '2023-04-27 17:26:27'),
(122, 'Mr Syamsul', '', 'msyamsularif.nordin@petronas.com', '', '+60 17 472 9054', 'PETRONAS CARIGALI SDN', '', '', '2023-04-28 10:41:17'),
(123, 'Mr Sim', '', 'nicholas.sim@samaiden.com.my', '', '+60 10 369 1304', 'SAMAIDEN', '', '', '2023-04-28 17:49:34'),
(124, 'Mr Ben', '', 'ben2@live.com.my', '', '+60 12 737 3856', '', '', '', '2023-05-02 10:56:24'),
(125, 'Ms Jessica', '', '-', '', '+60 14 301 2423', '', '', '', '2023-05-05 11:53:43'),
(126, 'Mr Sim', '', 'nicholas.sim@samaiden.com.my', '', '+60 10 369 1304', 'SAMAIDEN GROUP BERHAD', '', '', '2023-05-05 11:57:57'),
(127, 'Mr Allen', '', 'Allen.Teh@ingenuous.com.au', '', '+60 12 284 2300', '', '', '', '2023-05-05 17:24:33'),
(128, 'Mr M.Zulkifli', '', 'yougotrainingmedia@gmail.com', '', '+60 12 345 6055', 'YouGo Training', '', '', '2023-05-05 17:28:06'),
(129, 'Ms Peggie Woo', '', 'peggiewoo@sterlington.asia', '', '+60 18 207 7599', 'Sterlington Sdn Bhd', '', '', '2023-05-05 17:32:51'),
(130, 'Ms Tan Khang Ni ', '', 'khangni@silverline.com.my', '', '+60 12 625 0711', 'Silverline Productions', '', '', '2023-05-05 17:38:57'),
(131, 'Ms Aini', '', 'aini@rmjconsulting.com.my', '', '+60 11 3364 1817', 'RMJ Consulting', '', '', '2023-05-05 17:42:34'),
(132, 'Mr Satish', '', 'sathish.kumar@archerwell.com', '', '+60 17 374 0411', 'Concern UM Indian Graduate', '', '', '2023-05-12 11:50:28'),
(133, 'Ms Farah', '', 'farahshiraj.hz@wellkinetics.com.my', '', '+60 14 302 4173', 'Well Kinetics Sdn Bhd', '', '', '2023-05-12 11:53:39'),
(134, 'Mr Yang', '', 'elfyang@gmail.com', '', '+60 12 693 0345', '', '', '', '2023-05-12 11:56:29'),
(135, 'Mr Zarif', '', 'zarif@digitalpadu.com.my', '', '+60 11 1094 0391', 'Digital Padu Sdn Bhd', '', '', '2023-05-15 13:37:12'),
(136, 'Ms Miza Izzati', '', 'mizaizzati.rustamsha@petronas.com', '', '+60 16 206 5158', 'PETRONAS LNG LTD', '', '', '2023-05-15 13:41:00'),
(137, 'Mr Eddy', '', 'eddyshahrizal@gmail.com', '', '+60 12 291 0111', 'Aspireworks Holdings Sdn Bhd', '', '', '2023-05-15 13:44:01'),
(138, 'Ms Mia', '', '-', '', '+60 17 927 3382', '', '', '', '2023-05-15 13:50:39'),
(139, 'Mr Eng Zhen Shen', '', 'zhen.shen@yayasantar.org.my', '', '+60 19 312 9239', 'Yayasan Tunku Abdul Rahman', '', '', '2023-05-15 13:53:21'),
(140, 'Ms Loo / Ms Ooi', '', 'xiooxin.nextventure@gmail.com', '', '+60 11 5879 4601', '', '', '', '2023-05-15 14:00:41'),
(141, 'Ms Eliza', '', '-', '', '+65 8360 7434', '', '', '', '2023-05-15 14:21:10'),
(142, 'Ms Dhea', '', 'dheasorfina@hrdcorp.gov.my', '', '+60 12 779 1051', 'HRD Corp', '', '', '2023-05-15 14:45:52'),
(143, 'Ms Melor Baiduri', '', 'melor@telcowin.com', '', '+60 16 331 6994', 'Telcowin Sdn Bhd', '', '', '2023-05-15 14:59:53'),
(144, 'Ms Charmaine', '', 'charmaine.goh@nxg-global.com', '', '+60 10 231 0987', 'NXG Global Sdn. Bhd', '', '', '2023-05-15 15:06:39'),
(145, 'Mr Nash', '', 'nashrur7@gmail.com', '', '+60 16 242 7613', 'Creative Stew Sdn Bhd', '', '', '2023-05-19 11:05:12'),
(146, 'Mr Hilmy', '', 'hmohd7854@gmail.com', '', '+60 11 3960 4215', 'Astro', '', '', '2023-05-19 11:27:22'),
(147, 'Ms Jessica', '', 'jingern.uptree@gmail.com', '', '+60 18 761 9033', 'UP TREE', '', '', '2023-05-19 11:29:50'),
(148, 'Ms Zegna Lim', '', 'zegna.lim@4uinstitute.net', '', '+60', '4U Training', '', '', '2023-05-19 11:30:34'),
(149, 'Mr Azahari ', '', 'mazza@ezedenergy.com', '', '+60 11 2888 7778', 'Ezed Energy Sdn Bhd', '', '', '2023-05-19 11:31:13'),
(150, 'Mr Kee Hui Jiang', '', '-', '', '+60 16 982 2000', '', '', '', '2023-05-19 11:34:11'),
(151, 'Mr Kadir', '', '-', '', '+60 16 345 2841', 'Jk Video Creation', '', '', '2023-05-19 11:35:41'),
(152, 'Mr Alex Wong', '', 'alexwongcn@gwm.com.my', '', '+60 12 358 8008', '', '', '', '2023-05-19 11:38:55'),
(153, 'Mr Dale', '', 'dale@dademinvestments.co.za', '', '+27 81 231 3006', 'Dadem Investments Pty Ltd', '', '', '2023-05-19 11:43:05'),
(154, 'Mr Malcolm', '', 'office@gelumbangdigital.com.my', '', '+65 8376 6684', 'PERKHIDMATAN ELEKTRONIK PIAMO SDN BHD', '', '', '2023-05-19 11:46:54'),
(155, 'Ms Melanie', '', '-', '', '+60 12 211 7625', 'Zico Advisory', '', '', '2023-05-19 11:47:43'),
(156, 'Mr Tan', '', 'Terrancetan0720@gmail.com', '', '+65 8376 6684', 'Tera Algorithm Cloud Technology PLT', '', '', '2023-05-19 11:48:47'),
(157, 'Mr Wayne', '', 'ylim1956@gmail.com', '', '+60 19 225 0288', '', '', '', '2023-05-24 10:39:45'),
(158, 'Ms Lizz', '', 'lizz@coinstore.com', '', '+65 8386 3616', 'Coinstore Pte Ltd', '', '', '2023-05-24 10:40:27'),
(159, 'Mr Allan', '', 'alan@apylaw.com.my', '', '+60 16 499 6202', 'Amanda Pang & Yee Advocates & Solicitos', '', '', '2023-05-24 10:41:00'),
(160, 'Mr Danny', '', 'chunkiatchan@gmail.com', '', '+60 16 636 7598', '', '', '', '2023-05-24 10:42:37'),
(161, 'Mr Wayne', '', 'ylim1956@gmail.com', '', '+60 19 225 0288', '', '', '', '2023-05-26 17:26:32'),
(162, '-', '', 'qliqbait@gmail.com', '', '+60 11 4047 6738', 'QLIQBAIT', '', '', '2023-05-26 17:27:20'),
(163, 'Mr Alan ', '', 'alan@apylaw.com.my', '', '+60 16 499 6202', 'Amanda Pang & Yee Advocates & Solicitors', '', '', '2023-05-26 17:28:16'),
(164, 'Mr Azman ', '', 'azman7one@gmail.com', '', '+60 10 916 5051', 'Metaview Inc', '', '', '2023-05-26 17:29:38'),
(165, 'Ms Bell', '', '-', '', '+60 10 235 1078', 'MMG Advance', '', '', '2023-05-29 14:37:34'),
(166, 'Ms Nadhirah MR', '', '-', '', '+60 13 790 7185', '', '', '', '2023-05-29 14:38:10'),
(167, 'Mr Faiz Fitri', '', 'faiz.fitri11@gmail.com', '', '+60 17 312 3112', '', '', '', '2023-05-29 14:40:35'),
(168, 'Mr Farid', '', '-', '', '+60 14 513 5832', '', '', '', '2023-05-29 14:40:56'),
(169, 'Ms Wang Pui Leng ', '', 'puileng_wang@acapalm.com', '', '+60 19 757 5043', '', '', '', '2023-05-29 14:41:29'),
(170, 'Ms Arifah', '', '-', '', '+60 12 532 5338', '', '', '', '2023-05-29 14:41:44'),
(171, '-', '', '-', '', '+60 14 238 9902', 'Alaf Sinergi Sdn Bhd', '', '', '2023-05-29 14:42:08'),
(172, 'Ms Kah Yee', '', 'kaiee0818@gmail.com', '', '+60 14 644 0384', 'SayHey Enterprise', '', '', '2023-05-29 14:42:38'),
(173, 'Ms Chaynee', '', 'chaynee.g@bluemoonventures.org', '', '+60 16 216 9849', 'BV Global Trading', '', '', '2023-05-29 14:43:27'),
(174, 'Mr Logan', '', 'logansoo@bismoment.com', '', '+60 11 2316 2344', 'LENAYUS PETROCHEMICAL SDN. BHD.', '', '', '2023-05-30 10:35:08'),
(175, 'Ms Kristy', '', '-', '', '+60 16 747 8881', '', '', '', '2023-06-02 11:55:17'),
(176, 'Mr Bob', '', 'bobaspires@gmail.com', '', '+60 13 605 8763', 'Aspires Sdn Bhd', '', '', '2023-06-02 15:54:17'),
(177, 'Ms Venice', '', 'vgrowmanagement2u@gmail.com', '', '+60 17 282 3078', 'Vgrow Excellence Sdn Bhd ', '', '', '2023-06-02 15:54:55'),
(178, 'Mr Zailani', '', '-', '', '+60 10 205 9418', 'Global Hafi Enterprise', '', '', '2023-06-02 15:55:33'),
(179, 'Mr Faisal', '', 'Faisalshahimee@gmail.com', '', '+60 17 323 8733', 'TK Digitize Sdn. Bhd', '', '', '2023-06-02 17:40:07'),
(180, 'Mr Mark', '', '-', '', '+60 16 220 2050', '', '', '', '2023-06-09 17:12:42'),
(181, 'Mr Ridzuan', '', '-', '', '+60 12 245 6963', '', '', '', '2023-06-09 17:18:56'),
(182, 'Mr Ganesh', '', '-', '', '+60 12 303 7524', '', '', '', '2023-06-09 17:21:41'),
(183, 'Mr Badar', '', 'info@iaglob.com', '', '+968 9951 0015', 'International Academy', '', '', '2023-06-09 17:23:26'),
(184, 'Mr Kong', '', 'office@codleadersb.com', '', '+60 11 3129 9526', 'COD Leaders Sdn Bhd', '', '', '2023-06-13 10:31:46'),
(185, 'Ms Bailey', '', '-', '', '+60 12 229 3682', '', '', '', '2023-06-16 14:08:51'),
(186, 'Ms Lotte De Wijn', '', 'lottedewijn@gmail.com', '', '+31 6 34853223', 'ZoniQ', '', '', '2023-06-16 14:10:03'),
(187, 'Ms Sarah', '', '-', '', '+60 18 272 1341', '', '', '', '2023-06-16 14:10:29'),
(188, 'Mr Alex', '', '-', '', '+60 17 318 2890', 'Eagle Vision Resources', '', '', '2023-06-16 14:11:43'),
(189, 'Mr Jordan', '', 'jordan@gpexcentral.org', '', '+60 12 669 6001', 'GPEX Central Sdn Bhd', '', '', '2023-06-16 14:12:57'),
(190, 'Ms Kasmine', '', '-', '', '+60 16 293 6117', '', '', '', '2023-06-16 14:13:14'),
(191, 'Ms Adriana', '', '-', '', '+60 11 3252 8998', '', '', '', '2023-06-16 14:13:39'),
(192, 'Mr Xiang Hong', '', 'xianghong@briohr.com', '', '+60 19 253 9944', '', '', '', '2023-06-16 16:48:55'),
(193, 'Ms Nuraleesya Ali', '', 'n.aleesya.ali@gmail.com', '', '+60 14 356 9478', '', '', '', '2023-06-16 16:49:55'),
(194, 'Mr Kenrick', '', 'kenrick@capitalfront.biz', '', '+60 16 280 9383', 'Capital Front', '', '', '2023-06-16 17:37:08'),
(195, 'Mr Syevesther', '', '-', '', '+60 16 842 5422', 'Syversoft Enterprise', '', '', '2023-06-20 14:03:35'),
(196, 'Ms Shashi', '', 'shashivarmaan.thevaraj@yayasantar.org.my', '', '+60 11 3980 1664', 'Yayasan Tunku Abdul Rahman', '', '', '2023-06-20 14:04:11'),
(197, 'Mr Wang', '', 'lumeoxmalaysia@gmail.com', '', '+60 16 206 6998', 'Lumeox Malaysia Sdn Bhd', '', '', '2023-06-20 14:04:48'),
(198, 'Mr Jack', '', '-', '', '+60 18 981 0724', 'Cursemation Technology', '', '', '2023-06-20 14:05:29'),
(200, 'Mr Chelvam', '', '-', '', '+60 12 296 0357', 'Kejavasto Synergy Resources', '', '', '2023-06-22 09:42:35'),
(201, 'Ms Leena', '', '-', '', '+60 11 6086 3884', '', '', '', '2023-06-22 09:42:50'),
(202, 'Ms Abi', '', 'nursakinah2420@gmail.com', '', '+60 13 654 5979', ' BeeZeeBee HUB LTD', '', '', '2023-06-22 09:43:25'),
(203, 'Ms Jessy', '', 'jessyhoo91@gmail.com', '', '+60 11 3148 8969', '1STEP Pest Control Services Pte Ltd', '', '', '2023-06-22 09:44:16'),
(204, 'Ms Yvonne Low', '', 'yvonne.low@metcore.com.sg', '', '+65 8522 7208', 'Metcore Sdn Bhd', '', '', '2023-06-22 09:44:51'),
(205, 'Mr Pala', '', 'Palani@languagetalentsolutions.com', '', '+60 16 226 6441', 'HR Tag', '', '', '2023-06-22 09:45:19'),
(206, 'Ms Rufaidah', '', '-', '', '+60 13 613 0104', '', '', '', '2023-06-22 09:45:42'),
(207, 'Mr Pratul Chandra', '', 'pratul@trainingworld360.com', '', '+91 99973 67766', 'Trainingworld360', '', '', '2023-06-22 09:46:13'),
(208, '-', '', 'nsk786@gmail.com', '', '+91 90085 31111', 'Global software technologies', '', '', '2023-06-22 09:46:47'),
(209, 'Mr John', '', 'johnwong2728@gmail.com', '', '+60 14 950 2832', 'MAHA MERGER SDN BHD', '', '', '2023-06-22 09:47:36'),
(210, 'Mr John', '', 'johnwong2728@gmail.com', '', '+60 14 950 2832', 'johnwong2728@gmail.com', '', '', '2023-06-22 09:48:26'),
(211, 'Ms Chan', '', 'admin@digital4it.co', '', '+60 11 2633 0923', 'DIGITAL4IT SDN BHD', '', '', '2023-06-22 09:49:01'),
(212, 'Mr Faris ', '', '-', '', '+60 10 849 8284', 'FCR Global Venture', '', '', '2023-06-23 09:37:37'),
(213, 'Ms Syaza', '', 'syazayusof@garychongstudios.com', '', '+60 16 314 3407', 'Gary Chong Studios', '', '', '2023-06-23 09:38:18'),
(214, 'Mr Sam', '', 'samarudinadvocates@gmail.com', '', '+60 16 800 2448', 'SAMARUDIN ADVOCATES & SOLICITORS', '', '', '2023-06-23 14:06:59'),
(215, 'Mr Shamalen', '', 'shamalen-indra@amgeneralinsurance.com', '', '+60', 'AmGeneral Insurance Berhad ', '', '', '2023-06-23 16:35:41'),
(216, 'Ms Peggy ', '', 'peggy_tan@obayashi.com.sg', '', '+65 9233 1699', 'Obayashi Singapore Private Ltd', '', '', '2023-06-28 13:40:47'),
(217, 'Ms Farisha', '', '-', '', '+60 16 964 7012', '', '', '', '2023-06-28 13:41:26'),
(218, 'Mr Victor ', '', 'victorlim@wisrdigital.com.my', '', '+60 17 354 1218', 'Wisr Digital Computing Sdn Bhd', '', '', '2023-06-28 13:43:30'),
(219, 'Ms Lee', '', '-', '', '+60 16 249 5660', 'FilmForce Studio Sdn Bhd', '', '', '2023-06-28 13:45:58'),
(220, 'Ms Jolyn', '', 'pcq@4asics.com', '', '+60 12 309 8476', '4Asics Technology Sdn Bhd', '', '', '2023-06-28 13:46:20'),
(221, 'Ms Piying', '', '-', '', '+60 10 212 9953', '', '', '', '2023-07-04 11:55:04'),
(222, 'Mr Macan', '', 'Sg-support@eastwestss.com', '', '+60 11 3143 9941', 'EASTWEST MARKETS TECHNOLOGY SERVICE SDN BHD ', '', '', '2023-07-05 09:52:44'),
(223, 'Mr Dinesh ', '', '-', '', '+60 16 667 8885', 'Miracle Box ', '', '', '2023-07-05 09:53:14'),
(224, 'Ms Siti Hazwani', '', 'sitihazwani.mahasim@maybank.com', '', '+60 13 543 2903', 'Maybank', '', '', '2023-07-05 09:53:54'),
(225, 'Mr Sham', '', 'shamalen-indra@amgeneralinsurance.com', '', '+60 19 284 6059', 'AmGeneral ', '', '', '2023-07-05 09:54:59'),
(226, 'Mr Eden ', '', 'Munpingcmp@gmail.com', '', '+60 12 386 2345', 'DAG international SDN BHD', '', '', '2023-07-05 09:55:36'),
(227, 'Mr Eldvick', '', 'Eldvick@hexarus-creative.com', '', '+60 12 983 9292', 'Hexarus Creative', '', '', '2023-07-05 09:56:05'),
(228, 'Mr Vincent', '', '-', '', '+60 16 396 7767', '', '', '', '2023-07-07 14:13:56'),
(229, 'Mr Eddie', '', '-', '', '+65 9456 3997', '', '', '', '2023-07-07 14:14:17'),
(230, 'Ms Amira Hasmili', '', 'amira.hasmili@benchmarkdigital.com', '', '+60 11 2186 2967', 'Benchmark Gensuite', '', '', '2023-07-07 14:14:52'),
(231, 'Mr Chee', '', 'bbyy111333@gmail.com', '', '+60 11 3622 3730', 'YUNG YUNG IT SDN BHD', '', '', '2023-07-07 14:15:32'),
(232, 'Mr Chee', '', 'bbyy111333@gmail.com', '', '+60 11 3622 3730', 'SIGNATURE HCK TECH SDN BHD', '', '', '2023-07-07 14:15:57'),
(233, 'Mr Logan ', '', 'logansoo@bismoment.com', '', '+60 11 2316 2344', 'WEVISION TECHNOLOGIES SDN BHD', '', '', '2023-07-07 17:45:05'),
(234, 'Mr Rahman', '', '-', '', '+60 13 211 8645', '', '', '', '2023-07-18 10:21:40'),
(235, 'Mr Amar', '', 'amarwdms@gmail.com', '', '+60 16 333 1453', 'BLOCKCHAIN ACADEMY PLT', '', '', '2023-07-18 10:24:16'),
(236, 'Ms Rusnita', '', 'rusnita.durahim@clsa.com', '', '+60 17 316 9588', 'CLSA Securities Malaysia Sdn Bhd', '', '', '2023-07-18 10:25:12'),
(237, 'Ms Hannah', '', 'hannah.unijaya@gmail.com', '', '+60', 'Unijaya Resources Sdn Bhd', '', '', '2023-07-18 10:25:49'),
(238, 'Mr Wyner', '', 'alphatech2u@gmail.com', '', '+60 16 302 4775', '', '', '', '2023-07-18 10:28:38'),
(239, 'Mr Will', '', '-', '', '+60 10 392 8770', '', '', '', '2023-07-18 10:29:02'),
(240, 'Ms SuatLing', '', 'suatling.chuah@exness.com', '', '+60 14 241 6241', 'Xevera Sdn Bhd', '', '', '2023-07-18 10:29:36'),
(241, 'Mr Rashid Bakar', '', '-', '', '+60 13 245 6093', '', '', '', '2023-07-18 10:30:15'),
(242, 'Mr Anes', '', '-', '', '+60 18 953 4585', '', '', '', '2023-07-21 15:21:46'),
(243, 'Mr Will', '', 'thamleongsing123@gmail.com', '', '+60 10 392 8770', 'LEKSIKON DIMER SDN BHD', '', '', '2023-07-21 15:22:55'),
(244, 'Mr Will', '', 'thamleongsing123@gmail.com', '', '+60 10 392 8770', 'EIGHT PROFITS SDN BHD', '', '', '2023-07-21 15:23:35'),
(245, 'Ms Quya', '', 'cherieglow.co@gmail.com', '', '+60 18 202 1397', '', '', '', '2023-07-21 15:24:15'),
(246, 'Ms Jenny', '', 'zhijun_1997@hotmail.com', '', '+60 16 975 0814', 'UPT Marketing', '', '', '2023-07-21 15:27:42'),
(247, 'Mr Ryan', '', 'ryantancommerceinfo@gmail.com', '', '+60', '', '', '', '2023-07-21 17:28:04'),
(248, 'Mr Nizam', '', '-', '', '+60 19 306 5667', '', '', '', '2023-07-25 10:24:06'),
(249, 'Ms Intan', '', 'intan@arkhalal.com', '', '+60 12 294 8106', 'PEKEMAS', '', '', '2023-07-25 10:24:43'),
(250, 'Mr Calvin', '', '-', '', '+60 14 326 5695', '', '', '', '2023-07-25 10:25:43'),
(251, '-', '', '-', '', '+60 16 337 7812', '', '', '', '2023-07-28 09:53:59'),
(252, 'Ms Cal', '', '-', '', '+60 10 374 1343', ' AIMÉ ', '', '', '2023-07-28 09:54:31'),
(253, 'Ms Hana', '', '-', '', '+60 13 585 8515', '', '', '', '2023-07-28 09:54:54'),
(254, 'Ms Fasha', '', '-', '', '+60 17 547 7421', '', '', '', '2023-07-28 09:55:21'),
(255, 'Mr Haznan', '', 'shaikhmuhammadhaznan@gmail.com', '', '+60 17 255 9690', 'Physiofirst Healthcare', '', '', '2023-07-28 09:55:48'),
(256, 'Mr Jervis', '', 'jerviskok@gmail.com', '', '+60 12 355 2288', 'KT DREAM CONSULTING ', '', '', '2023-07-28 09:56:24'),
(257, 'Ms Nur Affizie', '', 'nurulaffizie@sprm.gov.my', '', '+60 12 322 4248', 'SPRM', '', '', '2023-07-28 09:57:10'),
(258, '-', '', '-', '', '+60 17 600 9321', '', '', '', '2023-07-28 09:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_inquiries`
--

DROP TABLE IF EXISTS `novux_tables_inquiries`;
CREATE TABLE IF NOT EXISTS `novux_tables_inquiries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `inquiry_id` varchar(50) NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `agency` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date` datetime NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inquiry_id` (`inquiry_id`),
  KEY `customer_id` (`customer_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_inquiries`
--

INSERT INTO `novux_tables_inquiries` (`id`, `inquiry_id`, `customer_id`, `user_id`, `agency`, `status`, `date`, `created`) VALUES
(15, '2723', 33, 8, 'Whatsapp', 'pending', '2023-03-24 00:00:00', '2023-03-24 13:07:39'),
(16, '2724', 35, 8, 'Email', 'pending', '2022-12-01 00:00:00', '2023-03-27 09:56:54'),
(17, '2725', 68, 8, 'WhatsApp', 'pending', '2023-03-01 00:00:00', '2023-03-31 12:19:09'),
(18, '2726', 69, 8, 'Email', 'pending', '2023-04-03 00:00:00', '2023-04-06 14:21:23'),
(19, '2727', 75, 8, 'Direct Call', 'approved', '2023-04-03 00:00:00', '2023-04-06 14:36:41'),
(20, '2728', 70, 8, 'Direct Call', 'rejected', '2023-04-03 00:00:00', '2023-04-07 15:04:18'),
(21, '2729', 77, 8, 'Direct Call', 'pending', '2023-04-04 00:00:00', '2023-04-14 14:34:49'),
(22, '2730', 97, 8, 'WhatsApp', 'pending', '2023-04-04 00:00:00', '2023-04-14 14:49:05'),
(23, '2731', 109, 8, 'WhatsApp', 'approved', '2023-04-04 00:00:00', '2023-04-20 12:16:23'),
(24, '2732', 78, 8, 'Direct Call', 'pending', '2023-04-20 00:00:00', '2023-04-20 12:22:48'),
(25, '2733', 79, 8, 'Direct Call', 'pending', '2023-04-05 00:00:00', '2023-04-20 12:24:53'),
(26, '2734', 80, 8, 'Walk-in', 'rejected', '2023-04-05 00:00:00', '2023-04-20 12:26:34'),
(27, '2735', 72, 8, 'Email', 'pending', '2023-04-05 00:00:00', '2023-04-20 12:49:31'),
(28, '2736', 73, 8, 'WhatsApp', 'approved', '2023-04-06 00:00:00', '2023-04-20 12:50:58'),
(29, '2737', 110, 8, 'WhatsApp', 'approved', '2023-04-06 00:00:00', '2023-04-20 12:53:50'),
(30, '2738', 74, 8, 'Email', 'rejected', '2023-04-06 00:00:00', '2023-04-20 12:56:31'),
(31, '2739', 81, 8, 'Direct Call', 'rejected', '2023-04-20 00:00:00', '2023-04-20 12:59:30'),
(32, '2740', 82, 8, 'Walk-In', 'approved', '2023-04-07 00:00:00', '2023-04-20 13:00:56'),
(33, '2741', 84, 8, 'Email', 'pending', '2023-04-10 00:00:00', '2023-04-20 13:07:17'),
(34, '2742', 85, 8, 'WhatsApp', 'rejected', '2023-04-10 00:00:00', '2023-04-20 13:09:30'),
(35, '2743', 86, 8, 'Email', 'pending', '2023-04-10 00:00:00', '2023-04-20 13:14:23'),
(36, '2744', 87, 8, '', 'rejected', '2023-04-10 00:00:00', '2023-04-20 13:15:14'),
(37, '2745', 88, 8, 'WhatsApp', 'pending', '2023-04-11 00:00:00', '2023-04-20 13:17:14'),
(38, '2746', 89, 8, 'Direct Call', 'pending', '2023-04-11 00:00:00', '2023-04-20 13:18:57'),
(39, '2747', 90, 8, 'WhatsApp', 'approved', '2023-04-11 00:00:00', '2023-04-20 13:22:27'),
(40, '2748', 91, 8, 'WhatsApp', 'pending', '2023-04-12 00:00:00', '2023-04-20 13:24:09'),
(41, '2749', 92, 8, 'Direct Call', 'rejected', '2023-04-12 00:00:00', '2023-04-20 13:33:20'),
(42, '2751', 94, 8, 'Email', 'approved', '2023-04-12 00:00:00', '2023-04-20 13:35:15'),
(43, '2752', 95, 8, 'Email', 'pending', '2023-04-12 00:00:00', '2023-04-20 13:38:28'),
(44, '2753', 96, 8, 'Email', 'pending', '2023-04-13 00:00:00', '2023-04-20 13:40:10'),
(45, '2754', 101, 8, 'WhatsApp', 'pending', '2023-04-17 00:00:00', '2023-04-20 13:41:19'),
(46, '2755', 102, 8, 'Email', 'pending', '2023-04-17 00:00:00', '2023-04-20 13:44:29'),
(47, '2756', 103, 8, 'Walk-in', 'pending', '2023-04-17 00:00:00', '2023-04-20 13:45:49'),
(48, '2757', 104, 8, 'Email', 'pending', '2023-04-18 00:00:00', '2023-04-20 13:47:25'),
(49, '2758', 105, 8, 'Direct Call', 'approved', '2023-04-18 00:00:00', '2023-04-20 13:58:20'),
(50, '2759', 106, 8, 'Direct Call', 'pending', '2023-04-18 00:00:00', '2023-04-20 14:01:32'),
(51, '2760', 107, 8, 'WhatsApp', 'pending', '2023-04-19 00:00:00', '2023-04-20 14:03:21'),
(52, '2761', 108, 8, 'Email', 'pending', '2023-04-19 00:00:00', '2023-04-20 14:05:42'),
(53, '2762', 112, 8, 'WhatsApp', 'rejected', '2023-04-25 00:00:00', '2023-04-26 14:39:56'),
(54, '2763', 113, 8, 'WhatsApp', 'pending', '2023-04-25 00:00:00', '2023-04-26 14:44:24'),
(55, '2764', 114, 8, '', 'pending', '2023-04-25 00:00:00', '2023-04-26 14:48:48'),
(56, '2765', 115, 8, '', 'pending', '2023-04-25 00:00:00', '2023-04-26 14:51:15'),
(57, '2766', 116, 8, '', 'pending', '2023-04-26 00:00:00', '2023-04-26 14:53:30'),
(58, '2767', 117, 8, 'Email', 'pending', '2023-04-26 00:00:00', '2023-04-26 17:43:13'),
(59, '2768', 118, 8, 'WhatsApp', 'pending', '2023-04-27 00:00:00', '2023-04-27 17:17:26'),
(60, '2769', 119, 8, 'Direct Call', 'pending', '2023-04-27 00:00:00', '2023-04-27 17:19:30'),
(61, '2770', 120, 8, 'WhatsApp', 'pending', '2023-04-27 00:00:00', '2023-04-27 17:23:25'),
(62, '2771', 121, 8, 'Direct Call', 'pending', '2023-04-27 00:00:00', '2023-04-27 17:27:49'),
(63, '2676', 122, 8, 'Direct Call', 'rejected', '2023-03-01 00:00:00', '2023-04-28 10:43:29'),
(64, '2772', 123, 8, 'WhatsApp', 'pending', '2023-04-28 00:00:00', '2023-04-28 17:50:23'),
(65, '2773', 111, 8, 'Direct Call', 'approved', '2023-05-02 00:00:00', '2023-05-02 10:32:06'),
(66, '2774', 124, 8, 'WhatsApp', 'approved', '2023-05-02 00:00:00', '2023-05-05 10:23:58'),
(67, '2775', 125, 8, '', 'pending', '2023-05-02 00:00:00', '2023-05-05 11:55:39'),
(68, '2776', 126, 8, 'WhatsApp', 'pending', '2023-05-02 00:00:00', '2023-05-05 11:58:53'),
(69, '2777', 127, 8, 'Email', 'approved', '2023-05-02 00:00:00', '2023-05-05 17:25:25'),
(70, '2778', 128, 8, 'WhatsApp', 'approved', '2023-05-03 00:00:00', '2023-05-05 17:29:12'),
(71, '2779', 129, 8, '', 'pending', '2023-05-05 00:00:00', '2023-05-05 17:33:25'),
(72, '2780', 130, 8, 'WhatsApp', 'rejected', '2023-05-05 00:00:00', '2023-05-05 17:40:02'),
(73, '2781', 131, 8, 'Direct Call', 'pending', '2023-05-05 00:00:00', '2023-05-05 17:43:33'),
(74, '2782', 132, 8, 'Direct Call', 'pending', '2023-05-08 00:00:00', '2023-05-12 11:51:11'),
(75, '2783', 133, 8, 'Direct Call', 'pending', '2023-05-09 00:00:00', '2023-05-12 11:54:33'),
(76, '2784', 134, 8, 'WhatsApp', 'pending', '2023-05-10 00:00:00', '2023-05-12 11:56:55'),
(77, '2785', 129, 8, 'WhatsApp', 'rejected', '2023-05-10 00:00:00', '2023-05-12 12:00:13'),
(78, '2786', 135, 8, '', 'approved', '2023-05-10 00:00:00', '2023-05-15 13:38:59'),
(80, '2787', 137, 8, 'WhatsApp', 'approved', '2023-05-10 00:00:00', '2023-05-15 13:44:22'),
(81, '2788', 136, 8, 'Email', 'pending', '2023-05-11 00:00:00', '2023-05-15 13:48:03'),
(82, '2789', 138, 8, 'Direct Call', 'pending', '2023-05-11 00:00:00', '2023-05-15 13:52:02'),
(83, '2790', 139, 8, 'WhatsApp', 'rejected', '2023-05-11 00:00:00', '2023-05-15 13:55:00'),
(84, '2791', 140, 8, 'Email', 'pending', '2023-05-11 00:00:00', '2023-05-15 14:07:59'),
(85, '2792', 141, 8, '', 'pending', '2023-05-15 00:00:00', '2023-05-15 14:37:45'),
(86, '2793', 142, 8, 'Email', 'pending', '2023-05-12 00:00:00', '2023-05-15 14:56:20'),
(87, '2794', 143, 8, 'WhatsApp', 'pending', '2023-05-12 00:00:00', '2023-05-15 15:02:03'),
(88, '2795', 144, 8, 'WhatsApp', 'rejected', '2023-05-15 00:00:00', '2023-05-15 15:08:29'),
(89, '2796', 145, 8, 'WhatsApp', 'approved', '2023-05-15 00:00:00', '2023-05-19 11:57:55'),
(90, '2797', 146, 8, 'WhatsApp', 'pending', '2023-05-17 00:00:00', '2023-05-19 14:10:12'),
(91, '2798', 147, 8, 'WhatsApp', 'pending', '2023-05-17 00:00:00', '2023-05-19 14:29:29'),
(92, '2799', 148, 8, 'WhatsApp', 'pending', '2023-05-17 00:00:00', '2023-05-19 14:37:28'),
(93, '2800', 149, 8, 'Direct Call', 'approved', '2023-05-17 00:00:00', '2023-05-19 14:41:59'),
(94, '2801', 150, 8, 'WhatsApp', 'pending', '2023-05-18 00:00:00', '2023-05-19 14:49:18'),
(95, '2802', 151, 8, 'Direct Call', 'pending', '2023-05-18 00:00:00', '2023-05-19 14:52:28'),
(96, '2803', 154, 8, 'Email', 'approved', '2023-05-18 00:00:00', '2023-05-19 14:53:50'),
(97, '2804', 152, 8, 'Email', 'pending', '2023-05-18 00:00:00', '2023-05-19 14:56:34'),
(98, '2805', 153, 8, 'WhatsApp', 'approved', '2023-05-18 00:00:00', '2023-05-19 14:58:09'),
(100, '2806', 155, 8, 'Direct Call', 'approved', '2023-05-18 00:00:00', '2023-05-19 15:05:30'),
(101, '2807', 156, 8, 'WhatsApp', 'approved', '2023-05-19 00:00:00', '2023-05-19 15:12:29'),
(102, '2808', 157, 8, 'Email', 'pending', '2023-05-23 00:00:00', '2023-05-24 10:43:45'),
(103, '2809', 158, 8, 'WhatsApp', 'pending', '2023-05-23 00:00:00', '2023-05-24 10:46:10'),
(104, '2810', 164, 8, 'WhatsApp', 'pending', '2023-05-25 00:00:00', '2023-05-30 09:53:10'),
(105, '2811', 165, 8, 'WhatsApp', 'pending', '2023-05-25 00:00:00', '2023-05-30 09:55:35'),
(106, '2812', 166, 8, 'Direct Call', 'pending', '2023-05-26 00:00:00', '2023-05-30 10:11:05'),
(107, '2813', 168, 8, 'Direct Call', 'pending', '2023-05-26 00:00:00', '2023-05-30 10:17:31'),
(108, '2814', 167, 8, 'Direct Call', 'approved', '2023-05-26 00:00:00', '2023-05-30 10:23:42'),
(109, '2815', 173, 8, 'WhatsApp', 'approved', '2023-05-26 00:00:00', '2023-05-30 10:28:55'),
(110, '2816', 174, 8, '', 'approved', '2023-05-26 00:00:00', '2023-05-30 10:35:28'),
(111, '2817', 169, 8, '', 'pending', '2023-05-26 00:00:00', '2023-06-02 11:30:01'),
(112, '2818', 170, 8, 'Direct Call', 'pending', '2023-05-26 00:00:00', '2023-06-02 11:36:33'),
(113, '2819', 171, 8, 'WhatsApp', 'pending', '2023-05-29 00:00:00', '2023-06-02 11:37:30'),
(114, '2820', 175, 8, 'Email', 'pending', '2023-05-31 00:00:00', '2023-06-02 17:36:57'),
(115, '2821', 176, 8, 'Direct Call', 'rejected', '2023-06-01 00:00:00', '2023-06-02 17:38:07'),
(116, '2822', 177, 8, 'WhatsApp', 'pending', '2023-06-02 00:00:00', '2023-06-02 17:38:41'),
(117, '2823', 178, 8, 'WhatsApp', 'approved', '2023-06-02 00:00:00', '2023-06-02 17:38:58'),
(118, '2824', 179, 8, 'Direct Call', 'rejected', '2023-06-02 00:00:00', '2023-06-02 17:41:23'),
(119, '2825', 148, 8, 'WhatsApp', 'rejected', '2023-06-02 00:00:00', '2023-06-02 17:43:05'),
(120, '2826', 180, 8, 'WhatsApp', 'pending', '2023-06-06 00:00:00', '2023-06-09 17:12:56'),
(121, '2827', 181, 8, '', 'pending', '2023-06-08 00:00:00', '2023-06-09 17:19:09'),
(122, '2828', 182, 8, 'WhatsApp', 'pending', '2023-06-08 00:00:00', '2023-06-09 17:22:01'),
(123, '2829', 183, 8, 'WhatsApp', 'approved', '2023-06-09 00:00:00', '2023-06-09 17:24:06'),
(124, '2830', 184, 8, 'WhatsApp', 'approved', '2023-06-12 00:00:00', '2023-06-13 10:32:01'),
(125, '2831', 185, 8, '', 'pending', '2023-06-13 00:00:00', '2023-06-16 16:50:29'),
(126, '2832', 186, 8, 'WhatsApp', 'pending', '2023-06-13 00:00:00', '2023-06-16 16:51:54'),
(127, '2833', 187, 8, 'WhatsApp', 'pending', '2023-06-13 00:00:00', '2023-06-16 16:52:32'),
(128, '2834', 188, 8, 'WhatsApp', 'approved', '2023-06-15 00:00:00', '2023-06-16 16:52:57'),
(129, '2835', 189, 8, 'WhatsApp', 'pending', '2023-06-15 00:00:00', '2023-06-16 16:54:26'),
(130, '2836', 190, 8, 'Direct Call', 'pending', '2023-06-15 00:00:00', '2023-06-16 16:54:56'),
(131, '2837', 191, 8, 'WhatsApp', 'rejected', '2023-06-16 00:00:00', '2023-06-16 16:58:25'),
(132, '2838', 192, 8, 'Email', 'rejected', '2023-06-16 00:00:00', '2023-06-16 16:58:53'),
(133, '2839', 193, 8, 'Email', 'approved', '2023-06-16 00:00:00', '2023-06-16 16:59:03'),
(134, '2840', 194, 8, 'Direct Call', 'pending', '2023-06-16 00:00:00', '2023-06-16 17:37:59'),
(135, '2841', 195, 8, 'WhatsApp', 'approved', '2023-06-19 00:00:00', '2023-06-23 16:37:22'),
(136, '2842', 196, 8, '', 'pending', '2023-06-19 00:00:00', '2023-06-23 16:39:32'),
(137, '2843', 197, 8, 'WhatsApp', 'approved', '2023-06-19 00:00:00', '2023-06-23 16:42:47'),
(139, '2844', 198, 8, 'Walk-in', 'pending', '2023-06-19 00:00:00', '2023-06-23 16:45:54'),
(140, '2845', 200, 8, 'WhatsApp', 'pending', '2023-06-20 00:00:00', '2023-06-23 16:47:52'),
(141, '2846', 201, 8, 'WhatsApp', 'pending', '2023-06-20 00:00:00', '2023-06-23 16:49:12'),
(142, '2847', 202, 8, '', 'rejected', '2023-06-23 00:00:00', '2023-06-23 16:53:19'),
(143, '2848', 203, 8, 'WhatsApp', 'pending', '2023-06-20 00:00:00', '2023-06-23 17:08:20'),
(144, '2849', 204, 8, '', 'pending', '2023-06-21 00:00:00', '2023-06-23 17:10:46'),
(145, '2850', 205, 8, '', 'pending', '2023-06-21 00:00:00', '2023-06-23 17:12:39'),
(146, '2851', 206, 8, 'WhatsApp', 'pending', '2023-06-21 00:00:00', '2023-06-23 17:14:43'),
(147, '2852', 207, 8, 'WhatsApp', 'pending', '2023-06-21 00:00:00', '2023-06-23 17:16:20'),
(148, '2853', 208, 8, '', 'pending', '2023-06-23 00:00:00', '2023-06-23 17:17:40'),
(149, '2854', 210, 8, '', 'approved', '2023-06-21 00:00:00', '2023-06-23 17:18:25'),
(150, '2855', 210, 8, 'WhatsApp', 'approved', '2023-06-21 00:00:00', '2023-06-23 17:18:47'),
(151, '2856', 211, 8, 'WhatsApp', 'rejected', '2023-06-21 00:00:00', '2023-06-23 17:22:38'),
(152, '2857', 212, 8, '', 'pending', '2023-06-22 00:00:00', '2023-06-23 17:25:18'),
(153, '2858', 213, 8, '', 'pending', '2023-06-22 00:00:00', '2023-06-23 17:26:13'),
(154, '2859', 214, 8, '', 'approved', '2023-06-23 00:00:00', '2023-06-23 17:27:25'),
(155, '2860', 215, 8, 'Email', 'approved', '2023-06-23 00:00:00', '2023-06-23 17:28:39'),
(156, '2861', 216, 8, '', 'pending', '2023-06-28 00:00:00', '2023-06-28 17:38:35'),
(157, '2862', 217, 8, 'Direct Call', 'pending', '2023-06-26 00:00:00', '2023-07-06 10:03:49'),
(158, '2863', 218, 8, 'Direct Call', 'approved', '2023-07-26 00:00:00', '2023-07-06 10:04:51'),
(159, '2864', 219, 8, 'WhatsApp', 'approved', '2023-06-28 00:00:00', '2023-07-07 16:43:30'),
(160, '2865', 220, 8, '', 'pending', '2023-06-28 00:00:00', '2023-07-07 16:44:00'),
(161, '2866', 221, 8, 'WhatsApp', 'pending', '2023-06-30 00:00:00', '2023-07-07 16:53:42'),
(162, '2867', 222, 8, 'Walk-in', 'approved', '2023-06-30 00:00:00', '2023-07-07 16:54:36'),
(163, '2868', 223, 8, 'WhatsApp', 'approved', '2023-06-30 00:00:00', '2023-07-07 16:55:56'),
(164, '2869', 224, 8, 'WhatsApp', 'pending', '2023-07-04 00:00:00', '2023-07-07 16:57:16'),
(165, '2870', 226, 8, 'WhatsApp', 'approved', '2023-07-04 00:00:00', '2023-07-07 16:58:25'),
(166, '2871', 227, 8, 'WhatsApp', 'approved', '2023-07-04 00:00:00', '2023-07-07 16:59:31'),
(167, '2872', 228, 8, 'Direct Call', 'pending', '2023-07-06 00:00:00', '2023-07-07 17:00:07'),
(168, '2873', 229, 8, 'WhatsApp', 'pending', '2023-07-06 00:00:00', '2023-07-07 17:00:31'),
(169, '2874', 230, 8, 'WhatsApp', 'pending', '2023-07-06 00:00:00', '2023-07-07 17:01:27'),
(170, '2875', 232, 8, 'WhatsApp', 'approved', '2023-07-06 00:00:00', '2023-07-07 17:01:56'),
(171, '2876', 232, 8, 'WhatsApp', 'approved', '2023-07-06 00:00:00', '2023-07-07 17:02:19'),
(172, '2877', 233, 8, 'WhatsApp', 'approved', '2023-07-07 00:00:00', '2023-07-07 17:45:18'),
(173, '2878', 234, 8, 'Direct Call', 'pending', '2023-07-10 00:00:00', '2023-07-21 15:52:07'),
(174, '2879', 235, 8, '', 'approved', '2023-07-10 00:00:00', '2023-07-21 15:53:43'),
(175, '2880', 236, 8, 'Email', 'pending', '2023-07-12 00:00:00', '2023-07-21 16:02:33'),
(176, '2881', 237, 8, 'WhatsApp', 'pending', '2023-07-21 00:00:00', '2023-07-21 16:06:27'),
(177, '2882', 238, 8, 'WhatsApp', 'approved', '2023-07-13 00:00:00', '2023-07-21 16:08:16'),
(178, '2883', 244, 8, 'WhatsApp', 'approved', '2023-07-18 00:00:00', '2023-07-21 16:12:04'),
(185, '2884', 244, 8, 'WhatsApp', 'pending', '2023-07-18 00:00:00', '2023-07-21 17:17:49'),
(186, '2885', 240, 8, 'WhatsApp', 'approved', '2023-07-18 00:00:00', '2023-07-21 17:20:42'),
(187, '2886', 241, 8, 'WhatsApp', 'pending', '2023-07-18 00:00:00', '2023-07-21 17:22:05'),
(188, '2887', 242, 8, '', 'pending', '2023-07-19 00:00:00', '2023-07-21 17:22:38'),
(189, '2888', 245, 8, 'Direct Call', 'pending', '2023-07-20 00:00:00', '2023-07-21 17:24:29'),
(190, '2889', 246, 8, 'WhatsApp', 'pending', '2023-07-21 00:00:00', '2023-07-21 17:25:52'),
(191, '2890', 247, 8, 'Email', 'pending', '2023-07-21 00:00:00', '2023-07-21 17:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_meeting_shooting_room`
--

DROP TABLE IF EXISTS `novux_tables_meeting_shooting_room`;
CREATE TABLE IF NOT EXISTS `novux_tables_meeting_shooting_room` (
  `meeting_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meeting_inquiry_id` int NOT NULL,
  `meeting_pax` int DEFAULT NULL,
  `meeting_start_date` date DEFAULT NULL,
  `meeting_end_date` date DEFAULT NULL,
  `meeting_start_time` time DEFAULT NULL,
  `meeting_end_time` time DEFAULT NULL,
  `meeting_room` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `meeting_remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`meeting_id`),
  UNIQUE KEY `inquiry_id` (`meeting_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_meeting_shooting_room`
--

INSERT INTO `novux_tables_meeting_shooting_room` (`meeting_id`, `meeting_inquiry_id`, `meeting_pax`, `meeting_start_date`, `meeting_end_date`, `meeting_start_time`, `meeting_end_time`, `meeting_room`, `meeting_remarks`) VALUES
(10, 16, 35, '2022-12-19', NULL, '09:00:00', NULL, 'classroom', ''),
(11, 18, 32, '2023-05-13', NULL, '09:00:00', NULL, 'classroom', ''),
(12, 19, 17, '2023-04-17', NULL, '09:00:00', NULL, 'classroom', ''),
(13, 20, 6, '2023-04-20', NULL, '03:04:00', NULL, 'classroom', ''),
(14, 21, 8, '2023-05-01', NULL, '19:34:00', NULL, 'Boardroom', ''),
(15, 22, 12, '2023-04-05', NULL, '10:48:00', NULL, 'Boardroom', ''),
(16, 23, 12, '2023-04-05', '2023-04-07', '10:00:00', '18:00:00', '[\"CEO Room\"]', ''),
(17, 26, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', ''),
(18, 27, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', ''),
(19, 30, 15, '2023-05-18', '0000-00-00', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(20, 31, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', ''),
(21, 32, 40, '2023-04-09', '0000-00-00', '17:00:00', '23:00:00', '[\"theater\"]', ''),
(22, 33, 10, '2023-04-28', '0000-00-00', '09:00:00', '13:00:00', '[\"Boardroom\"]', ''),
(23, 34, 18, '2023-04-13', '0000-00-00', '13:00:00', '17:00:00', '[\"u-shape\"]', ''),
(24, 39, 4, '2023-04-11', '2023-04-11', '15:00:00', '18:00:00', '[\"Boardroom\"]', ''),
(25, 0, 40, '2023-04-26', '0000-00-00', '09:00:00', '22:00:00', '[\"u-shape\",\"classroom\"]', ''),
(26, 41, 40, '2023-04-26', '0000-00-00', '09:00:00', '22:00:00', '[\"u-shape\",\"classroom\"]', ''),
(27, 42, 8, '2023-04-13', '0000-00-00', '09:00:00', '18:00:00', '[\"Boardroom\"]', ''),
(28, 43, 11, '2023-05-08', '2023-04-19', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(29, 48, 15, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"Boardroom\"]', ''),
(30, 49, 31, '2023-05-16', '2023-05-17', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(31, 50, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', ''),
(32, 52, 2, '2023-04-25', '0000-00-00', '10:00:00', '17:00:00', '[\"u-shape\"]', ''),
(33, 54, 30, '2023-04-28', '2023-05-27', '09:00:00', '18:00:00', '[\"Boardroom\"]', ''),
(34, 57, 50, '2023-06-17', '2023-06-19', '00:00:00', '00:00:00', '[\"theater\"]', 'June 17, Friday 7pm-10pm\nJune 18, Saturday 2pm-5pm\nJune 19, Sunday 2pm-5pm'),
(35, 60, 20, '2023-05-02', '2023-05-18', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(36, 61, 50, '2023-07-05', '2023-04-05', '09:00:00', '15:00:00', '[\"classroom\"]', ''),
(37, 62, 30, '2023-05-02', '2023-05-12', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(38, 63, 40, '2023-03-13', '2023-03-15', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(39, 64, 30, '2023-05-04', '2023-05-05', '09:00:00', '18:00:00', '[\"u-shape\",\"classroom\"]', ''),
(40, 67, 60, '0000-00-00', '0000-00-00', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(41, 68, 30, '2023-05-04', '2023-05-05', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(42, 69, 4, '2023-06-15', '2023-06-15', '09:00:00', '18:00:00', '[\"Boardroom\"]', ''),
(43, 70, 20, '2023-06-10', '2023-06-10', '09:00:00', '22:00:00', '[\"classroom\"]', ''),
(44, 71, 15, '2023-05-31', '2023-05-31', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(45, 72, 55, '2023-07-22', '2023-07-22', '08:00:00', '17:00:00', '[\"classroom\"]', ''),
(46, 73, 20, '2023-05-26', '2023-05-26', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(47, 74, 0, '2023-05-13', '2023-05-13', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(48, 75, 20, '2023-09-11', '2023-09-13', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(49, 77, 15, '2023-05-31', '2023-06-02', '09:00:00', '20:00:00', '[\"u-shape\"]', ''),
(50, 79, 20, '2023-05-25', '2022-05-25', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(51, 81, 20, '2023-05-25', '2023-05-25', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(52, 82, 150, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"theater\"]', ''),
(53, 83, 40, '0000-00-00', '0000-00-00', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(54, 84, 100, '2023-07-01', '2023-07-01', '07:00:00', '19:00:00', '[\"theater\"]', ''),
(55, 86, 4, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"Boardroom\"]', ''),
(56, 87, 15, '2023-06-26', '2023-07-21', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(57, 88, 24, '2023-05-25', '2023-05-25', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(58, 89, 60, '2023-05-31', '2023-07-07', '07:00:00', '23:00:00', '[\"Lounge Area\",\"Reception Area\",\"Pantry\",\"Meeting room\",\"CEO Room\"]', ''),
(59, 90, 17, '2023-06-01', '0001-06-07', '12:00:00', '22:00:00', '[\"Pantry\",\"Lounge Area\",\"CEO Room\"]', ''),
(60, 91, 8, '2023-05-27', '2023-05-27', '00:00:00', '00:00:00', '[\"Suite (23-5)\"]', ''),
(61, 92, 20, '2023-05-22', '2023-05-22', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(62, 93, 8, '2023-05-23', '2023-05-23', '10:00:00', '12:00:00', '[\"Boardroom\"]', ''),
(63, 97, 15, '2023-06-12', '2023-06-12', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(64, 100, 30, '2023-05-22', '2023-05-22', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(65, 104, 40, '2023-05-28', '2023-05-28', '16:00:00', '19:00:00', '[\"classroom\"]', ''),
(66, 105, 0, '2023-06-30', '2023-06-30', '00:00:00', '00:00:00', '[\"theater\"]', ''),
(67, 106, 30, '2023-06-09', '2023-06-09', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(68, 107, 30, '0000-00-00', '0000-00-00', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(69, 112, 18, '2023-06-21', '2023-02-27', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(70, 114, 5, '2023-06-19', '2023-06-09', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(71, 115, 100, '2023-06-09', '2023-11-06', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(72, 118, 15, '2023-06-06', '2023-06-06', '08:00:00', '14:00:00', '[]', ''),
(73, 119, 100, '2023-06-24', '2023-06-24', '14:00:00', '18:00:00', '[\"theater\"]', ''),
(74, 123, 6, '2023-06-12', '2023-06-15', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(75, 126, 12, '2023-08-07', '2023-08-11', '09:00:00', '18:00:00', '[\"u-shape\"]', ''),
(76, 127, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"Suite (31-1)\"]', 'Suite 31-5'),
(77, 129, 30, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"classroom\"]', 'Exam rentall'),
(78, 130, 5, '0000-00-00', '0000-00-00', '09:00:00', '18:00:00', '[\"Pantry\",\"Meeting room\",\"Reception Area\",\"CEO Room\"]', ''),
(79, 131, 80, '2023-07-11', '2023-07-12', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(80, 132, 90, '2023-06-30', '2023-06-30', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(81, 134, 35, '0000-00-00', '0000-00-00', '09:00:00', '13:00:00', '[\"theater\"]', ''),
(82, 136, 72, '2023-08-07', '2023-08-07', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(83, 138, 30, '0000-00-00', '0000-00-00', '08:00:00', '15:00:00', '[\"classroom\"]', '*Exam center hall'),
(84, 142, 20, '2023-07-12', '2023-07-13', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(85, 145, 30, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"banquet\"]', ''),
(86, 147, 4, '2023-07-24', '2023-07-28', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(87, 151, 10, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"Boardroom\"]', ''),
(88, 153, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', 'Shooting'),
(89, 155, 0, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[]', ''),
(90, 157, 30, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"classroom\"]', ''),
(91, 158, 100, '2023-07-04', '2023-07-04', '09:00:00', '13:00:00', '[\"theater\"]', ''),
(92, 159, 50, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"Meeting room\",\"Pantry\",\"Reception Area\",\"Lounge Area\",\"CEO Room\"]', ''),
(93, 163, 0, '2023-07-14', '2023-07-14', '00:00:00', '00:00:00', '[\"Suite (31-1)\",\"Reception Area\",\"Meeting room\"]', ''),
(94, 164, 70, '0000-00-00', '0000-00-00', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(95, 165, 10, '2023-07-07', '2023-07-07', '00:00:00', '00:00:00', '[\"CEO Room\"]', ''),
(96, 166, 20, '2023-07-10', '2023-07-10', '10:00:00', '14:00:00', '[\"CEO Room\"]', 'Unit 31-3'),
(97, 167, 100, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"theater\"]', ''),
(98, 169, 0, '2023-08-24', '2023-08-24', '09:00:00', '18:00:00', '[\"banquet\"]', ''),
(99, 175, 30, '2023-07-25', '2023-07-25', '09:00:00', '13:00:00', '[\"classroom\"]', ''),
(100, 176, 35, '2023-07-20', '2023-07-21', '09:00:00', '18:00:00', '[\"classroom\"]', ''),
(101, 186, 69, '2023-08-04', '2023-08-04', '09:00:00', '18:00:00', '[\"theater\"]', ''),
(102, 189, 12, '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '[\"classroom\"]', ''),
(103, 190, 0, '2023-07-29', '2023-07-29', '09:00:00', '18:00:00', '[\"CEO Room\",\"Suite (31-1)\",\"Reception Area\",\"Pantry\",\"Meeting room\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_serviced_office`
--

DROP TABLE IF EXISTS `novux_tables_serviced_office`;
CREATE TABLE IF NOT EXISTS `novux_tables_serviced_office` (
  `serviced_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `serviced_inquiry_id` int NOT NULL,
  `serviced_budget` decimal(10,2) DEFAULT NULL,
  `serviced_pax` int DEFAULT NULL,
  `serviced_date` datetime DEFAULT NULL,
  `serviced_room` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `serviced_remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`serviced_id`),
  UNIQUE KEY `inquiry_id` (`serviced_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_serviced_office`
--

INSERT INTO `novux_tables_serviced_office` (`serviced_id`, `serviced_inquiry_id`, `serviced_budget`, `serviced_pax`, `serviced_date`, `serviced_room`, `serviced_remarks`) VALUES
(13, 17, '2000.00', 2, '2023-04-01 00:00:00', 'Private', ''),
(14, 25, '0.00', 2, '0000-00-00 00:00:00', '', ''),
(15, 0, '0.00', 0, '0000-00-00 00:00:00', '', ''),
(16, 37, '0.00', 0, '0000-00-00 00:00:00', '', ''),
(17, 38, '0.00', 2, '0000-00-00 00:00:00', '', ''),
(18, 40, '0.00', 0, '0000-00-00 00:00:00', '', ''),
(19, 47, '0.00', 6, '0000-00-00 00:00:00', '', ''),
(20, 55, '0.00', 4, '0000-00-00 00:00:00', '', ''),
(21, 76, '0.00', 2, '0000-00-00 00:00:00', '', ''),
(22, 98, '2000.00', 2, '0000-00-00 00:00:00', '', ''),
(23, 103, '0.00', 6, '0000-00-00 00:00:00', '', 'for 6 months only'),
(24, 116, '100.00', 4, '0000-00-00 00:00:00', '', ''),
(25, 139, '0.00', 4, '0000-00-00 00:00:00', '', ''),
(26, 143, '0.00', 2, '0000-00-00 00:00:00', '', ''),
(27, 144, '0.00', -5, '0000-00-00 00:00:00', '', ''),
(28, 146, '0.00', 0, '0000-00-00 00:00:00', '', ''),
(29, 148, '0.00', 5, '0000-00-00 00:00:00', '', ''),
(30, 156, '0.00', 5, '0000-00-00 00:00:00', '', ''),
(31, 160, '0.00', 8, '0000-00-00 00:00:00', '', ''),
(32, 162, '0.00', 0, '0000-00-00 00:00:00', '', '31-5 & 31-6A'),
(33, 187, '0.00', 2, '0000-00-00 00:00:00', '', ''),
(34, 191, '3500.00', 4, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `novux_tables_virtual_office`
--

DROP TABLE IF EXISTS `novux_tables_virtual_office`;
CREATE TABLE IF NOT EXISTS `novux_tables_virtual_office` (
  `virtual_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `virtual_inquiry_id` int NOT NULL,
  `virtual_service` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`virtual_id`),
  UNIQUE KEY `inquiry_id` (`virtual_inquiry_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novux_tables_virtual_office`
--

INSERT INTO `novux_tables_virtual_office` (`virtual_id`, `virtual_inquiry_id`, `virtual_service`) VALUES
(12, 15, 'Mail & Address & DID'),
(13, 0, 'Mail & Address'),
(14, 24, 'Mail & Address'),
(15, 28, 'Mail & Address'),
(16, 29, 'Mail & Address'),
(17, 35, 'Mail & Address'),
(18, 36, 'Mail & Address'),
(19, 44, 'Mail & Address'),
(20, 45, 'Mail & Address'),
(21, 46, 'Mail & Address'),
(22, 51, 'Mail & Address'),
(23, 53, 'Mail & Address & DID'),
(24, 55, 'Mail & Address'),
(25, 56, 'Mail & Address'),
(26, 58, 'Work from Home'),
(27, 59, 'Mail & Address'),
(28, 65, 'Mail & Address'),
(29, 66, 'Mail & Address'),
(30, 78, 'Mail & Address'),
(31, 80, 'Work from Home'),
(32, 85, 'Mail & Address'),
(33, 94, 'Mail & Address'),
(34, 95, 'Mail & Address'),
(35, 96, 'Mail & Address & DID'),
(36, 99, 'Mail & Address'),
(37, 101, 'Mail & Address'),
(38, 102, 'Co-working'),
(39, 108, 'Mail & Address'),
(40, 109, 'Mail & Address'),
(41, 110, 'Mail & Address'),
(42, 111, 'Mail & Address'),
(43, 113, 'Mail & Address'),
(44, 117, 'Communication'),
(45, 120, 'Mail & Address'),
(46, 121, 'Mail & Address'),
(47, 122, 'Mail & Address'),
(48, 124, 'Mail & Address & DID'),
(49, 125, 'Mail & Address'),
(50, 128, 'Mail & Address'),
(51, 133, 'Mail & Address'),
(52, 135, 'Mail & Address'),
(53, 137, 'Mail & Address'),
(54, 140, 'Mail & Address'),
(55, 141, 'Mail & Address'),
(56, 149, 'Mail & Address & DID'),
(57, 150, 'Mail & Address & DID'),
(58, 152, 'Mail & Address'),
(59, 154, 'Mail & Address'),
(60, 161, 'Mail & Address & DID'),
(61, 168, 'Mail & Address'),
(62, 170, 'Mail & Address'),
(63, 171, 'Mail & Address'),
(64, 172, 'Mail & Address'),
(65, 173, 'Mail & Address'),
(66, 174, 'Mail & Address & DID'),
(67, 177, 'Mail & Address'),
(68, 178, 'Mail & Address & DID'),
(69, 179, 'Mail & Address & DID'),
(70, 180, 'Mail & Address & DID'),
(71, 181, 'Mail & Address & DID'),
(72, 182, 'Mail & Address & DID'),
(73, 183, 'Mail & Address & DID'),
(74, 184, 'Mail & Address & DID'),
(75, 185, 'Mail & Address & DID'),
(76, 188, 'Mail & Address');

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_comments`
--

DROP TABLE IF EXISTS `renovation_tables_comments`;
CREATE TABLE IF NOT EXISTS `renovation_tables_comments` (
  `comments_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_inquiry_id` int NOT NULL,
  `comments_comment` json NOT NULL,
  PRIMARY KEY (`comments_id`),
  KEY `comments_inquiry_id` (`comments_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_customers`
--

DROP TABLE IF EXISTS `renovation_tables_customers`;
CREATE TABLE IF NOT EXISTS `renovation_tables_customers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL,
  `business` varchar(150) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_finance`
--

DROP TABLE IF EXISTS `renovation_tables_finance`;
CREATE TABLE IF NOT EXISTS `renovation_tables_finance` (
  `finance_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `finance_inquiry_id` int NOT NULL,
  `finance_terms` varchar(100) NOT NULL,
  `finance_budget` decimal(10,2) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `finance_inquiry_id` (`finance_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_inquiries`
--

DROP TABLE IF EXISTS `renovation_tables_inquiries`;
CREATE TABLE IF NOT EXISTS `renovation_tables_inquiries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `inquiry_id` varchar(150) NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inquiry_id` (`inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_management`
--

DROP TABLE IF EXISTS `renovation_tables_management`;
CREATE TABLE IF NOT EXISTS `renovation_tables_management` (
  `management_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `management_inquiry_id` int NOT NULL,
  `management_contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `management_working` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `management_insurance` varchar(50) NOT NULL,
  `management_wireman` varchar(50) NOT NULL,
  PRIMARY KEY (`management_id`),
  KEY `management_inquiry_id` (`management_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovation_tables_property`
--

DROP TABLE IF EXISTS `renovation_tables_property`;
CREATE TABLE IF NOT EXISTS `renovation_tables_property` (
  `property_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_inquiry_id` int NOT NULL,
  `property_designated` varchar(150) NOT NULL,
  `property_type` varchar(150) NOT NULL,
  `property_status` varchar(150) NOT NULL,
  `property_layout` varchar(150) NOT NULL,
  PRIMARY KEY (`property_id`),
  KEY `property_inquiry_id` (`property_inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(150) NOT NULL,
  `role` varchar(50) NOT NULL,
  `access` json NOT NULL,
  `status` varchar(50) NOT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `salt`, `role`, `access`, `status`, `avatar`, `created`) VALUES
(1, 'ammar', 'sakka', 'asakka', 'b3758a9bd8ad0565c838cfc1010b27b88b0d68032b2f61743741eac9365c80f12f3bf5f7c9090238cb4bad0f2b45ca257c7c4f6bdf50d3f312d8b65f9e934a0f', '8832babe1aab39f14f74ae5c098c54bb', 'admin', '[\"all\"]', 'active', NULL, '2023-02-22 09:35:59'),
(8, ' Novux', 'Inquiry', 'novux_inquiry', 'cb1a9f20d8b1800f56d08967e157c78d5ff42902551621cbc9f4869d2314bca31c8b9b10faa4b59929830c17c9e60c8bd5d963767d78056dd947c559054e8f78', 'f0aa618f686c73af4de0712ac1189b45', 'employee', '[\"novux\"]', 'active', NULL, '2023-03-22 16:06:50'),
(9, 'mydg', 'tech', 'mydgtech', '17fc027530faa8ac9dd3b1b5872bb4a68fc6393bb6ea4178e35dce4f59570349c12c666d07326119ea4811b7ced85936f8ac77547678245d04ce9d6e60e97e83', '62534056698f424ed032e2eba34fce23', 'employee', '[\"MyDGTech\"]', 'active', NULL, '2023-04-20 11:33:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
