-- MySQL Script generated by MySQL Workbench
-- Thu Feb  8 11:24:31 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbResa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbResa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbResa` DEFAULT CHARACTER SET utf8 ;
USE `dbResa` ;

-- -----------------------------------------------------
-- Table `dbResa`.`T_USERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbResa`.`T_USERS` (
  `ID_USER` INT NOT NULL AUTO_INCREMENT,
  `USERNAME` VARCHAR(45) NOT NULL,
  `USERFIRSTNAME` VARCHAR(45) NULL,
  `USERMAIL` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_USER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbResa`.`T_ROOM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbResa`.`T_ROOM` (
  `ID_ROOM` INT NOT NULL AUTO_INCREMENT,
  `T_ROOMNAME` VARCHAR(45) NOT NULL,
  `ROOMCAPACITY` INT NOT NULL,
  PRIMARY KEY (`ID_ROOM`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbResa`.`T_USERS_has_T_ROOM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbResa`.`T_USERS_has_T_ROOM` (
  `T_USERS_ID_USER` INT NOT NULL,
  `T_ROOM_ID_ROOM` INT NOT NULL,
  `RESHEUREDEB` DATETIME NULL,
  `RESDUREE` TIME NULL,
  `RESERVPLACE` INT NULL,
  INDEX `fk_T_USERS_has_T_ROOM_T_ROOM1_idx` (`T_ROOM_ID_ROOM` ASC),
  INDEX `fk_T_USERS_has_T_ROOM_T_USERS_idx` (`T_USERS_ID_USER` ASC),
  CONSTRAINT `fk_T_USERS_has_T_ROOM_T_USERS`
    FOREIGN KEY (`T_USERS_ID_USER`)
    REFERENCES `dbResa`.`T_USERS` (`ID_USER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_T_USERS_has_T_ROOM_T_ROOM1`
    FOREIGN KEY (`T_ROOM_ID_ROOM`)
    REFERENCES `dbResa`.`T_ROOM` (`ID_ROOM`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
