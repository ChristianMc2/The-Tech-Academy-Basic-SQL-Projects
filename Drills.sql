/* Drill 1*/

SELECT * FROM tbl_habitat;

/*Drill 2*/

SELECT species_order, species_name FROM tbl_species WHERE species_order = 3;

/*Drill 3*/

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;

/*Drill 4*/

SELECT species_name FROM tbl_species WHERE species_nutrition BETWEEN 2202 AND 2206;

/*Drill 5*/

SELECT
	a1.species_name AS 'Species Name: ',
	a6.nutrition_type AS 'Nutrition Type: '
	FROM tbl_species a1
	INNER JOIN tbl_animalia a2 ON a2.animalia_id = a1.species_animalia											
	INNER JOIN tbl_nutrition a6 ON a6.nutrition_id = a1.species_nutrition		
;	

/*Drill 6*/

SELECT specialist_fname, specialist_lname, specialist_contact FROM tbl_specialist WHERE specialist_id = 1;

/*Drill 7*/

CREATE DATABASE drill11;
USE drill11;

CREATE TABLE tbl_name (		
		fName VARCHAR(50) PRIMARY KEY NOT NULL,
		lName VARCHAR(50) NOT NULL		
); 


INSERT INTO tbl_name
	(fName, lName)
	VALUES
	('Furio', 'Giunta'),
	('Benny', 'Fazio')
		
;


CREATE TABLE tbl_contact (
		contact_phone VARCHAR(50) NOT NULL,
		contact_address VARCHAR(50) NOT NULL,
		contact_fName VARCHAR(50) NOT NULL  CONSTRAINT fk_name_id FOREIGN KEY REFERENCES tbl_name(fName)
		
); 



INSERT INTO tbl_contact
	(contact_phone, contact_address, contact_fName)
	VALUES
	('314-555-0000', '05 Baker Street', 'Furio'),
	('222-555-7777', '205 Harlow way', 'Benny')
		
;


SELECT
	fName AS 'Name: ',
	contact_phone AS 'Phone number: '
	FROM tbl_name
	INNER JOIN tbl_contact  ON fName = contact_fName								
;			



		


