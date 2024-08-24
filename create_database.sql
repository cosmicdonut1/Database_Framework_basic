-- create_database.sql

-- Not a real-life database, just a default setup to showcase functionality.
-- Actual data has been anonymized and removed due to confidentiality concerns.

CREATE DATABASE unternehmens_db;
USE unternehmens_db;

-- Employee table
CREATE TABLE mitarbeiter (
    mitarbeiter_id INT AUTO_INCREMENT,
    vorname VARCHAR(50),
    nachname VARCHAR(50),
    abteilung_id INT,
    einstellungsdatum DATE,
    gehalt VARBINARY(255),
    position_id INT,
    PRIMARY KEY (mitarbeiter_id)
);

-- Departments table
CREATE TABLE abteilungen (
    abteilung_id INT AUTO_INCREMENT,
    abteilung_name VARCHAR(50),
    PRIMARY KEY (abteilung_id)
);

-- Positions table for employees
CREATE TABLE positionen (
    position_id INT AUTO_INCREMENT,
    position_name VARCHAR(50),
    PRIMARY KEY (position_id)
);

-- Tasks table
CREATE TABLE aufgaben (
    aufgabe_id INT AUTO_INCREMENT,
    beschreibung VARCHAR(255),
    mitarbeiter_id INT,
    startdatum DATE,
    faelligkeitsdatum DATE,
    status VARCHAR(20),
    PRIMARY KEY (aufgabe_id),
    FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(mitarbeiter_id)
);

-- Table to store historical changes to the employees' data
CREATE TABLE mitarbeiter_historie (
    historie_id INT AUTO_INCREMENT,
    mitarbeiter_id INT,
    aenderungsdatum DATE,
    feld VARCHAR(50),
    alter_wert VARCHAR(255),
    neuer_wert VARCHAR(255),
    PRIMARY KEY (historie_id),
    FOREIGN KEY (mitarbeiter_id) REFERENCES mitarbeiter(mitarbeiter_id)
);