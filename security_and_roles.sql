-- security_and_roles.sql

-- Creating role for manager and assigning privileges
CREATE ROLE manager;
CREATE USER 'manager_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT manager TO 'manager_user'@'localhost';

-- Grant privileges to the manager role
GRANT SELECT, INSERT, UPDATE ON unternehmens_db.* TO 'manager_user'@'localhost';
GRANT INSERT ON unternehmens_db.aufgaben TO 'manager_user'@'localhost';

-- Revoke DELETE privilege from manager role for more security
REVOKE DELETE ON unternehmens_db.* FROM 'manager_user'@'localhost';

-- Set default role for user
SET DEFAULT ROLE manager FOR 'manager_user'@'localhost';