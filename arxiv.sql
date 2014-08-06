-- MySQL dump 10.13  Distrib 5.5.29, for Win32 (x86)
--
-- Host: localhost    Database: arxiv
-- ------------------------------------------------------
-- Server version	5.5.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `arxiv`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `arxiv` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `arxiv`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category` varchar(15) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('cs.NA','numerical analysis');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `log_entry` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_category`
--

DROP TABLE IF EXISTS `subject_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_category` (
  `subject` varchar(35) DEFAULT NULL,
  `main_category` varchar(50) DEFAULT NULL,
  `child_category` varchar(70) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_category`
--

LOCK TABLES `subject_category` WRITE;
/*!40000 ALTER TABLE `subject_category` DISABLE KEYS */;
INSERT INTO `subject_category` VALUES ('gr-qc','general relativity and quantum cosmology','NULL','arxiv'),('hep-ex','high energy physics','experiment','arxiv'),('stat.ap','statistics','applications','arxiv'),('stat.co','statistics','computation','arxiv'),('stat.ml','statistics','machine learning','arxiv'),('stat.me','statistics','methodology','arxiv'),('stat.th','statistics','theory','arxiv'),('q-bio.bm','quantitative biology','biomolecules','arxiv'),('q-bio.cb','quantitative biology','cell behavior','arxiv'),('q-bio.gn','quantitative biology','genomics','arxiv'),('q-bio.mn','quantitative biology','molecular networks','arxiv'),('q-bio.nc','quantitative biology','neurons and cognition','arxiv'),('q-bio.ot','quantitative biology','other','arxiv'),('q-bio.pe','quantitative biology','populations and evolution','arxiv'),('q-bio.qm','quantitative biology','quantitative methods','arxiv'),('q-bio.sc','quantitative biology','subcellular processes','arxiv'),('q-bio.to','quantitative biology','tissues and organs','arxiv'),('cs.ar','computer science','architecture','arxiv'),('cs.ai','computer science','artificial intelligence','arxiv'),('cs.cl','computer science','computation and language','arxiv'),('cs.cc','computer science','computational complexity','arxiv'),('cs.ce','computer science','computational engineering; finance; and science','arxiv'),('cs.cg','computer science','computational geometry','arxiv'),('cs.gt','computer science','computer science and game theory','arxiv'),('cs.cv','computer science','computer vision and pattern recognition','arxiv'),('cs.cy','computer science','computers and society','arxiv'),('cs.cr','computer science','cryptography and security','arxiv'),('cs.ds','computer science','data structures and algorithms','arxiv'),('cs.db','computer science','databases','arxiv'),('cs.dl','computer science','digital libraries','arxiv'),('cs.dm','computer science','discrete mathematics','arxiv'),('cs.dc','computer science','distributed; parallel; and cluster computing','arxiv'),('cs.gl','computer science','general literature','arxiv'),('cs.gr','computer science','graphics','arxiv'),('cs.hc','computer science','human-computer interaction','arxiv'),('cs.ir','computer science','information retrieval','arxiv'),('cs.it','computer science','information theory','arxiv'),('cs.lg','computer science','learning','arxiv'),('cs.lo','computer science','logic in computer science','arxiv'),('cs.ms','computer science','mathematical software','arxiv'),('cs.ma','computer science','multiagent systems','arxiv'),('cs.mm','computer science','multimedia','arxiv'),('cs.ni','computer science','networking and internet architecture','arxiv'),('cs.ne','computer science','neural and evolutionary computing','arxiv'),('cs.na','computer science','numerical analysis','arxiv'),('cs.os','computer science','operating systems','arxiv'),('cs.oh','computer science','other','arxiv'),('cs.pf','computer science','performance','arxiv'),('cs.pl','computer science','programming languages','arxiv'),('cs.ro','computer science','robotics','arxiv'),('cs.se','computer science','software engineering','arxiv'),('cs.sd','computer science','sound','arxiv'),('cs.sc','computer science','symbolic computation','arxiv'),('nlin.ao','nonlinear sciences','adaptation and self-organizing systems','arxiv'),('nlin.cg','nonlinear sciences','cellular automata and lattice gases','arxiv'),('nlin.cd','nonlinear sciences','chaotic dynamics','arxiv'),('nlin.si','nonlinear sciences','exactly solvable and integrable systems','arxiv'),('nlin.ps','nonlinear sciences','pattern formation and solitons','arxiv'),('math.ag','mathematics','algebraic geometry','arxiv'),('math.at','mathematics','algebraic topology','arxiv'),('math.ap','mathematics','analysis of pdes','arxiv'),('math.ct','mathematics','category theory','arxiv'),('math.ca','mathematics','classical analysis and odes','arxiv'),('math.co','mathematics','combinatorics','arxiv'),('math.ac','mathematics','commutative algebra','arxiv'),('math.cv','mathematics','complex variables','arxiv'),('math.dg','mathematics','differential geometry','arxiv'),('math.ds','mathematics','dynamical systems','arxiv'),('math.fa','mathematics','functional analysis','arxiv'),('math.gm','mathematics','general mathematics','arxiv'),('math.gn','mathematics','general topology','arxiv'),('math.gt','mathematics','geometric topology','arxiv'),('math.gr','mathematics','group theory','arxiv'),('math.ho','mathematics','history and overview','arxiv'),('math.it','mathematics','information theory','arxiv'),('math.kt','mathematics','k-theory and homology','arxiv'),('math.lo','mathematics','logic','arxiv'),('math.mp','mathematics','mathematical physics','arxiv'),('math.mg','mathematics','metric geometry','arxiv'),('math.nt','mathematics','number theory','arxiv'),('math.na','mathematics','numerical analysis','arxiv'),('math.oa','mathematics','operator algebras','arxiv'),('math.oc','mathematics','optimization and control','arxiv'),('math.pr','mathematics','probability','arxiv'),('math.qa','mathematics','quantum algebra','arxiv'),('math.rt','mathematics','representation theory','arxiv'),('math.ra','mathematics','rings and algebras','arxiv'),('math.sp','mathematics','spectral theory','arxiv'),('math.st','mathematics','statistics','arxiv'),('math.sg','mathematics','symplectic geometry','arxiv'),('astro-ph','astrophysics','NULL','arxiv'),('cond-mat.dis-nn','physics','disordered systems and neural networks','arxiv'),('cond-mat.mes-hall','physics','mesoscopic systems and quantum hall effect','arxiv'),('cond-mat.mtrl-sci','physics','materials science','arxiv'),('cond-mat.other','physics','other','arxiv'),('cond-mat.soft','physics','soft condensed matter','arxiv'),('cond-mat.stat-mech','physics','statistical mechanics','arxiv'),('cond-mat.str-el','physics','strongly correlated electrons','arxiv'),('cond-mat.supr-con','physics','superconductivity','arxiv'),('gr-qc','general relativity and quantum cosmology','NULL','arxiv'),('hep-ex','high energy physics','experiment','arxiv'),('hep-lat','high energy physics','lattice','arxiv'),('hep-ph','high energy physics','phenomenology','arxiv'),('hep-th','high energy physics','theory','arxiv'),('math-ph','mathematical physics','NULL','arxiv'),('nucl-ex','nuclear experiment','NULL','arxiv'),('nucl-th','nuclear theory','NULL','arxiv'),('physics.acc-ph','physics','accelerator physics','arxiv'),('physics.ao-ph','physics','atmospheric and oceanic physics','arxiv'),('physics.atom-ph','physics','atomic physics','arxiv'),('physics.atm-clus','physics','atomic and molecular clusters','arxiv'),('physics.bio-ph','physics','biological physics','arxiv'),('physics.chem-ph','physics','chemical physics','arxiv'),('physics.class-ph','physics','classical physics','arxiv'),('physics.comp-ph','physics','computational physics','arxiv'),('physics.data-an','physics','data analysis; statistics and probability','arxiv'),('physics.flu-dyn','physics','fluid dynamics','arxiv'),('physics.gen-ph','physics','general physics','arxiv'),('physics.geo-ph','physics','geophysics','arxiv'),('physics.hist-ph','physics','history of physics','arxiv'),('physics.ins-det','physics','instrumentation and detectors','arxiv'),('physics.med-ph','physics','medical physics','arxiv'),('physics.optics','physics','optics','arxiv'),('physics.ed-ph','physics','physics education','arxiv'),('physics.soc-ph','physics','physics and society','arxiv'),('physics.plasm-ph','physics','plasma physics','arxiv'),('physics.pop-ph','physics','popular physics','arxiv'),('physics.space-ph','physics','space physics','arxiv'),('quant-ph','quantum physics','NULL','arxiv');
/*!40000 ALTER TABLE `subject_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_lattice`
--

DROP TABLE IF EXISTS `subject_lattice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_lattice` (
  `parent` varchar(100) DEFAULT NULL,
  `child` varchar(100) DEFAULT NULL,
  `viewpoint` varchar(30) DEFAULT 'standard'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_lattice`
--

LOCK TABLES `subject_lattice` WRITE;
/*!40000 ALTER TABLE `subject_lattice` DISABLE KEYS */;
INSERT INTO `subject_lattice` VALUES ('general relativity and quantum cosmology','NULL','arxiv'),('high energy physics','experiment','arxiv'),('statistics','applications','arxiv'),('statistics','computation','arxiv'),('statistics','machine learning','arxiv'),('statistics','methodology','arxiv'),('statistics','theory','arxiv'),('quantitative biology','biomolecules','arxiv'),('quantitative biology','cell behavior','arxiv'),('quantitative biology','genomics','arxiv'),('quantitative biology','molecular networks','arxiv'),('quantitative biology','neurons and cognition','arxiv'),('quantitative biology','other','arxiv'),('quantitative biology','populations and evolution','arxiv'),('quantitative biology','quantitative methods','arxiv'),('quantitative biology','subcellular processes','arxiv'),('quantitative biology','tissues and organs','arxiv'),('computer science','architecture','arxiv'),('computer science','artificial intelligence','arxiv'),('computer science','computation and language','arxiv'),('computer science','computational complexity','arxiv'),('computer science','computational engineering; finance; and science','arxiv'),('computer science','computational geometry','arxiv'),('computer science','computer science and game theory','arxiv'),('computer science','computer vision and pattern recognition','arxiv'),('computer science','computers and society','arxiv'),('computer science','cryptography and security','arxiv'),('computer science','data structures and algorithms','arxiv'),('computer science','databases','arxiv'),('computer science','digital libraries','arxiv'),('computer science','discrete mathematics','arxiv'),('computer science','distributed; parallel; and cluster computing','arxiv'),('computer science','general literature','arxiv'),('computer science','graphics','arxiv'),('computer science','human-computer interaction','arxiv'),('computer science','information retrieval','arxiv'),('computer science','information theory','arxiv'),('computer science','learning','arxiv'),('computer science','logic in computer science','arxiv'),('computer science','mathematical software','arxiv'),('computer science','multiagent systems','arxiv'),('computer science','multimedia','arxiv'),('computer science','networking and internet architecture','arxiv'),('computer science','neural and evolutionary computing','arxiv'),('computer science','numerical analysis','arxiv'),('computer science','operating systems','arxiv'),('computer science','other','arxiv'),('computer science','performance','arxiv'),('computer science','programming languages','arxiv'),('computer science','robotics','arxiv'),('computer science','software engineering','arxiv'),('computer science','sound','arxiv'),('computer science','symbolic computation','arxiv'),('nonlinear sciences','adaptation and self-organizing systems','arxiv'),('nonlinear sciences','cellular automata and lattice gases','arxiv'),('nonlinear sciences','chaotic dynamics','arxiv'),('nonlinear sciences','exactly solvable and integrable systems','arxiv'),('nonlinear sciences','pattern formation and solitons','arxiv'),('mathematics','algebraic geometry','arxiv'),('mathematics','algebraic topology','arxiv'),('mathematics','analysis of pdes','arxiv'),('mathematics','category theory','arxiv'),('mathematics','classical analysis and odes','arxiv'),('mathematics','combinatorics','arxiv'),('mathematics','commutative algebra','arxiv'),('mathematics','complex variables','arxiv'),('mathematics','differential geometry','arxiv'),('mathematics','dynamical systems','arxiv'),('mathematics','functional analysis','arxiv'),('mathematics','general mathematics','arxiv'),('mathematics','general topology','arxiv'),('mathematics','geometric topology','arxiv'),('mathematics','group theory','arxiv'),('mathematics','history and overview','arxiv'),('mathematics','information theory','arxiv'),('mathematics','k-theory and homology','arxiv'),('mathematics','logic','arxiv'),('mathematics','mathematical physics','arxiv'),('mathematics','metric geometry','arxiv'),('mathematics','number theory','arxiv'),('mathematics','numerical analysis','arxiv'),('mathematics','operator algebras','arxiv'),('mathematics','optimization and control','arxiv'),('mathematics','probability','arxiv'),('mathematics','quantum algebra','arxiv'),('mathematics','representation theory','arxiv'),('mathematics','rings and algebras','arxiv'),('mathematics','spectral theory','arxiv'),('mathematics','statistics','arxiv'),('mathematics','symplectic geometry','arxiv'),('astrophysics','NULL','arxiv'),('physics','disordered systems and neural networks','arxiv'),('physics','mesoscopic systems and quantum hall effect','arxiv'),('physics','materials science','arxiv'),('physics','other','arxiv'),('physics','soft condensed matter','arxiv'),('physics','statistical mechanics','arxiv'),('physics','strongly correlated electrons','arxiv'),('physics','superconductivity','arxiv'),('general relativity and quantum cosmology','NULL','arxiv'),('high energy physics','experiment','arxiv'),('high energy physics','lattice','arxiv'),('high energy physics','phenomenology','arxiv'),('high energy physics','theory','arxiv'),('mathematical physics','NULL','arxiv'),('nuclear experiment','NULL','arxiv'),('nuclear theory','NULL','arxiv'),('physics','accelerator physics','arxiv'),('physics','atmospheric and oceanic physics','arxiv'),('physics','atomic physics','arxiv'),('physics','atomic and molecular clusters','arxiv'),('physics','biological physics','arxiv'),('physics','chemical physics','arxiv'),('physics','classical physics','arxiv'),('physics','computational physics','arxiv'),('physics','data analysis; statistics and probability','arxiv'),('physics','fluid dynamics','arxiv'),('physics','general physics','arxiv'),('physics','geophysics','arxiv'),('physics','history of physics','arxiv'),('physics','instrumentation and detectors','arxiv'),('physics','medical physics','arxiv'),('physics','optics','arxiv'),('physics','physics education','arxiv'),('physics','physics and society','arxiv'),('physics','plasma physics','arxiv'),('physics','popular physics','arxiv'),('physics','space physics','arxiv'),('quantum physics','NULL','arxiv');
/*!40000 ALTER TABLE `subject_lattice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-05 21:14:44
