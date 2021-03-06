-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: learnthecomputer
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `correct` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Personal computer','y'),(2,1,'Mainframe computer','n'),(3,1,'Supercomputer','n');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `numberOfLessons` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,7,'Types of computer systems');
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaderboards`
--

DROP TABLE IF EXISTS `leaderboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaderboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboards`
--

LOCK TABLES `leaderboards` WRITE;
/*!40000 ALTER TABLE `leaderboards` DISABLE KEYS */;
INSERT INTO `leaderboards` VALUES (1,'mihai',999),(2,'dragos',999),(3,'stefan',999);
/*!40000 ALTER TABLE `leaderboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,'Introduction','The personal?computer is one of the most common types of computer due to its versatility and relatively low price. Desktop personal computers have a monitor, a keyboard, a mouse, and a computer?case. The computer case holds the motherboard, fixed or removable disk drives for data storage, the power supply, and may contain other peripheral devices such as modems or network interfaces. Some models of desktop computers integrated the monitor and keyboard into the same case as the processor and power supply. Separating the elements allows the user to arrange the components in a pleasing, comfortable array, at the cost of managing power and data cables between them.\r\n\r\nLaptops are designed for portability but operate similarly to desktop PCs. They may use lower-power or reduced size components, with lower performance than a similarly priced desktop computer. Laptops contain the keyboard, display, and processor in one case. The monitor in the folding upper cover of the case can be closed for transportation, to protect the screen and keyboard. Instead of a mouse, laptops may have a touchpad or pointing?stick.\r\n\r\nTablets are portable computers that use a touch?screen as the primary input device. Tablets generally weigh less and are smaller than laptops.\r\n\r\nSome tablets include fold-out keyboards, or offer connections to separate external keyboards. Some models of laptop computers have a detachable keyboard, which allows the system to be configured as a touch-screen tablet. They are sometimes called \"2-in-1 detachable laptops\" or \"tablet-laptop hybrids\".','introduction'),(2,1,'The Case','The computer case encloses most of the components of the system. It provides mechanical support and protection for internal elements such as the motherboard, disk drives, and power supplies, and controls and directs the flow of cooling air over internal components. The case is also part of the system to control electromagnetic interference radiated by the computer and protects internal parts from electrostatic discharge. Large tower cases provide space for multiple disk drives or other peripherals and usually stand on the floor, while desktop cases provide less expansion room. All-in-one style designs include a video display built into the same case. Portable and laptop computers require cases that provide impact protection for the unit. Hobbyists may decorate the cases with colored lights, paint, or other features, in an activity called case?modding.','case'),(3,1,'The Power Supply','A power supply unit (PSU) converts alternating current (AC) electric power to low-voltage direct current (DC) power for the computer. Laptops can run on built-in rechargeable battery. The PSU typically uses a switched-mode?power?supply (SMPS), with power?MOSFETs (power metal∩┐╜oxide∩┐╜semiconductor?field-effect?transistors) used in the converters and regulator circuits of the SMPS.','power supply'),(4,1,'The Motherboard','The motherboard is the main component of a computer. It is a board with integrated?circuitry that connects the other parts of the computer including the CPU, the RAM, the disk drives (CD, DVD, hard?disk, or any others) as well as any peripherals connected via the ports or the expansion?slots. The integrated?circuit (IC) chips in a computer typically contain billions of tiny metal∩┐╜oxide∩┐╜semiconductor?field-effect?transistors (MOSFETs).\r\n\r\nComponents directly attached to or to part of the motherboard include:\r\n\r\nThe CPU (central processing unit), which performs most of the calculations which enable a computer to function, and is referred to as the brain of the computer. It takes program instructions from random-access?memory (RAM), interprets and processes them and then sends back results so that the relevant components can carry out the instructions. The CPU is a microprocessor, which is fabricated on a metal∩┐╜oxide∩┐╜semiconductor (MOS) integrated?circuit (IC) chip. It is usually cooled by a heatsink and fan, or water-cooling system. Many newer CPUs include an on-die graphics?processing?unit (GPU). The clock?speed of the CPU governs how fast it executes instructions and is measured in GHz; typical values lie between 1 GHz and 5 GHz. Many modern computers have the option to overclock the CPU which enhances performance at the expense of greater thermal output and thus a need for improved cooling.\r\nThe chipset, which includes the north?bridge, mediates communication between the CPU and the other components of the system, including main memory; as well as south?bridge, which is connected to the north bridge, and supports auxiliary interfaces and buses; and, finally, a Super?I/O chip, connected through the south bridge, which supports the slowest and most legacy components like serial?ports, hardware?monitoring and fan?control.\r\nRandom-access?memory (RAM), which stores the code and data that are being actively accessed by the CPU. For example, when a web browser is opened on the computer it takes up memory; this is stored in the RAM until the web browser is closed. It is typically a type of dynamic?RAM (DRAM), such as synchronous?DRAM (SDRAM), where MOS?memory chips store data on memory?cells consisting of MOSFETs and MOS?capacitors. RAM usually comes on dual?in-line?memory?modules (DIMMs) in the sizes of 2GB, 4GB, and 8GB, but can be much larger.\r\nRead-only?memory (ROM), which stores the BIOS that runs when the computer is powered on or otherwise begins execution, a process known as Bootstrapping, or \"booting\" or \"booting up\". The ROM is typically a nonvolatile?BIOS?memory chip, which stores data on floating-gate?MOSFET memory cells.\r\nThe BIOS (Basic Input Output System) includes boot firmware and power management firmware. Newer motherboards use Unified?Extensible?Firmware?Interface (UEFI) instead of BIOS.\r\nBuses that connect the CPU to various internal components and to expand cards for graphics and sound.\r\nThe CMOS (complementary MOS) battery, which powers the CMOS?memory for date and time in the BIOS chip. This battery is generally a watch?battery.\r\nThe video?card (also known as the graphics card), which processes computer graphics. More powerful graphics cards are better suited to handle strenuous tasks, such as playing intensive video?games or running computer?graphics software. A video card contains a graphics?processing?unit (GPU) and video?memory (typically a type of SDRAM), both fabricated on MOS?integrated?circuit (MOS IC) chips.\r\nPower?MOSFETs make up the voltage?regulator?module (VRM), which controls how much voltage other hardware components receive.','motherboard'),(5,1,'The Expansion Card','An expansion?card in computing is a printed circuit board that can be inserted into an expansion slot of a computer motherboard or backplane to add functionality to a computer system via the expansion bus. Expansion cards can be used to obtain or expand on features not offered by the motherboard.','expansion cards'),(6,1,'Storage Devices','A storage device is any computing hardware and digital?media that is used for storing, porting and extracting data files and objects. It can hold and store information both temporarily and permanently and can be internal or external to a computer, server or any similar computing device. Data storage is a core function and fundamental component of computers.\r\n\r\nFixed media:\r\nData is stored by a computer using a variety of media. Hard?disk?drives (HDDs) are found in virtually all older computers, due to their high capacity and low cost, but solid-state?drives (SSDs) are faster and more power efficient, although currently more expensive than hard drives in terms of dollar per gigabyte, so are often found in personal computers built post-2007. SSDs use flash?memory, which stores data on MOS?memory chips consisting of floating-gate?MOSFET memory?cells. Some systems may use a disk?array?controller for greater performance or reliability.\r\n\r\nRemovable media:\r\nTo transfer data between computers, an external flash?memory device (such as a memory?card or USB?flash?drive) or optical?disc (such as a CD-ROM, DVD-ROM or BD-ROM) may be used. Their usefulness depends on being readable by other systems; the majority of machines have an optical?disk?drive (ODD), and virtually all have at least one Universal?Serial?Bus (USB) port. Additionally, USB sticks are typically pre-formatted with the FAT32 file system, which is widely supported across operating?systems.','storage devices'),(7,1,'I/O devices','Input and output devices are typically housed externally to the main computer chassis. The following are either standard or very common to many computer systems.\r\n\r\nInput device\r\nInput?devices allow the user to enter information into the system, or control its operation. Most personal computers have a mouse and keyboard, but laptop systems typically use a touchpad instead of a mouse. Other input devices include webcams, microphones, joysticks, and image?scanners.\r\n\r\nOutput device\r\nOutput?devices are designed around the senses of human beings. For example, monitors display text that can be read, speakers produce sound that can be heard. Such devices also could include printers or a Braille?embosser.','input and output peripherals');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` VALUES (1,1,1,'2022-05-28','2022-05-28'),(3,28,7,NULL,NULL),(6,41,1,'2022-06-13','2022-06-13'),(7,41,1,'2022-06-13','2022-06-13'),(8,43,1,'2022-06-13','2022-06-13');
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quizz_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'What is the type of computer you just learned about?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,1,'');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin_tw` varchar(1) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mineamihai2001@gmail.com','mihai','parolatest','y',NULL),(2,'dragoscraciun00@gmail.com','dragos','parolatest','y',NULL),(3,'adresa@gmail.com','stefan','parolatest','y',NULL),(28,'admin',NULL,'$2y$10$4H78NGCF46taIZM5kFLzz.oA6wu/8/aqR9Gqcuqfdnkq18rwd9il2',NULL,NULL),(29,'admin',NULL,'$2y$10$TeqP3w5zAdtNSvFEbavGVeAlbsfQ5WSZly8.FbAnqIkuN41gTpc22',NULL,NULL),(30,'test',NULL,'$2y$10$faln0WLSDfhiSSMnAHsiQeAVRvPz/RIUevrnwbOUV6uASS4pU0Nq6',NULL,NULL),(31,'test',NULL,'$2y$10$puXDuxges568CxSDIWO32u4W.PEOpy6gT3vU7ADv8RDaS/sRdCDq6',NULL,NULL),(41,'testing',NULL,'$2y$10$wu1AWShXzQlPptnImSa2OevfMuRQDPEXkxqCsvhfRlQINV6JCNkTG',NULL,NULL),(42,'testing',NULL,'$2y$10$TadjnB/I6YI9fhI819qBu.84Pq2c/VkdicAdWgLxZXTQAxpMsfS2K',NULL,NULL),(43,'minea.mihai2001@gmail.com',NULL,'$2y$10$CxPkf3GqcSvgvk9a1UEYT.QT2SnsfIyyy.RBelknUH0PGinaoDABa',NULL,'https://lh3.googleusercontent.com/a-/AOh14GgaDQ3WBoMP5hiRUMub5dYouwjvoAHiMOq6fqP8Ew=s96-c');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 17:21:43
