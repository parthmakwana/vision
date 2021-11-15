-- create schema
DROP DATABASE `vision`;
CREATE SCHEMA `vision` DEFAULT CHARACTER SET utf8mb4 ; 

-- create table `vision`
CREATE TABLE `vision`.`patient` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `age` INT(3) NOT NULL,
  `gender` TINYINT(1) NOT NULL,
  `phnoe_no` VARCHAR(15) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  
-- create table 'patient history'
  CREATE TABLE `vision`.`patient_history` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) NOT NULL,
  `appointment_id` INT(11) NOT NULL,
  `weight` INT(5) NOT NULL,
  `height` VARCHAR(10) NOT NULL,
  `blood_pressure` VARCHAR(10) NOT NULL,
  `diagnosis` VARCHAR(50) NOT NULL,
  `doc_notes` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

-- create table `drugs`
CREATE TABLE `vision`.`drugs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

-- create table `prescription`  
  CREATE TABLE `vision`.`prescription` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` INT(11) NOT NULL,
  `drug_id` INT(11) NOT NULL,
  `start_date` DATETIME NOT NULL,
  `end_date` DATETIME NOT NULL,
  `trx` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

-- create table `appointment`
CREATE TABLE `vision`.`appointment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) NOT NULL,
  `date_time` DATETIME NOT NULL,
  `doctor_id` INT(11) NOT NULL,
  `notes` VARCHAR(150) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

-- create table `doctor`
CREATE TABLE `vision`.`doctor` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `specialist` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

-- create table `login`
CREATE TABLE `vision`.`login` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

-- foreign key for patient_history
ALTER TABLE `vision`.`patient_history` 
ADD CONSTRAINT `patient_id_fk`
  FOREIGN KEY (`id`)
  REFERENCES `vision`.`patient` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `appointment_id_fk`
  FOREIGN KEY (`id`)
  REFERENCES `vision`.`appointment` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- foreign key for prescription
ALTER TABLE `vision`.`prescription` 
ADD CONSTRAINT `appointment_id_fkk`
  FOREIGN KEY (`id`)
  REFERENCES `vision`.`appointment` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `drug_id_fk`
  FOREIGN KEY (`id`)
  REFERENCES `vision`.`drugs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- foreign key for appointment  
ALTER TABLE `vision`.`appointment` 
ADD CONSTRAINT `patient_id_fkk`
  FOREIGN KEY (`id`)
  REFERENCES `vision`.`patient` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
 
-- index for patient_history 
 ALTER TABLE `vision`.`patient_history` 
ADD INDEX `patient_id_idx` (`patient_id` ASC) VISIBLE;
;

-- index for patient_history
ALTER TABLE `vision`.`patient_history` 
ADD INDEX `appointment_id_idx` (`appointment_id` ASC) VISIBLE;
; 

-- alter appointment 
ALTER TABLE `vision`.`appointment` 
CHANGE COLUMN `status` `status` TINYINT(1) NULL ;