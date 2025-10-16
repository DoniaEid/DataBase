# Database Project

## Project Overview
This project contains scripts and structures for managing a relational database.  
It demonstrates creation, modification, and deletion of databases, tables, and database files.

## Database Structure
- **Databases:** Examples include `section1`, `my_database`, etc.
- **Files:**  
  - Primary data files (`.mdf`)  
  - Secondary data files (`.ndf`)  
  - Log files (`.ldf`)

## SQL Scripts
The repository includes scripts for:
- Creating databases with primary and log files
- Adding secondary files
- Modifying file sizes
- Removing files safely
- Shrinking files if needed
- Dropping entire databases
- Viewing database files

Example snippet:

```sql
-- Create a database
CREATE DATABASE my_database
ON PRIMARY
(
   NAME = "my_database",
   FILENAME = 'C:\SQLData\my_database.mdf',
   SIZE = 10MB,
   FILEGROWTH = 4MB,
   MAXSIZE = 100MB
)
LOG ON
(
   NAME = "my_database_log",
   FILENAME = 'C:\SQLData\my_database_log.ldf',
   SIZE = 50MB,
   FILEGROWTH = 8MB,
   MAXSIZE = UNLIMITED
);
