-- Create the database
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

-- Add the first secondary file
ALTER DATABASE section1
ADD FILE
(
   NAME = "section_sec",
   FILENAME = 'E:\SQLData\section1_log.ndf',
   SIZE = 5MB,
   FILEGROWTH = 10%,
   MAXSIZE = 50MB
);

-- Add the second secondary file
ALTER DATABASE section1
ADD FILE
(
   NAME = "section2",
   FILENAME = 'E:\SQLData\section2.ndf',
   SIZE = 8MB,
   FILEGROWTH = 2MB,   
   MAXSIZE = 100MB      
);

-- Modify the size of the secondary file
ALTER DATABASE section1
MODIFY FILE
(
   NAME = "section2",
   SIZE = 100MB
);

-- Remove the secondary file
ALTER DATABASE section1
REMOVE FILE "section_sec";

-- If the file is not empty and cannot be removed
DBCC SHRINKFILE(section_sec, EMPTYFILE)

-- Drop the entire database
DROP DATABASE section1

-- Display the database files
SELECT * FROM sys.database_files;














