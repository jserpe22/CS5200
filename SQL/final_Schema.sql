CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookie`
--

DROP TABLE IF EXISTS `bookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookie` (
  `bookieId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`bookieId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookie`
--

LOCK TABLES `bookie` WRITE;
/*!40000 ALTER TABLE `bookie` DISABLE KEYS */;
INSERT INTO `bookie` VALUES (1,'Bets.com'),(2,'PremierOdds'),(3,'MyBets');
/*!40000 ALTER TABLE `bookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `leagueId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tier` int NOT NULL,
  PRIMARY KEY (`leagueId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (3,'Premier',1),(4,'La Liga',1);
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchdata`
--

DROP TABLE IF EXISTS `matchdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchdata` (
  `matchId` int NOT NULL AUTO_INCREMENT,
  `matchDate` date DEFAULT (curdate()),
  `homeTeam` int NOT NULL,
  `awayTeam` int NOT NULL,
  `homeHalftimeScore` int DEFAULT (0),
  `awayHalftimeScore` int DEFAULT (0),
  `homeFulltimeScore` int DEFAULT (0),
  `awayFulltimeScore` int DEFAULT (0),
  `expectedGoalsHome` float DEFAULT (0),
  `expectedGoalsAway` float DEFAULT (0),
  `totalShotsHome` int DEFAULT (0),
  `totalShotsAway` int DEFAULT (0),
  `bigChancesHome` int DEFAULT (0),
  `bigChancesAway` int DEFAULT (0),
  `accuratePassesHome` int DEFAULT (0),
  `accuratePassesAway` int DEFAULT (0),
  `possessionHome` float DEFAULT (0),
  `possessionAway` float DEFAULT (0),
  PRIMARY KEY (`matchId`),
  KEY `homeTeam_fk` (`homeTeam`),
  KEY `awayTeam_fk` (`awayTeam`),
  CONSTRAINT `awayTeam_fk` FOREIGN KEY (`awayTeam`) REFERENCES `team` (`teamId`),
  CONSTRAINT `homeTeam_fk` FOREIGN KEY (`homeTeam`) REFERENCES `team` (`teamId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchdata`
--

LOCK TABLES `matchdata` WRITE;
/*!40000 ALTER TABLE `matchdata` DISABLE KEYS */;
INSERT INTO `matchdata` VALUES (14,'2021-03-04',22,23,0,1,1,2,2.1,1.5,4,4,3,3,700,234,76,24),(15,'2021-03-05',24,25,1,1,2,1,3,2.3,7,6,5,5,550,546,55.7,44.3),(16,'2021-03-06',26,27,2,0,2,3,1.7,3.4,5,5,4,3,234,678,23.1,76.9),(17,'2021-03-07',28,29,0,0,1,1,3,1.4,8,5,5,4,456,765,45.6,54.4),(18,'2022-12-15',25,26,1,2,3,4,5,6,7,8,9,10,11,12,13,14),(19,'2022-12-08',26,22,20,20,20,20,20,20,20,20,20,20,20,20,20,20),(20,'2022-12-20',25,22,20,20,20,20,20,20,20,20,20,20,20,20,20,20),(21,'2022-12-25',22,27,20,20,20,20,20,20,20,20,20,20,20,20,20,20),(22,'2022-12-15',24,22,40,40,40,40,40,40,40,40,40,40,40,40,40,40),(23,'2022-12-14',22,26,50,50,50,50,50,50,50,50,50,50,50,50,50,50);
/*!40000 ALTER TABLE `matchdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_match_check_duplicate` BEFORE INSERT ON `matchdata` FOR EACH ROW begin
				if exists (select * from matchData where matchDate = new.matchDate and homeTeam = new.homeTeam and awayTeam = new.awayTeam)
                then
                    signal sqlstate '45000' set message_text = 'Duplicate match found (same date, home team, away team)';
				end if;
			end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_match_generate_match_played` AFTER INSERT ON `matchdata` FOR EACH ROW begin
				-- get current season (we know match played can only insert here)
				declare max_season int;
				select max(seasonId) into max_season from season;
				insert into matchPlayed(matchId, seasonId, teamId)
					values(new.matchId, max_season, new.homeTeam);
				insert into matchPlayed(matchId, seasonId, teamId)
					values(new.matchId, max_season, new.awayTeam);
			end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_matchData` BEFORE DELETE ON `matchdata` FOR EACH ROW begin
				declare season_id int;
                
                select seasonId into season_id from matchPlayed where matchId = old.matchId limit 1;
                -- match_played is created for both teams
                -- only use one to update team,seasonData tables

				-- home win
				if old.homeFulltimeScore > old.awayFulltimeScore
				then
					-- update home team
					update team
						set wins = wins - 1
						where teamId = old.homeTeam;
					update seasonData
						set seasonWins = seasonWins - 1,
							totalGoalsFor = totalGoalsFor - old.homeFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.awayFulltimeScore
						where teamId = old.homeTeam and seasonId = season_id;
					-- update away team
					update team 
						set losses = losses - 1
						where teamId = old.awayTeam;
					update seasonData
						set seasonLosses = seasonLosses - 1,
							totalGoalsFor = totalGoalsFor - old.homeFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.homeFulltimeScore
						where teamId = old.awayTeam and seasonId = season_id;
				end if;
				-- away win
				if old.homeFulltimeScore < old.awayFulltimeScore
				then
					-- update away team
					update team
						set wins = wins - 1
						where teamId = old.awayTeam;
					update seasonData
						set seasonWins = seasonWins - 1,
							totalGoalsFor = totalGoalsFor - old.awayFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.homeFulltimeScore
						where teamId = old.awayTeam and seasonId = season_id;
					-- update home team
					update team 
						set losses = losses - 1
						where teamId = old.homeTeam;
					update seasonData
						set seasonLosses = seasonLosses - 1,
							totalGoalsFor = totalGoalsFor - old.homeFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.awayFulltimeScore
						where teamId = old.homeTeam and seasonId = season_id;
				end if;
				-- draw
				if old.homeFulltimeScore = old.awayFulltimeScore
				then
					-- update away team
					update team
						set draws = draws - 1
						where teamId = old.awayTeam;
					update seasonData
						set seasonDraws = seasonDraws - 1,
							totalGoalsFor = totalGoalsFor - old.awayFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.homeFulltimeScore
						where teamId = old.awayTeam and seasonId = season_id;
					-- update home team
					update team 
						set draws = draws - 1
						where teamId = old.homeTeam;
					update seasonData
						set seasonDraws = seasonDraws - 1,
							totalGoalsFor = totalGoalsFor - old.homeFulltimeScore,
							totalGoalsAgainst = totalGoalsAgainst - old.awayFulltimeScore
						where teamId = old.homeTeam and seasonId = season_id;
				end if;

		end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `matchplayed`
--

DROP TABLE IF EXISTS `matchplayed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchplayed` (
  `matchId` int NOT NULL,
  `seasonId` int NOT NULL,
  `teamId` int NOT NULL,
  PRIMARY KEY (`matchId`,`seasonId`,`teamId`),
  KEY `matchPlayed_seasonId` (`seasonId`),
  KEY `matchPlayed_teamId` (`teamId`),
  CONSTRAINT `matchPlayed_matchId` FOREIGN KEY (`matchId`) REFERENCES `matchdata` (`matchId`) ON DELETE CASCADE,
  CONSTRAINT `matchPlayed_seasonId` FOREIGN KEY (`seasonId`) REFERENCES `season` (`seasonId`),
  CONSTRAINT `matchPlayed_teamId` FOREIGN KEY (`teamId`) REFERENCES `team` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchplayed`
--

LOCK TABLES `matchplayed` WRITE;
/*!40000 ALTER TABLE `matchplayed` DISABLE KEYS */;
INSERT INTO `matchplayed` VALUES (14,2,22),(14,2,23),(15,2,24),(15,2,25),(16,2,26),(16,2,27),(17,2,28),(17,2,29),(18,2,25),(18,2,26),(19,2,22),(19,2,26),(20,2,22),(20,2,25),(21,2,22),(21,2,27),(22,2,22),(22,2,24),(23,2,22),(23,2,26);
/*!40000 ALTER TABLE `matchplayed` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_match_played` AFTER INSERT ON `matchplayed` FOR EACH ROW begin
				declare home_team int;
                declare away_team int;
                declare home_score int;
                declare away_score int;
                select homeTeam, awayTeam, homeFulltimeScore, awayFulltimeScore into home_team, away_team, home_score, away_score from matchData where matchId = new.matchId;
                -- match_played is created for both teams
                -- only use one to update team,seasonData tables
                if home_team = new.teamId
                then
					-- home win
					if home_score > away_score
					then
						-- update home team
						update team
							set wins = wins + 1
							where teamId = home_team;
						update seasonData
							set seasonWins = seasonWins + 1,
								totalGoalsFor = totalGoalsFor + home_score,
								totalGoalsAgainst = totalGoalsAgainst + away_score
							where teamId = home_team and seasonId = new.seasonId;
						-- update away team
						update team 
							set losses = losses + 1
							where teamId = away_team;
						update seasonData
							set seasonLosses = seasonLosses + 1,
								totalGoalsFor = totalGoalsFor + away_score,
								totalGoalsAgainst = totalGoalsAgainst + home_score
							where teamId = away_team and seasonId = new.seasonId;
					end if;
					-- away win
					if home_score < away_score
					then
						-- update away team
						update team
							set wins = wins + 1
							where teamId = away_team;
						update seasonData
							set seasonWins = seasonWins + 1,
								totalGoalsFor = totalGoalsFor + away_score,
								totalGoalsAgainst = totalGoalsAgainst + home_score
							where teamId = away_team and seasonId = new.seasonId;
						-- update home team
						update team 
							set losses = losses + 1
							where teamId = home_team;
						update seasonData
							set seasonLosses = seasonLosses + 1,
								totalGoalsFor = totalGoalsFor + home_score,
								totalGoalsAgainst = totalGoalsAgainst + away_score
							where teamId = home_team and seasonId = new.seasonId;
					end if;
					-- draw
					if home_score = away_score
					then
						-- update away team
						update team
							set draws = draws + 1
							where teamId = away_team;
						update seasonData
							set seasonDraws = seasonDraws + 1,
								totalGoalsFor = totalGoalsFor + away_score,
								totalGoalsAgainst = totalGoalsAgainst + home_score
							where teamId = away_team and seasonId = new.seasonId;
						-- update home team
						update team 
							set draws = draws + 1
							where teamId = home_team;
						update seasonData
							set seasonDraws = seasonDraws + 1,
								totalGoalsFor = totalGoalsFor + home_score,
								totalGoalsAgainst = totalGoalsAgainst + away_score
							where teamId = home_team and seasonId = new.seasonId;
					end if;
				end if;
			end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `modelId` int NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `date` date DEFAULT (curdate()),
  `testSetSize` int NOT NULL,
  `trainSetSize` int NOT NULL,
  `modelAccuracy` float NOT NULL,
  `modelRecall` float NOT NULL,
  `modelPrecision` float NOT NULL,
  `profit` float NOT NULL,
  PRIMARY KEY (`modelId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (7,'xgboost','2022-12-09',101,101,0.9,0.9,0.9,199),(8,'Linear Regression','2022-12-09',100,1000,0.9,0.9,0.9,100);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odds`
--

DROP TABLE IF EXISTS `odds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odds` (
  `oddsId` int NOT NULL AUTO_INCREMENT,
  `homeOdds` float NOT NULL,
  `awayOdds` float NOT NULL,
  `drawOdds` float NOT NULL,
  PRIMARY KEY (`oddsId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odds`
--

LOCK TABLES `odds` WRITE;
/*!40000 ALTER TABLE `odds` DISABLE KEYS */;
INSERT INTO `odds` VALUES (3,4.5,1.9,2.4),(4,4.4,1.8,2.5),(5,4.7,2,2.1),(6,3.2,3.1,1.7),(7,3.3,3.5,1.9),(8,3.3,3.1,2.5),(9,1.4,5.2,4.1),(10,1.5,5.1,4),(11,1.3,5.5,4.3),(12,3.1,3.5,2.5),(13,3.3,3.2,2.4),(14,3.5,3.4,2.1);
/*!40000 ALTER TABLE `odds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offering`
--

DROP TABLE IF EXISTS `offering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offering` (
  `offeringId` int NOT NULL AUTO_INCREMENT,
  `oddsId` int NOT NULL,
  `matchId` int NOT NULL,
  `bookieId` int NOT NULL,
  PRIMARY KEY (`offeringId`),
  KEY `offering_odds_fk` (`oddsId`),
  KEY `offering_match_fk` (`matchId`),
  KEY `offering_bookie_fk` (`bookieId`),
  CONSTRAINT `offering_bookie_fk` FOREIGN KEY (`bookieId`) REFERENCES `bookie` (`bookieId`),
  CONSTRAINT `offering_match_fk` FOREIGN KEY (`matchId`) REFERENCES `matchdata` (`matchId`),
  CONSTRAINT `offering_odds_fk` FOREIGN KEY (`oddsId`) REFERENCES `odds` (`oddsId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offering`
--

LOCK TABLES `offering` WRITE;
/*!40000 ALTER TABLE `offering` DISABLE KEYS */;
INSERT INTO `offering` VALUES (3,3,14,1),(4,4,14,2),(5,5,14,3),(6,6,15,1),(7,7,15,2),(8,8,15,3),(9,9,16,1),(10,10,16,2),(11,11,16,3),(12,12,17,1),(13,13,17,2),(14,14,17,3);
/*!40000 ALTER TABLE `offering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `seasonId` int NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`seasonId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,'2022-01-01','2022-12-31'),(2,'2021-01-01','2021-12-31');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasondata`
--

DROP TABLE IF EXISTS `seasondata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasondata` (
  `teamId` int NOT NULL,
  `seasonId` int NOT NULL,
  `leagueId` int NOT NULL,
  `seasonWins` int DEFAULT (0),
  `seasonLosses` int DEFAULT (0),
  `seasonDraws` int DEFAULT (0),
  `totalGoalsFor` int DEFAULT (0),
  `totalGoalsAgainst` int DEFAULT (0),
  PRIMARY KEY (`teamId`,`seasonId`),
  KEY `seasonData_season_fk` (`seasonId`),
  KEY `seasonData_league_fk` (`leagueId`),
  CONSTRAINT `seasonData_league_fk` FOREIGN KEY (`leagueId`) REFERENCES `league` (`leagueId`),
  CONSTRAINT `seasonData_season_fk` FOREIGN KEY (`seasonId`) REFERENCES `season` (`seasonId`),
  CONSTRAINT `seasonData_team_fk` FOREIGN KEY (`teamId`) REFERENCES `team` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasondata`
--

LOCK TABLES `seasondata` WRITE;
/*!40000 ALTER TABLE `seasondata` DISABLE KEYS */;
INSERT INTO `seasondata` VALUES (22,1,3,0,0,0,0,0),(22,2,3,0,1,5,151,152),(23,1,3,0,0,0,0,0),(23,2,3,1,0,0,2,1),(24,1,3,0,0,0,0,0),(24,2,3,1,0,1,42,41),(25,1,3,0,0,0,0,0),(25,2,3,0,2,1,24,26),(26,1,4,0,0,0,0,0),(26,2,4,1,1,2,76,76),(27,1,4,0,0,0,0,0),(27,2,4,1,0,1,23,22),(28,1,4,0,0,0,0,0),(28,2,4,0,0,1,1,1),(29,1,4,0,0,0,0,0),(29,2,4,0,0,1,1,1);
/*!40000 ALTER TABLE `seasondata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `teamId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `currentLeague` int NOT NULL,
  `wins` int DEFAULT (0),
  `losses` int DEFAULT (0),
  `draws` int DEFAULT (0),
  PRIMARY KEY (`teamId`),
  KEY `team_league_fk` (`currentLeague`),
  CONSTRAINT `team_league_fk` FOREIGN KEY (`currentLeague`) REFERENCES `league` (`leagueId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (22,'Arsenal F.C.','London',3,0,1,5),(23,'Manchester City F.C.','Manchester',3,1,0,0),(24,'Newcastle United F.C.','Newcastle',3,1,0,1),(25,'Tottenham Hotspur F.C.','Tottenham',3,0,2,1),(26,'FC Barcelona','Barcelona',4,1,1,2),(27,'Real Madrid CF','Madrid',4,1,0,1),(28,'Real Sociedad','San Sebastian',4,0,0,1),(29,'Athletic Club','Bilbao',4,0,0,1);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_team_generate_seasonData` AFTER INSERT ON `team` FOR EACH ROW begin
				declare done boolean default false;
				declare season_id int;
				declare cur cursor for select seasonId from season;
				declare continue handler for not found set done = true;
				
				open cur;
				fetch cur into season_id;
				while done = false do
					insert into seasonData(teamId, seasonId, leagueId)
						value(new.teamId, season_id, new.currentLeague);
					fetch cur into season_id;
				end while;
				close cur;
			end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'final'
--
/*!50003 DROP PROCEDURE IF EXISTS `createMatchData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createMatchData`(
    in match_date date,
    in home_team int,
    in away_team int,
    in home_halftime_score int,
    in away_halftime_score int,
    in home_fulltime_score int,
    in away_fulltime_score int,
    in expected_goals_home float,
    in expected_goals_away float,
    in total_shots_home int,
    in total_shots_away int,
    in big_chances_home int,
    in big_chances_away int,
    in accurate_passes_home int,
    in accurate_passes_away int,
    in possession_home float,
    in possession_away float
)
begin
	declare start_date date;
	declare end_date date;
	declare max_season int;
	select max(seasonId), startDate, endDate into max_season, start_date, end_date from season where startDate = (select max(startDate) from season);
	if match_date < start_date or match_date > end_date
	then
		signal sqlstate '45000' set message_text = 'Cannot Enter Matches Outside of Current Season';
	end if;
	insert into matchdata(matchDate, homeTeam, awayTeam, homeHalftimeScore, awayHalftimeScore, homeFulltimeScore, awayFulltimeScore, 
		expectedGoalsHome, expectedGoalsAway, totalShotsHome, totalShotsAway, bigChancesHome, bigChancesAway, accuratePassesHome, accuratePassesAway, possessionHome, possessionAway)
	value(match_date, home_team, away_team, home_halftime_score, away_halftime_score, home_fulltime_score, away_fulltime_score, expected_goals_home, expected_goals_away,
		total_shots_home, total_shots_away, big_chances_home, big_chances_away, accurate_passes_home, accurate_passes_away, possession_home, possession_away);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createOffering` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createOffering`(
    in bookie_id int,
    in home_odds float,
    in away_odds float,
    in draw_odds float,
    in match_id int
)
begin
	declare odds_id int;
    if exists (select * from offering where bookieId = bookie_id and matchId = match_id)
	then
		signal sqlstate '45000' set message_text = 'Duplicate match found (same date, home team, away team)';
	end if;
	insert into odds (homeOdds, awayOdds, drawOdds)
		value(home_odds, away_odds, draw_odds);
	set odds_id = last_insert_id();
    insert into offering(oddsId, matchId, bookieId)
		value(odds_id, match_id, bookie_id);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteMatchData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMatchData`(
    in match_id int
)
begin
	delete from matchdata where matchId = match_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteModelData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteModelData`(
	in model_id int
)
begin
		delete from model where modelId = model_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllMatches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMatches`(
)
begin
	select name as homeName, y.* from team join (select name as awayName, x.* from team join 
	(select seasonId, t.* from matchPlayed join 
		(select * from matchData) as t on matchPlayed.matchId = t.matchId group by matchId) as x 
	on team.teamId = x.awayTeam) as y on team.teamId = y.homeTeam;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLeagueIdFromName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLeagueIdFromName`(
	in league_name varchar(45)
)
begin
	select leagueId from league where name = league_name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMatchesFromTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMatchesFromTeam`(
	in team_id int
)
begin
	select * from matchData where homeTeam = team_id or awayTeam = team_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMatchesInDates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMatchesInDates`(
	in start_date date,
    in end_date date
)
begin
	select * from matchData where start_date <= matchDate and matchDate <end_date;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMatchesInLeague` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMatchesInLeague`(
	in league_id int
)
begin
	select * from matchData where homeTeam in (select teamId from team where currentLeague = league_id) or awayTeam in (select teamId from team where currentLeague = league_id);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMatchIdsInDates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMatchIdsInDates`(
	in start_date date,
    in end_date date
)
begin
	select matchId from matchData where start_date <= matchDate and matchDate <=end_date;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getModelData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getModelData`(
)
begin
	select * from model;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOfferingsForMatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOfferingsForMatch`(
	in match_id int
)
begin
	-- declare bookie_id int;
    -- declare odds_id int;
    -- select bookieId, oddsId into bookie_id, odds_id from offering where matchId = match_id;
    select name, homeOdds, awayOdds, drawOdds from bookie join 
		(select bookieId, odds.* from odds join offering on odds.oddsId = offering.oddsId where offering.matchId = match_id) as t on bookie.bookieId = t. bookieId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSeasonIdFromDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSeasonIdFromDate`(
	in match_date date
)
begin
	select seasonId from season where startDate <= match_date and endDate > match_date;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTeamData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeamData`(
	in team_id int,
	in season_id int
)
begin
	select * from seasonData where teamId = team_id and seasonId = season_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTeamIdFromName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeamIdFromName`(
	in team_name varchar(45),
    in team_city varchar(45)
)
begin
	select teamId from team where name=team_name and city=team_city;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTeamsInLeague` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeamsInLeague`(
	in league_id int
)
begin
	select teamId, name, city from team where currentLeague = league_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertModelData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertModelData`(
	in _type varchar(64),
    in test_set_size int,
    in train_set_size int,
    in model_accuracy float,
    in model_recall float,
    in model_precision float,
    in _profit float
)
begin
	insert into model(type, testSetSize, trainSetSize, modelAccuracy, modelRecall, modelPrecision, profit)
		value(_type, test_set_size, train_set_size, model_accuracy, model_recall, model_precision, _profit);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateModelData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateModelData`(
	in model_id int,
    in _type varchar(64),
    in test_set_size int,
    in train_set_size int,
    in model_accuracy float,
    in model_recall float,
    in model_precision float,
    in _profit float
)
begin
	update model 
    set type = _type,
		trainSetSize = test_set_size,
		testSetSize = train_set_size,
		modelAccuracy = model_accuracy,
		modelRecall = model_recall,
		modelPrecision = model_precision,
		profit =_profit 
	where modelId = model_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-09 17:00:11
