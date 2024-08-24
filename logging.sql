-- logging.sql

CREATE TABLE benutzer_aktionen (
    aktion_id INT AUTO_INCREMENT,
    benutzer VARCHAR(50),
    aktion VARCHAR(255),
    zeitstempel TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (aktion_id)
);

-- Example of logging action
INSERT INTO benutzer_aktionen (benutzer, aktion)
VALUES (CURRENT_USER(), 'User has logged in');