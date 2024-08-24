-- insert_data.sql

-- Insert default departments
INSERT INTO abteilungen (abteilung_name) VALUES
('Personalwesen'),    -- Human Resources
('Finanzwesen'),      -- Finance
('IT'),               -- IT
('Marketing');        -- Marketing

-- Insert default positions
INSERT INTO positionen (position_name) VALUES
('Manager'),
('Entwickler'),       -- Developer
('Analyst'),
('Vertrieb');         -- Sales

-- Insert default employees
INSERT INTO mitarbeiter (vorname, nachname, abteilung_id, einstellungsdatum, gehalt, position_id) VALUES
('Johann', 'Schmidt', 1, '2020-01-15', AES_ENCRYPT('60000', 'secure_key'), 1),
('Anna', 'Müller', 2, '2019-03-23', AES_ENCRYPT('75000', 'secure_key'), 2),
('Michael', 'Braun', 3, '2018-07-30', AES_ENCRYPT('90000', 'secure_key'), 2),
('Emma', 'Weiß', 4, '2021-05-12', AES_ENCRYPT('55000', 'secure_key'), 3),
('Hans', 'Lehmann', 1, '2021-04-15', AES_ENCRYPT('70000', 'secure_key'), 4),
('Lukas', 'Gruber', 3, '2020-06-20', AES_ENCRYPT('65000', 'secure_key'), 4),
('Sophie', 'Bauer', 4, '2019-12-05', AES_ENCRYPT('50000', 'secure_key'), 3),
('Marie', 'Fischer', 2, '2018-11-10', AES_ENCRYPT('80000', 'secure_key'), 1);

-- Insert default tasks
INSERT INTO aufgaben (beschreibung, mitarbeiter_id, startdatum, faelligkeitsdatum, status) VALUES
('Erstellung des Budgetberichts', 2, '2023-01-01', '2023-01-31', 'Abgeschlossen'),  -- Completed
('Migration des Datenbanksystems', 3, '2023-02-01', '2023-02-28', 'In Bearbeitung'), -- In Progress
('Organisation des Teambuilding-Events', 1, '2023-03-01', '2023-03-15', 'Noch nicht begonnen'), -- Not Started
('Überarbeitung der Website', 4, '2023-04-01', '2023-04-30', 'Abgeschlossen'),
('Entwicklung der neuen App', 6, '2023-05-01', '2023-05-31', 'Abgeschlossen'),
('Analyse der Markttrends', 7, '2023-06-01', '2023-06-30', 'In Bearbeitung');