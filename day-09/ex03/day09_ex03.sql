DROP TRIGGER trg_person_delete_audit ON person;
DROP TRIGGER trg_person_update_audit ON person;
DROP TRIGGER trg_person_insert_audit ON person;

DROP FUNCTION fnc_trg_person_delete_audit();
DROP FUNCTION fnc_trg_person_update_audit();
DROP FUNCTION fnc_trg_person_insert_audit();

TRUNCATE person_audit;

CREATE FUNCTION fnc_trg_person_audit()
RETURNS TRIGGER AS
    $BODY$
    BEGIN
        IF (TG_OP = 'INSERT') THEN
            INSERT INTO person_audit VALUES (CURRENT_TIMESTAMP, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
            ELSEIF (TG_OP = 'UPDATE') THEN
                INSERT INTO person_audit
                VALUES (CURRENT_TIMESTAMP, 'U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
                ELSE
                    INSERT INTO person_audit
                    VALUES (CURRENT_TIMESTAMP, 'D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
                    END IF;
        RETURN NULL;
        END;
    $BODY$
    LANGUAGE plpgsql;

CREATE TRIGGER trg_person_audit
    AFTER INSERT OR UPDATE OR DELETE ON person FOR EACH ROW
    EXECUTE FUNCTION fnc_trg_person_audit();


INSERT INTO person VALUES (10,'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;

select * from person_audit;
