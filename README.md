# SQL Employee and Task Management System

## Overview

This repository provides a comprehensive SQL-based system for managing employees and tasks in a company. The database is localized for Austria and includes features such as role-based access control, data encryption, and logging of user actions. Please note that this is not a real-life database; it's a default setup to showcase functionality. Actual data has been anonymized and removed due to confidentiality concerns.

## Project Structure

The project consists of several SQL scripts organized to set up the database, insert initial data, create triggers, manage user roles and permissions, and log user actions. Additionally, a shell script for automated database backups is included.

- create_database.sql: Script to create the database and all necessary tables.
- insert_data.sql: Script to insert default departments, positions, employees, and tasks.
- triggers.sql: Script to create triggers for tracking changes in employee data.
- security_and_roles.sql: Script to create user roles, set default roles, and manage permissions.
- logging.sql: Script to create a logging table for user actions.
- backup.sh: Shell script for automated database backups.

## Setup Instructions

1. Create Database and Tables: Run the create_database.sql script to create the database and necessary tables. Command: mysql -u root -p < create_database.sql

2. Insert Initial Data: Run the insert_data.sql script to populate the database with default data. Command: mysql -u root -p < insert_data.sql

3. Create Triggers for Historical Data: Run the triggers.sql script to create triggers that track changes in employee data. Command: mysql -u root -p < triggers.sql

4. Set Up Roles and Permissions: Run the security_and_roles.sql script to set up user roles and manage permissions. Command: mysql -u root -p < security_and_roles.sql

5. Create Logging Table: Run the logging.sql script to create a table for logging user actions. Command: mysql -u root -p < logging.sql

6. Set Up Automated Backups: Make sure the backup.sh script is executable and set up a cron job to run it at regular intervals. Command to make executable: chmod +x backup.sh. Example cron job (daily at 2am): 0 2 * * * /path/to/backup.sh

7. Verify Setup: Perform various queries to ensure the database setup is correct. Verify Database Structure: SHOW DATABASES; USE unternehmens_db; SHOW TABLES; Check Data Integrity: Departments: SELECT * FROM abteilungen; Positions: SELECT * FROM positionen; Employees: SELECT vorname, nachname, einstellungsdatum, CAST(AES_DECRYPT(gehalt, 'secure_key') AS CHAR) AS gehalt FROM mitarbeiter; Tasks: SELECT * FROM aufgaben; Historical Data: SELECT * FROM mitarbeiter_historie; Role Permissions and Security: As manager_user, USE unternehmens_db; Insert new task: INSERT INTO aufgaben (beschreibung, mitarbeiter_id, startdatum, faelligkeitsdatum, status) VALUES ('Neue Aufgabe', 3, '2023-07-01', '2023-07-10', 'In Bearbeitung'); Attempt to delete a record (should fail): DELETE FROM mitarbeiter WHERE mitarbeiter_id = 1; Check logs (as admin): SELECT * FROM benutzer_aktionen;

## License

Free use
