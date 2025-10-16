-- ≈‰‘«¡ ﬁ«⁄œ… «·»Ì«‰« 
CREATE DATABASE section1
ON PRIMARY
(
   NAME = "section1",
   FILENAME = 'E:\SQLData\section1.mdf',
   SIZE = 10MB,
   FILEGROWTH = 4MB,
   MAXSIZE = 100MB
)
LOG ON
(
   NAME = "section1_log",
   FILENAME = 'E:\SQLData\section1_log.ldf',
   SIZE = 100MB,
   FILEGROWTH = 8MB,
   MAXSIZE = UNLIMITED
);


--  ≈÷«›… „·› À«‰ÊÌ «·«Ê·
ALTER DATABASE section1
ADD FILE
(
   NAME = "section_sec",
   FILENAME = 'E:\SQLData\section1_log.ndf',
   SIZE = 5MB,
   FILEGROWTH = 10%,
   MAXSIZE = 50MB
);



-- ≈÷«›… «·„·› «·À«‰ÊÌ «·À«‰Ì
ALTER DATABASE section1
ADD FILE
(
   NAME = "section2",
   FILENAME = 'E:\SQLData\section2.ndf',
   SIZE = 8MB,
   FILEGROWTH = 2MB,   
   MAXSIZE = 100MB      
);


--  ⁄œÌ· ÕÃ„ «·„·› «·À«‰ÊÌ 
ALTER DATABASE section1
MODIFY FILE
(
   NAME = "section2",
   SIZE = 100MB
);


-- Õ–› «·„·› «·À«‰ÊÌ
ALTER DATABASE section1
REMOVE FILE "section_sec";


-- «Õ“› ﬂ· database

-- ·Ê «·›«Ì· » «⁄Ì „‘ ›«÷Ì Ê„‘ —«÷Ì Ì„”ÕÂ
DBCC shrinkfile(section_sec,emptyfile)

drop database section1 -- delete whole database


-- ÿ»«⁄… »Ì«‰«  «·„·›« 
SELECT * FROM sys.database_files;















