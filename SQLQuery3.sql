-- ����� ����� ��������
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


--  ����� ��� ����� �����
ALTER DATABASE section1
ADD FILE
(
   NAME = "section_sec",
   FILENAME = 'E:\SQLData\section1_log.ndf',
   SIZE = 5MB,
   FILEGROWTH = 10%,
   MAXSIZE = 50MB
);



-- ����� ����� ������� ������
ALTER DATABASE section1
ADD FILE
(
   NAME = "section2",
   FILENAME = 'E:\SQLData\section2.ndf',
   SIZE = 8MB,
   FILEGROWTH = 2MB,   
   MAXSIZE = 100MB      
);


-- ����� ��� ����� ������� 
ALTER DATABASE section1
MODIFY FILE
(
   NAME = "section2",
   SIZE = 100MB
);


-- ��� ����� �������
ALTER DATABASE section1
REMOVE FILE "section_sec";


-- ���� �� database

-- �� ������ ����� �� ���� ��� ���� �����
DBCC shrinkfile(section_sec,emptyfile)

drop database section1 -- delete whole database


-- ����� ������ �������
SELECT * FROM sys.database_files;















