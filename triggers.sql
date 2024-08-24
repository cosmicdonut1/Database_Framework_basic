-- triggers.sql

DELIMITER //

CREATE TRIGGER mitarbeiter_vor_aenderung
BEFORE UPDATE ON mitarbeiter
FOR EACH ROW
BEGIN
    IF NEW.vorname <> OLD.vorname THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'vorname', OLD.vorname, NEW.vorname);
    END IF;
    IF NEW.nachname <> OLD.nachname THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'nachname', OLD.nachname, NEW.nachname);
    END IF;
    IF NEW.abteilung_id <> OLD.abteilung_id THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'abteilung_id', OLD.abteilung_id, NEW.abteilung_id);
    END IF;
    IF NEW.einstellungsdatum <> OLD.einstellungsdatum THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'einstellungsdatum', OLD.einstellungsdatum, NEW.einstellungsdatum);
    END IF;
    IF NEW.gehalt <> OLD.gehalt THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'gehalt', OLD.gehalt, NEW.gehalt);
    END IF;
    IF NEW.position_id <> OLD.position_id THEN
        INSERT INTO mitarbeiter_historie (mitarbeiter_id, aenderungsdatum, feld, alter_wert, neuer_wert)
        VALUES (OLD.mitarbeiter_id, NOW(), 'position_id', OLD.position_id, NEW.position_id);
    END IF;
END//

DELIMITER ;