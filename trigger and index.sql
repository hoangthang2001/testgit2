CREATE DATABASE Triger;
USE Triger;

CREATE TABLE SINHVIEN(
    MaSV INT(11),
    TenSV VARCHAR(255),
    Email VARCHAR(50)
) ENGINE = InnoDB;


CREATE TABLE deleted_sinhvien (
    MaSV INT,
    TenSV VARCHAR(100),
    Email VARCHAR(100),
    deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


select *from SINHVIEN;

DELIMITER //
CREATE TRIGGER before_insert_sinhvien
BEFORE INSERT ON SINHVIEN
FOR EACH ROW
BEGIN
    SET NEW.TenSV = UPPER(NEW.TenSV);
END;
//
DELIMITER ;

INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (01,'nguyen van cuong', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (4,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (5,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (6,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (7,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (8,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (9,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (10,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (11,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (12,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (13,'hoang cong thang', 'chi@gamil.com');
INSERT INTO SINHVIEN(MaSV, TenSV, Email)
VALUES (14,'hoang cong thang', 'chi@gamil.com');

DELIMITER //
CREATE TRIGGER before_update_sinhvien
BEFORE Update ON SINHVIEN
FOR EACH ROW
BEGIN
    SET NEW.TenSV = UPPER(NEW.TenSV);
END;
//

ELIMITER ;

UPDATE SINHVIEN SET TenSV = 'nguyen van cuong' WHERE MaSV = 1;

DELIMITER //
CREATE TRIGGER before_delete_sinhvien
BEFORE DELETE ON SINHVIEN
FOR EACH ROW
BEGIN
    INSERT INTO deleted_sinhvien (MaSV, TenSV, Email)
    VALUES (OLD.MaSV, OLD.TenSV, OLD.Email);
END;
//
DELIMITER ;

DELETE FROM SINHVIEN 
WHERE MaSV = 1;


CREATE INDEX idx_name ON users (name);

ALTER TABLE SINHVIEN DROP INDEX idx_MaSV;

CREATE UNIQUE INDEX idx_MaSV ON SINHVIEN (MaSV);



