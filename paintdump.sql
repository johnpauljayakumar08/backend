-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: excel_db
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `costing_&_budgeting`
--

DROP TABLE IF EXISTS `costing_&_budgeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costing_&_budgeting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Task ID` varchar(255) DEFAULT NULL,
  `Project ID` varchar(255) DEFAULT NULL,
  `Estimated Cost` int DEFAULT NULL,
  `Actual Cost` int DEFAULT NULL,
  `Material Cost` int DEFAULT NULL,
  `Labor Cost` int DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costing_&_budgeting`
--

LOCK TABLES `costing_&_budgeting` WRITE;
/*!40000 ALTER TABLE `costing_&_budgeting` DISABLE KEYS */;
INSERT INTO `costing_&_budgeting` VALUES (1,'T001','P001',500000,250000,100000,150000,'On Budget'),(2,'T002','P001',750000,0,0,0,'Pending Start'),(3,'T003','P001',600000,300000,120000,180000,'On Budget'),(4,'T004','P001',850000,600000,250000,350000,'Under Budget'),(5,'T005','P001',700000,750000,280000,470000,'Over Budget'),(6,'T006','P001',900000,400000,200000,200000,'On Budget'),(7,'T007','P001',650000,500000,180000,320000,'On Budget'),(8,'T008','P001',720000,0,0,0,'Pending Start'),(9,'T009','P001',880000,780000,300000,480000,'Under Budget'),(10,'T010','P001',930000,950000,400000,550000,'Over Budget');
/*!40000 ALTER TABLE `costing_&_budgeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Task ID` varchar(255) DEFAULT NULL,
  `Completion (%)` int DEFAULT NULL,
  `Open Issues` int DEFAULT NULL,
  `Budget Status` varchar(255) DEFAULT NULL,
  `Overall Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1,'T001',50,1,'On Budget','On Track'),(2,'T002',30,1,'Pending Start','Pending Start'),(3,'T003',0,2,'On Budget','At Risk'),(4,'T004',0,0,'Under Budget','On Track'),(5,'T005',0,3,'Over Budget','Delayed'),(6,'T006',0,1,'On Budget','On Track'),(7,'T007',0,2,'On Budget','At Risk'),(8,'T008',0,0,'Pending Start','On Track'),(9,'T009',0,1,'Under Budget','On Track'),(10,'T010',0,3,'Over Budget','Delayed');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_tracking`
--

DROP TABLE IF EXISTS `material_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_tracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Material ID` varchar(255) DEFAULT NULL,
  `Material Name` varchar(255) DEFAULT NULL,
  `Project ID` varchar(255) DEFAULT NULL,
  `Quantity Required` int DEFAULT NULL,
  `Quantity Used` int DEFAULT NULL,
  `Supplier` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_tracking`
--

LOCK TABLES `material_tracking` WRITE;
/*!40000 ALTER TABLE `material_tracking` DISABLE KEYS */;
INSERT INTO `material_tracking` VALUES (1,'M001','Primer','P001',50,25,'Supplier A','In Stock'),(2,'M002','Coating Paint','P001',100,40,'Supplier B','Partial Usage'),(3,'M003','Sealer','P001',75,0,'Supplier C','Not Delivered'),(4,'M004','Sandpaper','P001',30,20,'Supplier D','In Stock'),(5,'M005','Thinner','P001',60,30,'Supplier E','Partial Usage'),(6,'M006','Protective Tape','P001',40,15,'Supplier F','In Stock'),(7,'M007','Adhesive','P001',50,10,'Supplier G','In Stock'),(8,'M008','Brushes','P001',100,50,'Supplier H','In Stock'),(9,'M009','Cleaning Solvent','P001',80,35,'Supplier I','Partial Usage'),(10,'M010','Packing Material','P001',90,60,'Supplier J','In Stock');
/*!40000 ALTER TABLE `material_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress_tracking`
--

DROP TABLE IF EXISTS `progress_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress_tracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Task ID` varchar(255) DEFAULT NULL,
  `Project ID` varchar(255) DEFAULT NULL,
  `Milestones Completed` int DEFAULT NULL,
  `Open Issues` int DEFAULT NULL,
  `Delays (Days)` int DEFAULT NULL,
  `Risk Level` varchar(255) DEFAULT NULL,
  `Overall Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress_tracking`
--

LOCK TABLES `progress_tracking` WRITE;
/*!40000 ALTER TABLE `progress_tracking` DISABLE KEYS */;
INSERT INTO `progress_tracking` VALUES (1,'T001','P001',2,1,5,'Medium','On Track'),(2,'T002','P001',0,1,0,'Low','Pending Start'),(3,'T003','P001',3,2,4,'High','At Risk'),(4,'T004','P001',1,0,3,'Medium','On Track'),(5,'T005','P001',4,3,6,'High','Delayed'),(6,'T006','P001',2,1,4,'Medium','On Track'),(7,'T007','P001',3,2,2,'High','At Risk'),(8,'T008','P001',1,0,3,'Medium','On Track'),(9,'T009','P001',2,1,5,'Medium','On Track'),(10,'T010','P001',4,3,6,'High','Delayed');
/*!40000 ALTER TABLE `progress_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_name` (`project_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Industrial Coating','2025-02-19 04:53:56','IndustrialCoating.xlsx');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_allocation`
--

DROP TABLE IF EXISTS `resource_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_allocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Employee ID` varchar(255) DEFAULT NULL,
  `Employee Name` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Project ID` varchar(255) DEFAULT NULL,
  `Task Assigned` varchar(255) DEFAULT NULL,
  `Hours Allocated` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_allocation`
--

LOCK TABLES `resource_allocation` WRITE;
/*!40000 ALTER TABLE `resource_allocation` DISABLE KEYS */;
INSERT INTO `resource_allocation` VALUES (1,'E001','Alice','Supervisor','P001','Surface Preparation',20),(2,'E002','Bob','Technician','P001','Primer Application',30),(3,'E003','Charlie','Painter','P001','Final Coating',25),(4,'E004','David','Inspector','P001','Inspection',15),(5,'E005','Emma','Quality Analyst','P001','Quality Check',18),(6,'E006','Frank','Technician','P001','Curing Process',22),(7,'E007','Grace','Painter','P001','Final Touch-Up',20),(8,'E008','Henry','Supervisor','P001','Packaging',25),(9,'E009','Ivy','Logistics','P001','Dispatch Preparation',15),(10,'E010','Jack','Coordinator','P001','Final Inspection',10);
/*!40000 ALTER TABLE `resource_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheets`
--

DROP TABLE IF EXISTS `sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sheets` (
  `sheet_id` int NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(255) NOT NULL,
  `project_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sheet_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `sheets_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheets`
--

LOCK TABLES `sheets` WRITE;
/*!40000 ALTER TABLE `sheets` DISABLE KEYS */;
INSERT INTO `sheets` VALUES (1,'Task Management',1,'2025-02-19 04:54:03'),(2,'Resource Allocation',1,'2025-02-19 04:54:03'),(3,'Material Tracking',1,'2025-02-19 04:54:03'),(4,'Costing & Budgeting',1,'2025-02-19 04:54:03'),(5,'Progress Tracking',1,'2025-02-19 04:54:03'),(6,'Dashboard',1,'2025-02-19 04:54:03');
/*!40000 ALTER TABLE `sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_management`
--

DROP TABLE IF EXISTS `task_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_management` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Task ID` varchar(255) DEFAULT NULL,
  `Project ID` varchar(255) DEFAULT NULL,
  `Task Name` varchar(255) DEFAULT NULL,
  `Start Date` date DEFAULT NULL,
  `End Date` date DEFAULT NULL,
  `Assigned To` varchar(255) DEFAULT NULL,
  `Progress (%)` int DEFAULT NULL,
  `Issues` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_management`
--

LOCK TABLES `task_management` WRITE;
/*!40000 ALTER TABLE `task_management` DISABLE KEYS */;
INSERT INTO `task_management` VALUES (1,'T001','P001','Surface Preparation','2025-01-02','2025-01-05','Manager A',50,'None'),(2,'T002','P001','Primer Application','2025-01-10','2025-01-15','Manager B',30,'Delay in material'),(3,'T003','P001','Final Coating','2025-02-16','2025-02-20','Manager A',0,'Pending Approval'),(4,'T004','P001','Inspection','2025-03-01','2025-03-05','Manager C',0,'Not Started'),(5,'T005','P001','Quality Check','2025-03-02','2025-03-06','Manager C',0,'Not Started'),(6,'T006','P001','Curing Process','2025-03-03','2025-03-07','Manager A',0,'Pending Review'),(7,'T007','P001','Final Touch-Up','2025-03-04','2025-03-08','Manager B',0,'Not Assigned'),(8,'T008','P001','Packaging','2025-03-05','2025-03-09','Manager C',0,'	Awaiting Materials'),(9,'T009','P001','Dispatch Preparation','2025-03-06','2025-03-10','Manager A',0,'Not Started'),(10,'T010','P001','Final Inspection','2025-03-07','2025-03-11','Manager B',0,'Pending Confirmation');
/*!40000 ALTER TABLE `task_management` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-19 10:32:33
