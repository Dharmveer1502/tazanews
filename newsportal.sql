-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 06, 2024 at 06:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2024-01-09 18:30:00', '2024-01-31 05:42:52'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(5, 'gaurav', '89a63063be1c88f51d1f607b2d52b6a3', 'gaurav@gmail.com', 0, '2024-03-28 11:42:45', NULL),
(6, 'rahul', '439ed537979d8e831561964dbbbd7413', 'rahul@gmail.com', 0, '2024-03-28 11:45:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2024-01-11 18:30:00', '2024-01-31 05:43:16', 1),
(5, 'Entertainment', 'Entertainment related  News', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(6, 'Politics', 'Politics', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(7, 'Business', 'Business', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(8, 'COVID-19', 'COVID-19', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(9, 'Television', 'TV', '2024-03-28 11:24:06', NULL, 1),
(10, 'TV SHOWS', 'SHOW', '2024-03-28 11:40:15', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2024-01-17 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2024-01-18 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2024-01-22 18:30:00', 0),
(9, 14, 'Amit', 'Amit@gmail.com', 'Kejriwal Jail me dalo', '2024-03-28 10:43:09', 1),
(10, 19, 'Gaurav', 'Gaurav@gmail.com', 'Hi This is test Comment', '2024-03-28 11:22:46', 1),
(11, 19, 'Amit', 'Amit@gmail.com', 'TESTING', '2024-03-28 11:39:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<p><font face=\"Arial\"><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">Welcome to Taza News, your one-stop destination for staying informed and up-to-date with the latest news and developments from around the world.<br></span></font><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">At&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-size: 26px;\">News Portal</span><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">, we understand the importance of reliable and timely information in today\'s fast-paced world. Our team of dedicated journalists and editors work tirelessly to bring you the most relevant and engaging stories from a variety of sources, ensuring that you are always well-informed on the issues that matter most to you.<br></span></font><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">Whether you\'re interested in politics, sports, entertainment, technology, or business, you\'ll find it all here on&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-size: 26px;\">News Portal</span><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">. Our user-friendly interface makes it easy to navigate through the latest headlines, explore in-depth articles, and discover new perspectives on the events shaping our world.<br></span></font><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">But&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-size: 26px;\">News Portal</span><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">&nbsp;is more than just a news website – it\'s a community of curious minds and engaged citizens who come together to discuss, debate, and share ideas. We believe in the power of journalism to inspire change and foster understanding, and we\'re committed to providing a platform where voices from all walks of life can be heard.<br></span></font><font color=\"#7b8898\" style=\"\"><span style=\"font-size: 26px;\">Join us on our mission to inform, inspire, and empower. Together, we can make a difference.</span></font></font></p>', '2024-01-14 18:30:00', '2024-03-28 11:20:54'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>FARIDABAD, HARYANA</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>SUPPORT@TAAZANEWS.COM</p>', '2024-01-15 18:30:00', '2024-03-28 05:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2024-01-15 18:30:00', '2024-03-28 10:47:00', 0, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg', 25, 'admin', NULL),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2024-01-16 18:30:00', '2024-03-28 11:17:38', 0, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg', 2, 'admin', NULL),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2024-01-16 18:30:00', '2024-03-28 10:47:04', 0, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg', 42, 'admin', NULL),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2024-01-17 18:30:00', '2024-03-28 10:47:05', 0, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg', 35, 'admin', NULL),
(13, 'T20 World Cup 2021: Semi-final 1, England vs New Zealand â€“ Who Said What', 3, 4, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">New Zealand held their nerves admirably to make it a hat-trick of ICC event final entrances, trumping&nbsp;<a href=\"https://www.crictracker.com/cricket-teams/england/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(4, 93, 233);\"><strong>England</strong></a>&nbsp;in a see-sawing semi-final clash in Abu Dhabi. You would feel they are too nice to believe in revenging anything, even if it is as bitter as the fateful 2019 ODI World Cup loss, so letâ€™s put it this way: the scores are settled. And in doing so, New Zealand have made it to the finals of a tournament no one counted them as the favourites of.&nbsp;</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">After being inserted, a Jason Roy-less England managed 166/4 largely on the back of Dawid Malan (41 off 30), who got back his mojo at the right time, and Moeen Ali (51 off 37), who proved it for the umpteenth time what a marvellous short-format asset he is.</p>', '2024-01-18 18:30:00', '2024-03-28 10:47:08', 0, 'T20-World-Cup-2021:-Semi-final-1,-England-vs-New-Zealand-â€“-Who-Said-What', '8bc5c30be91dca9d07c1db858c60e39f.jpg', 10, 'admin', 'subadmin'),
(14, 'US Speaks Again On Arvind Kejriwal, Mentions Frozen Congress Accounts', 6, 8, '<p><span class=\"place_cont\" style=\"-webkit-tap-highlight-color: transparent; font-weight: bolder; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">New Delhi:&nbsp;</span></p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; display: inline; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">After India&nbsp;<a href=\"https://www.ndtv.com/india-news/india-summons-us-diplomat-over-comments-on-arvind-kejriwals-arrest-5319322\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">summoned an American diplomat</a>&nbsp;over their remarks on the arrest of Delhi Chief Minister&nbsp;<a href=\"https://www.ndtv.com/search?searchtext=Arvind-Kejriwal\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">Arvind Kejriwal</a>&nbsp;in the&nbsp;<a href=\"https://www.ndtv.com/topic/delhi-liquor-policy-scam\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">liquor policy case</a>, the US reiterated on Wednesday its call for \"fair, transparent, timely legal processes\".</p><p style=\"margin-top: 1.5rem; margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">We continue to follow these actions closely, including the arrest of Delhi Chief Minister Arvind Kejriwal, said US State Department Spokesperson Matthew Miller while responding to questions on India summoning Gloria Berbena, the US Acting Deputy Chief of Mission in New Delhi.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">The meeting at the foreign ministry\'s South Block office lasted nearly 40 minutes yesterday with India objecting strongly to the US remarks on the arrest of Mr Kejriwal.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"></p><div id=\"v-ndtv\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"></div><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"></p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">Miller also responded to a question on the Congress party\'s&nbsp;<a href=\"https://www.ndtv.com/india-news/we-dont-have-money-to-spend-congress-chief-weeks-before-lok-sabha-polls-5233411\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">frozen bank accounts</a>, saying, \"We are also aware of the Congress party\'s allegations that tax authorities have frozen some of their bank accounts in a manner that will make it challenging to effectively campaign in the upcoming elections.\"</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: bolder;\">Read |&nbsp;</span><a href=\"https://www.ndtv.com/india-news/india-summons-us-diplomat-over-comments-on-arvind-kejriwals-arrest-5319322\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">India Summons US Diplomat Over Comments On Arvind Kejriwal\'s Arrest</a></p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">He said the US encourages \"fair, transparent and timely legal processes\" for each of these issues.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">\"With respect to your first question, I\'m not going to talk about any private diplomatic conversations, but of course, what we have said publicly is what I just said from here, that we encourage fair, transparent, timely legal processes. We don\'t think anyone should object to that,\" he said.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">Mr Kejriwal was arrested last week by the Enforcement Directorate (ED), the third Aam Aadmi Party (AAP) leader after Manish Sisodia and Sanjay Singh to be taken into custody in connection with the alleged liquor policy scam.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">The US State Department on Tuesday said it is&nbsp;<a href=\"https://www.ndtv.com/india-news/encourage-fair-transparent-legal-process-us-on-arvind-kejriwal-arrest-5313351\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">monitoring reports</a>&nbsp;of Mr Kejriwal\'s arrest and called on New Delhi to ensure \"a fair and timely legal process\" for the jailed Chief Minister.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">India objected to it and warned of \"unhealthy precedents\".</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"><br></p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">\"States are expected to be respectful of the sovereignty and internal affairs of others, and this responsibility is even more so in case of fellow democracies. It could otherwise end up setting unhealthy precedents,\" the foreign ministry said.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">\"India\'s legal processes are based on an independent judiciary which is committed to objective and timely outcomes. Casting aspersions on that is unwarranted,\" the ministry stressed.</p><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">The US remarks came days after Germany\'s Foreign Office stressed that Mr Kejriwal is entitled to a fair and impartial trial. The Indian government had reacted strongly and summoned the German envoy, labelling their remark \"blatant interference in internal matters\".</p><div style=\"-webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px; clear: both;\"></div><div id=\"jiosaavn-widget\" style=\"-webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px; margin-bottom: 20px;\"><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent;\"></p><div style=\"-webkit-tap-highlight-color: transparent; position: fixed; top: 735.2px;\">Listen to the&nbsp;<a href=\"https://www.jiosaavn.com/featured/new-music-this-week/Ns2UZo9qDvI\" target=\"_blank\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">latest songs, only on&nbsp;</a><a href=\"https://www.jiosaavn.com/\" target=\"_blank\" style=\"color: var(--clr-lnk); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms;\">JioSaavn.com</a></div><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent;\"></p></div><div style=\"-webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px; clear: both;\"></div><p style=\"margin-bottom: 1.5rem; -webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\">The excise policy was introduced to bring an overhaul to the liquor business in Delhi, but was scrapped after Lieutenant Governor VK Saxena ordered a probe into the alleged irregularities in the policy. The ED believes the bribe money from the policy was allegedly used for funding the AAP\'s election campaigns. It has also called Mr Kejriwal a \"conspirator\" in the case.</p><p style=\"-webkit-tap-highlight-color: transparent; color: rgb(46, 46, 46); font-family: Roboto, sans-serif; font-size: 18px;\"><span class=\"cmt_btnOut\" style=\"-webkit-tap-highlight-color: transparent; float: right; width: 110px; height: 100px; shape-outside: border-box; margin-left: 10px;\"><span class=\"cmt_btn\" style=\"-webkit-tap-highlight-color: transparent; display: block; float: right; margin-bottom: 30px; margin-left: 20px; position: relative; text-align: center;\"><a class=\"btn_bm cmt-ac cmt-dn\" style=\"background: rgb(247, 247, 247); color: var(--ttl); -webkit-tap-highlight-color: transparent; cursor: pointer; transition: all 200ms linear 0ms; font-family: var(--ff-one); font-size: 14px; display: flex; width: 100px; padding: 0px 10px 2px; position: relative; height: 70px; flex-flow: column wrap; justify-content: center; line-height: 0; border-radius: 4px; font-weight: bold;\"><span class=\"ndtv-cmnt-txt\" style=\"-webkit-tap-highlight-color: transparent; display: block; margin-bottom: 0px; font-size: 15px; font-weight: 400; line-height: normal;\">Post a comment</span></a></span></span>His arrest just ahead of the 2024 Lok Sabha election has also prompted furious protests from the opposition camp.</p>', '2024-03-28 05:44:58', '2024-03-28 11:42:20', 1, 'US-Speaks-Again-On-Arvind-Kejriwal,-Mentions-Frozen-Congress-Accounts', '700e6e4f2d119416e67842681ba0dfa8.png', 68, 'admin', NULL),
(16, 'Yuvraj Singh Scolds SRH Star Who Dismantled Hardik Pandya Mumbai Indians In IPL 2024 Game', 3, 4, '<p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><hr><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span></p><hr><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span></p><hr><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span></p><hr><p><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\">Young left-handed batter Abhishek said the message from the team management was pretty simple \"go out and express yourself\" as Sunrisers Hyderabad beat Mumbai Indians in an IPL match that witnessed records tumbling like ninepins.</span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><span style=\"color: rgb(0, 0, 85); font-family: Inter, sans-serif; font-size: 16px;\"><br></span><br></p>', '2024-03-28 10:56:14', '2024-03-28 11:23:10', 1, 'Yuvraj-Singh-Scolds-SRH-Star-Who-Dismantled-Hardik-Pandya-Mumbai-Indians-In-IPL-2024-Game', 'aea3f842940bd2e6418ae36231f53bb7.png', 5, 'admin', 'admin'),
(17, 'CSK vs RCB IPL 2024 Opener Registers Record-Breaking Viewership', 3, 4, '<p>CSK vs RCB IPL 2024 Opener Registers Record-Breaking ViewershipIPL 2024: Chennai Super Kings defeated Royal Challengers Bengaluru by six wickets in the season-opener.Press Trust of IndiaUpdated: March 28, 2024 03:54 PM ISTRead Time:2 min</p><p><br></p><p>CSK vs RCB IPL 2024 Opener Registers Record-Breaking Viewership</p><p>IPL 2024 also witnessed the highest-ever peak TV concurrency for an opening day.© BCCI</p><p>The 17th edition of the Indian Premier League opened to blockbuster viewership numbers with 16.8 crore viewers tuning in to watch the season\'s first game between Chennai Super Kings and Royal Challengers Bengaluru on March 22, the tournament\'s official broadcaster said on Thursday. Disney Star said the opening day also registered a watch-time of 1276 crore minutes -- the highest-ever for the first day of any season. The watch-time minutes are a compilation of the time spent by each viewer in watching the game.</p><p><br></p><p>The 17th season of IPL also witnessed the highest-ever peak TV concurrency for an opening day, with 6.1 crore viewers watching the broadcast simultaneously on the Disney Star network.</p><p><br></p><p>\"Disney Star had recorded 870 crore minutes on the IPL\'s opening day in 2023. In comparison to the previous edition, there is a growth of 16 per cent in TV consumption,\" the company stated.</p><p><br></p><p>Defending champions Chennai Super Kings defeated Royal Challengers Bengaluru by six wickets in the season-opener in Chennai.</p><p><br></p><p>\"This growth is a reaffirmation of the incomparable capacity of Live Cricket to aggregate audiences on TV and provides a blockbuster start to the tournament. We will continue to enrich the magic of one of the world\'s biggest sporting events to take forward the launch momentum and deliver unprecedented viewership,\" a Star Sports spokesperson said in a press release.</p><p><br></p><p>The channel said that the record-breaking TV viewership on the opening day comes on the back of an array of programmes in the lead-up to the 17th season which attracted more than 24.5 crore viewers till a week prior to the start of the tournament.</p><p><br></p><p>In the digital space, JioCinema clocked 11.3 crore viewers on the first day of the IPL.</p>', '2024-03-28 10:59:55', '2024-03-28 11:00:10', 1, 'CSK-vs-RCB-IPL-2024-Opener-Registers-Record-Breaking-Viewership', '7afc861974514593337f7367fca11d89.png', 1, 'admin', NULL),
(18, 'Sunil Grover Jokes About His Infamous 7-Year Fight With Kapil Sharma', 5, 6, '<p>Indian comedian-actors Sunil Grover and Kapil Sharma have been making headlines ever since it was announced that the two will be seen together on the Netflix showThe Great Indian Kapil Show,after a gap of seven years. There is no doubt that fans are in for a treat with the two stand-up comic greats in one frame. However, the collaboration is also special because the duo were once involved in a feud that unravelled on a flight from Melbourne – more on that later. With the show set to stream on Netflix, the duo, with their team, took part in a press conference. At the press meet, Sunil Grover addressed the fight that occurred in 2017. Joking that the fight was a “publicity stunt\", Sunil Grover said: “We were seated on the flight and we learnt that Netflix was coming to India. So, kuch aisa ho ke (acha) publicity stunt ho.” Sunil Grover further joked that Netflix India contacted them for publicity ideas, and that\'s how they came up with this one.</p><p>Before Kapil Sharma and Sunil Grover\'s infamous feud, the two had worked together on hit projects like Comedy Nights With Kapil and The Kapil Sharma Show. In March 2017, while flying from Melbourne, Australia to India, Kapil Sharma reportedly verbally abused Sunil Grover. As a result, Sunil decided not to return to The Kapil Sharma Show. This led to other co-stars like Ali Asgar and Chandan Prabhakar also leaving the show. However, Chandan later opted to come back after a few weeks.</p>', '2024-03-28 11:06:43', '2024-03-28 11:39:28', 1, 'Sunil-Grover-Jokes-About-His-Infamous-7-Year-Fight-With-Kapil-Sharma', '0c1b6ed8a32c414636d33ac95feff124.png', 2, 'admin', NULL),
(19, ' major reasons behind the rally', 7, 9, '<p><font face=\"Arial\"><span style=\"color: rgb(66, 66, 66); font-size: 20px;\">Sensex surged 1000 points higher today (March 28) while Nifty50 topped the 22,400 mark. With this, the combined market capitalisation of all listed stocks on BSE jumped by&nbsp;</span><span class=\"webrupee\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(66, 66, 66); font-size: 20px;\">₹</span><span style=\"color: rgb(66, 66, 66); font-size: 20px;\">2.74 lakh crore to&nbsp;</span><span class=\"webrupee\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(66, 66, 66); font-size: 20px;\">₹</span><span style=\"color: rgb(66, 66, 66); font-size: 20px;\">386.38 lakh crore. This comes after US inflation data triggered worries over a delay in interest rate cuts while US Fed\'s commentary at the policy meeting earlier this month eased worries.</span></font></p><p><span style=\"color: rgb(66, 66, 66); font-size: 20px;\"><font face=\"Arial\"><br></font></span></p><p><span style=\"color: rgb(66, 66, 66); font-size: 20px;\"><font face=\"Arial\"><br></font></span></p><h2 style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px 0px 10px; margin-top: 0px; margin-bottom: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(47, 47, 47); font-weight: 700; font-size: 21px; line-height: 26px;\"><font face=\"Arial\">Here are top factors behind the Sensex rally today:</font></h2><ol style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin-top: 10px; margin-right: 20px; margin-left: 20px; list-style-type: none; overflow-wrap: break-word; color: rgb(66, 66, 66); font-size: 20px; line-height: 26px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Strong cues from US markets: Wall Street equities closed higher ahead of a key inflation reading later this week as the Dow Jones Industrial Average rose 1.22%, the S&amp;P 500 was up 0.86% and the Nasdaq Composite gained 0.51%.</font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Asian shares were mixed as Chinese markets recouped losses, Hong Kong\'s Hang Seng index gained 1.1%, Shanghai Composite rose 1.2%, Australia\'s S&amp;P/ASX 200 jumped 0.9% and Nikkei 225 lost 1.2%.&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">Read more:&nbsp;</strong><a class=\"manualbacklink\" target=\"_blank\" href=\"https://www.hindustantimes.com/business/this-psu-stock-has-a-sell-call-from-kotak-equities-32-downside-likely-amid-execution-risks-101711609399620.html\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(0, 177, 205);\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">This PSU stock has a ‘Sell’ call from Kotak Equities: 32% downside likely amid execution risks</strong></a></font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Financials rose as Reserve Bank of India (RBI) eased recently-tightened rules for lenders\' investments in alternative investment funds (AIFs). The central bank relaxed norms which required lenders to set aside higher provisions if they bought into alternative investment funds.</font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">At the stock market, Bajaj Finance and Bajaj Finserv rose about 4% each after it was reported that housing finance arm Bajaj Housing Finance initiated preliminary talks for potential initial public offer.&nbsp;<strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">Read more:&nbsp;</strong><a class=\"manualbacklink\" target=\"_blank\" href=\"https://www.hindustantimes.com/business/adani-family-infuses-rs-6-661-crore-into-ambuja-cements-raises-stake-to-667-101711606272410.html\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word; color: rgb(0, 177, 205);\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">Adani family infuses&nbsp;<span class=\"webrupee\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">₹</span>6,661 crore into Ambuja Cements, raises stake in company</strong></a></font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Top ten gainers on Nifty50 included ICICI Bank and State Bank of India which added 1.6% and 1.9%, respectively.</font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Foreign portfolio investors bought Indian shares worth&nbsp;<span class=\"webrupee\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">₹</span>2,170 crore on a net basis on March 28.</font></li><li style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 5px 0px; margin: 0px; list-style: decimal; overflow-wrap: break-word;\"><font face=\"Arial\">Domestic institutional investors purchased a net&nbsp;<span class=\"webrupee\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; list-style-type: none; overflow-wrap: break-word;\">₹</span>1,198 core worth of stocks on the same day.</font></li></ol><p><br></p>', '2024-03-28 11:15:10', '2024-03-28 11:39:16', 1, '-major-reasons-behind-the-rally', '134faaec7f3088f115dcd4ee6abafb79.png', 8, 'admin', NULL),
(20, 'CONSTRUCTION WORK IN INDIA ', 7, 9, '<p>DEMO POST FOR TESTING THE PROJECT</p>', '2024-03-28 11:41:36', '2024-04-06 16:27:25', 1, 'CONSTRUCTION-WORK-IN-INDIA-', '9990716dcf6ee54defe1036da9adb8d7.png', 9, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2024-01-14 18:30:00', '2024-01-31 05:48:30', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(5, 3, 'Football', 'Football', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(6, 5, 'Television', 'TeleVision', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(7, 6, 'National', 'National', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(8, 6, 'International', 'International', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(9, 7, 'India', 'India', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(10, 8, 'Vaccination', 'Vaccination', '2024-01-14 18:30:00', '2024-01-31 05:48:39', 1),
(11, 9, 'Jio Tv', 'JIO TV ', '2024-03-28 11:24:28', NULL, 1),
(12, 10, 'Shark Tank', 'Shark Tank India', '2024-03-28 11:40:37', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
