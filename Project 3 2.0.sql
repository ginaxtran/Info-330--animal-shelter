/* Marthin Mandig, Heena, Suma, Gina
INFO 330 BA 
GROUP 4
5/17/24 */

-- Step 1: Create the database
USE master;
GO


CREATE DATABASE db_animal_shelter;
GO

-- Step 2: Select the database
DROP TABLE IF EXISTS db_animal_shelter
USE db_animal_shelter;
GO

-- Insert data into stagingTable
-- Step 3: Creating the staging table and inserting data
DROP TABLE IF EXISTS animalshelter
CREATE TABLE dbo.animalshelter (
    ShelterId DATE NOT NULL PRIMARY KEY ,
    AnimalsName VARCHAR(50),
    Species VARCHAR(4) NOT NULL,
    PrimaryBreed VARCHAR(46) NOT NULL,
    SecondaryBreed VARCHAR(46),
    ZIPCode VARCHAR(7)
);
GO

ALTER TABLE dbo.animalshelter
ADD CONSTRAINT UQ_AnimalshelterID UNIQUE (animalshelterid);
GO
-- Insert data into stagingTable
-- Insert additional data into stagingTable
--SET IDENTITY_INSERT dbo.animalshelter ON;
--GO
INSERT INTO dbo.animalshelter (ShelterId, AnimalsName, Species, PrimaryBreed, SecondaryBreed, ZIPCode)
VALUES 
    ('2017-05-10', 'Toby', 'Dog', 'Bulldog', 'Mix', '98102'),
    ('2017-09-30', 'Luna', 'Cat', 'Ragdoll', 'Mix', '98104'),
    ('2018-12-18', 'Coco', 'Dog', 'Shih Tzu', NULL, '98108'),
    ('2019-06-21', 'Rocky', 'Dog', 'Boxer', 'Mix', '98109'),
    ('2020-05-17', 'Molly', 'Cat', 'Persian', 'Mix', '98118'),
    ('2021-11-11', 'Chloe', 'Cat', 'British Shorthair', NULL, '98116'),
    ('2022-07-22', 'Bailey', 'Dog', 'Dachshund', 'Mix', '98112'),
    ('2022-10-19', 'Stella', 'Cat', 'Maine Coon', 'Mix', '98133'),
    ('2023-01-07', 'Ruby', 'Dog', 'Cocker Spaniel', NULL, '98125'),
    ('2023-03-15', 'Loki', 'Cat', 'Russian Blue', 'Mix', '98107'),
    ('2016-02-11', 'Shadow', 'Dog', 'Rottweiler', 'Mix', '98110'),
    ('2017-04-16', 'Buddy', 'Dog', 'Pit Bull', NULL, '98112'),
    ('2018-08-25', 'Nala', 'Cat', 'Abyssinian', 'Mix', '98113'),
    ('2019-03-14', 'Finn', 'Dog', 'Basset Hound', 'Mix', '98114'),
    ('2020-06-18', 'Gizmo', 'Cat', 'Sphynx', 'Mix', '98115'),
    ('2021-01-25', 'Jasper', 'Dog', 'Samoyed', NULL, '98116'),
    ('2021-09-30', 'Lilly', 'Cat', 'Savannah', 'Mix', '98117'),
    ('2022-12-13', 'Riley', 'Dog', 'Mastiff', 'Mix', '98118'),
    ('2023-05-24', 'Zeus', 'Dog', 'Doberman Pinscher', NULL, '98119'),
    ('2016-07-15', 'Simba', 'Cat', 'Egyptian Mau', 'Mix', '98120'),
    ('2017-11-22', 'Sophie', 'Dog', 'Great Dane', 'Mix', '98121'),
    ('2018-04-11', 'Henry', 'Dog', 'Chihuahua', NULL, '98122'),
    ('2019-10-06', 'Oscar', 'Cat', 'Chartreux', 'Mix', '98123'),
    ('2020-11-03', 'Murphy', 'Dog', 'Bernese Mountain Dog', 'Mix', '98124'),
    ('2021-08-19', 'Roxy', 'Cat', 'American Shorthair', 'Mix', '98125'),
    ('2022-04-27', 'Benny', 'Dog', 'Vizsla', NULL, '98126'),
    ('2023-06-30', 'Willow', 'Cat', 'Turkish Angora', 'Mix', '98127'),
    ('2023-07-12', 'Duke', 'Dog', 'Newfoundland', 'Mix', '98128'),
    ('2016-09-21', 'Lulu', 'Cat', 'Selkirk Rex', 'Mix', '98129'),
    ('2017-03-28', 'Jake', 'Dog', 'Weimaraner', NULL, '98130'),
    ('2018-10-19', 'Ollie', 'Cat', 'Japanese Bobtail', 'Mix', '98131'),
    ('2019-07-05', 'Sadie', 'Dog', 'Akita', 'Mix', '98132'),
    ('2020-02-29', 'Piper', 'Cat', 'Snowshoe', 'Mix', '98134'),
    ('2021-12-21', 'Hazel', 'Dog', 'Irish Setter', NULL, '98135'),
    ('2022-11-18', 'Pepper', 'Cat', 'Singapura', 'Mix', '98136'),
    ('2023-08-14', 'Ace', 'Dog', 'Portuguese Water Dog', 'Mix', '98137'),
    ('2023-09-29', 'Buster', 'Cat', 'Manx', 'Mix', '98138'),
    ('2022-05-25', 'Baku', 'Cat', 'Mix', 'Mix', '98112');
GO
--check table structure
SELECT TOP 10 * FROM animalshelter

DROP TABLE IF EXISTS LicenseIssueDate
CREATE TABLE dbo.LicenseIssueDate(
    LicenseID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
    AnimalsName VARCHAR(50),
    LicenseDate DATE NOT NULL
);
GO

ALTER TABLE dbo.LicenseIssueDate
ADD CONSTRAINT UQ_AnimalshelterID UNIQUE (LicenseID);
GO

SET IDENTITY_INSERT dbo.LicenseIssueDate ON;
GO
INSERT INTO dbo.LicenseIssueDate (LicenseID, AnimalsName, LicenseDate) VALUES
    (1,'Toby', '2017-05-10'),
    (2,'Luna', '2017-09-30'),
    (3,'Coco', '2018-12-18'),
    (4,'Rocky', '2019-06-21'),
    (5,'Molly', '2020-05-17'),
    (6,'Chloe', '2021-11-11'),
    (7,'Bailey', '2022-07-22'),
    (8,'Stella', '2022-10-19'),
    (9,'Ruby', '2023-01-07'),
    (10,'Loki', '2023-03-15'),
    (11,'Shadow', '2016-02-11'),
    (12,'Buddy', '2017-04-16'),
    (13,'Nala', '2018-08-25'),
    (14,'Finn', '2019-03-14'),
    (15,'Gizmo', '2020-06-18'),
    (16,'Jasper', '2021-01-25'),
    (17,'Lilly', '2021-09-30'),
    (18,'Riley', '2022-12-13'),
    (19,'Zeus', '2023-05-24'),
    (20,'Simba', '2016-07-15')
GO

SET IDENTITY_INSERT dbo.LicenseIssueDate OFF
GO

SELECT TOP 10 * FROM LicenseIssueDate

DROP TABLE IF EXISTS AnimalsName
    CREATE TABLE dbo.AnimalsName (
        NameID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
        NameAnimal VARCHAR(60) NOT NULL,
        AnimalAge INTEGER NOT NULL
    );
GO

-- Insert data into AnimalsName
SET IDENTITY_INSERT dbo.AnimalsName ON;
GO
INSERT INTO dbo.AnimalsName (NameID, NameAnimal, AnimalAge) VALUES
    (1, 'Toby', 5),
    (2, 'Luna', 3),
    (3, 'Coco', 7),
    (4, 'Rocky', 4),
    (5, 'Molly', 2),
    (6, 'Chloe', 6),
    (7, 'Bailey', 3),
    (8, 'Stella', 1),
    (9, 'Ruby', 4),
    (10, 'Loki', 2),
    (11, 'Shadow', 8),
    (12, 'Buddy', 5),
    (13, 'Nala', 4),
    (14, 'Finn', 3),
    (15, 'Gizmo', 6),
    (16, 'Jasper', 7),
    (17, 'Lilly', 2),
    (18, 'Riley', 5),
    (19, 'Zeus', 4),
    (20, 'Simba', 8);
GO

-- Turn IDENTITY_INSERT OFF
SET IDENTITY_INSERT dbo.AnimalsName OFF;
GO

SELECT TOP 10 * FROM AnimalsName


DROP TABLE IF EXISTS Species
    CREATE TABLE dbo.Species (
        SpeciesID INTEGER PRIMARY KEY IDENTITY(1,1) NOT NULL,
        NameAnimal VARCHAR(60) NOT NULL,
        SpeciesName VARCHAR (60),
        PrimaryBreedID INTEGER NOT NULL,
        SecondaryBreedID INTEGER,
        animalshelterid DATE
    );
GO

SET IDENTITY_INSERT dbo.Species ON;
GO
INSERT INTO dbo.Species (SpeciesID, NameAnimal, SpeciesName, PrimaryBreedID, SecondaryBreedID, animalshelterid) VALUES
    (1, 'Toby', 'Dog', 1, 2, '2017-05-10'),
    (2, 'Luna', 'Cat', 3, 4, '2017-09-30'),
    (3, 'Coco', 'Dog', 5, NULL, '2018-12-18'),
    (4, 'Rocky', 'Dog', 6, 7, '2019-06-21'),
    (5, 'Molly', 'Cat', 8, 9, '2020-05-17'),
    (6, 'Chloe', 'Cat', 10, NULL, '2021-11-11'),
    (7, 'Bailey', 'Dog', 11, 12, '2022-07-22'),
    (8, 'Stella', 'Cat', 13, 14, '2022-10-19'),
    (9, 'Ruby', 'Dog', 15, NULL, '2023-01-07'),
    (10, 'Loki', 'Cat', 16, 17, '2023-03-15'),
    (11, 'Shadow', 'Dog', 18, 19, '2016-02-11'),
    (12, 'Buddy', 'Dog', 20, NULL, '2017-04-16'),
    (13, 'Nala', 'Cat', 21, 22, '2018-08-25'),
    (14, 'Finn', 'Dog', 23, 24, '2019-03-14'),
    (15, 'Gizmo', 'Cat', 25, 26, '2020-06-18'),
    (16, 'Jasper', 'Dog', 27, NULL, '2021-01-25'),
    (17, 'Lilly', 'Cat', 28, 29, '2021-09-30'),
    (18, 'Riley', 'Dog', 30, 31, '2022-12-13'),
    (19, 'Zeus', 'Dog', 32, NULL, '2023-05-24'),
    (20, 'Simba', 'Cat', 33, 34, '2016-07-15');
GO

-- Turn IDENTITY_INSERT OFF
SET IDENTITY_INSERT dbo.Species OFF;
GO

SELECT TOP 10 * FROM Species



DROP TABLE IF EXISTS PrimaryBreed
    CREATE TABLE dbo.primarybreed (
        primarybreedName VARCHAR (70) PRIMARY KEY NOT NULL,
        SpeciesID INTEGER, 
        AnimalsName VARCHAR (100)
        );
    GO

INSERT INTO dbo.primarybreed (primarybreedName, SpeciesID, AnimalsName) VALUES
    ('Bulldog', 1, 'Toby'),
    ('Ragdoll', 2, 'Luna'),
    ('Shih Tzu', 3, 'Coco'),
    ('Boxer', 4, 'Rocky'),
    ('Persian', 5, 'Molly'),
    ('British Shorthair', 6, 'Chloe'),
    ('Dachshund', 7, 'Bailey'),
    ('Maine Coon', 8, 'Stella'),
    ('Cocker Spaniel', 9, 'Ruby'),
    ('Russian Blue', 10, 'Loki'),
    ('Rottweiler', 11, 'Shadow'),
    ('Pit Bull', 12, 'Buddy'),
    ('Abyssinian', 13, 'Nala'),
    ('Basset Hound', 14, 'Finn'),
    ('Sphynx', 15, 'Gizmo'),
    ('Samoyed', 16, 'Jasper'),
    ('Savannah', 17, 'Lilly'),
    ('Mastiff', 18, 'Riley'),
    ('Doberman Pinscher', 19, 'Zeus'),
    ('Egyptian Mau', 20, 'Simba'),
    ('Great Dane', 21, 'Sophie'),
    ('Chihuahua', 22, 'Henry'),
    ('Chartreux', 23, 'Oscar'),
    ('Bernese Mountain Dog', 24, 'Murphy'),
    ('American Shorthair', 25, 'Roxy'),
    ('Vizsla', 26, 'Benny'),
    ('Turkish Angora', 27, 'Willow'),
    ('Newfoundland', 28, 'Duke'),
    ('Selkirk Rex', 29, 'Lulu'),
    ('Weimaraner', 30, 'Jake'),
    ('Japanese Bobtail', 31, 'Ollie'),
    ('Akita', 32, 'Sadie'),
    ('Snowshoe', 33, 'Piper'),
    ('Irish Setter', 34, 'Hazel'),
    ('Singapura', 35, 'Pepper'),
    ('Portuguese Water Dog', 36, 'Ace'),
    ('Manx', 37, 'Buster'),
    ('Mix', 38, 'Baku');
GO

SELECT TOP 10 * FROM primarybreed

-- Step 5: Add foreign key constraints
ALTER TABLE dbo.db_animal_shelter
ADD CONSTRAINT fk_dogs FOREIGN KEY (dogs_id) REFERENCES dbo.stagingTable (ShelterId),
    CONSTRAINT fk_cats FOREIGN KEY (cats_id) REFERENCES dbo.stagingTable (ShelterId),
    CONSTRAINT fk_year FOREIGN KEY (year_id) REFERENCES dbo.stagingTable (ShelterId),
    CONSTRAINT fk_volunteers FOREIGN KEY (volunteers_id) REFERENCES dbo.stagingTable (ShelterId),
    CONSTRAINT fk_zip FOREIGN KEY (zip_id) REFERENCES dbo.stagingTable (ShelterId);

-- Step 6: Add a check constraint
ALTER TABLE dbo.db_animal_shelter
ADD CONSTRAINT chk_zip_id_positive CHECK (zip_id > 0);

-- Step 7: Create stored procedure
IF OBJECT_ID('dbo.InsertAnimalShelterRow', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.InsertAnimalShelterRow;
END;
GO

CREATE PROCEDURE dbo.InsertAnimalShelterRow (
    @p_shelter_id INT,
    @p_customer_id INT,
    @p_dogs_id INT,
    @p_cats_id INT,
    @p_year_id INT,
    @p_volunteers_id INT,
    @p_zip_id INT,
    @p_message VARCHAR(255) OUTPUT
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check constraints
        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_dogs_id)
        BEGIN
            SET @p_message = 'dogs_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_cats_id)
        BEGIN
            SET @p_message = 'cats_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_year_id)
        BEGIN
            SET @p_message = 'year_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_volunteers_id)
        BEGIN
            SET @p_message = 'volunteers_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_zip_id)
        BEGIN
            SET @p_message = 'zip_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_shelter_id)
        BEGIN
            SET @p_message = 'shelter_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        IF NOT EXISTS (SELECT 1 FROM dbo.stagingTable WHERE LicenseID = @p_customer_id)
        BEGIN
            SET @p_message = 'customer_id does not exist.';
            ROLLBACK;
            RETURN;
        END

        -- Insert data
        INSERT INTO dbo.db_animal_shelter (customer_id, dogs_id, cats_id, year_id, volunteers_id, zip_id)
        VALUES 
