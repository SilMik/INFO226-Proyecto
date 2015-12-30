-- MySQL Workbench Synchronization
-- Generated: 2015-12-22 16:22
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: laboratorio

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `proyecto_web` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Compania` (
  `idCompania` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `latitud` VARCHAR(45) NOT NULL,
  `longitud` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCompania`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Carro` (
  `idCarro` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Compañia_idCompañia` INT(11) NOT NULL,
  PRIMARY KEY (`idCarro`, `Compañia_idCompañia`),
  INDEX `fk_Carro_Compañia1_idx` (`Compañia_idCompañia` ASC),
  CONSTRAINT `fk_Carro_Compañia1`
    FOREIGN KEY (`Compañia_idCompañia`)
    REFERENCES `proyecto_web`.`Compania` (`idCompania`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Codigo` (
  `idCodigo` INT(11) NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCodigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Especialidad` (
  `Carro_idCarro` INT(11) NOT NULL,
  `Codigo_idCodigo` INT(11) NOT NULL,
  PRIMARY KEY (`Carro_idCarro`, `Codigo_idCodigo`),
  INDEX `fk_Carro_has_Codigo_Codigo1_idx` (`Codigo_idCodigo` ASC),
  INDEX `fk_Carro_has_Codigo_Carro_idx` (`Carro_idCarro` ASC),
  CONSTRAINT `fk_Carro_has_Codigo_Carro`
    FOREIGN KEY (`Carro_idCarro`)
    REFERENCES `proyecto_web`.`Carro` (`idCarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carro_has_Codigo_Codigo1`
    FOREIGN KEY (`Codigo_idCodigo`)
    REFERENCES `proyecto_web`.`Codigo` (`idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Emergencia` (
  `idEmergencia` INT(11) NOT NULL AUTO_INCREMENT,
  `poblacion` VARCHAR(45) NOT NULL,
  `sector` VARCHAR(45) NOT NULL,
  `callePrincipal` VARCHAR(45) NOT NULL,
  `calleSecundaria` VARCHAR(45) NOT NULL,
  `poi` VARCHAR(45) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `contacto` VARCHAR(45) NOT NULL,
  `latitudEmergencia` VARCHAR(45) NOT NULL,
  `longitudEmergencia` VARCHAR(45) NOT NULL,
  `Codigo_idCodigo` INT(11) NOT NULL,
  `horaInicio` DATETIME NULL DEFAULT NULL,
  `horaEE` DATETIME NULL DEFAULT NULL COMMENT 'Hora En Emergencia',
  `horaFin` DATETIME NULL DEFAULT NULL,
  `horaLlegada` DATETIME NULL DEFAULT NULL COMMENT 'Hora llegada al cuartel',
  PRIMARY KEY (`idEmergencia`, `Codigo_idCodigo`),
  INDEX `fk_Emergencia_Codigo1_idx` (`Codigo_idCodigo` ASC),
  CONSTRAINT `fk_Emergencia_Codigo1`
    FOREIGN KEY (`Codigo_idCodigo`)
    REFERENCES `proyecto_web`.`Codigo` (`idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `proyecto_web`.`Carro_has_Emergencia` (
  `Carro_idCarro` INT(11) NOT NULL,
  `Carro_Compañia_idCompañia` INT(11) NOT NULL,
  `Emergencia_idEmergencia` INT(11) NOT NULL,
  `Emergencia_Codigo_idCodigo` INT(11) NOT NULL,
  PRIMARY KEY (`Carro_idCarro`, `Carro_Compañia_idCompañia`, `Emergencia_idEmergencia`, `Emergencia_Codigo_idCodigo`),
  INDEX `fk_Carro_has_Emergencia_Emergencia1_idx` (`Emergencia_idEmergencia` ASC, `Emergencia_Codigo_idCodigo` ASC),
  INDEX `fk_Carro_has_Emergencia_Carro1_idx` (`Carro_idCarro` ASC, `Carro_Compañia_idCompañia` ASC),
  CONSTRAINT `fk_Carro_has_Emergencia_Carro1`
    FOREIGN KEY (`Carro_idCarro` , `Carro_Compañia_idCompañia`)
    REFERENCES `proyecto_web`.`Carro` (`idCarro` , `Compañia_idCompañia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carro_has_Emergencia_Emergencia1`
    FOREIGN KEY (`Emergencia_idEmergencia` , `Emergencia_Codigo_idCodigo`)
    REFERENCES `proyecto_web`.`Emergencia` (`idEmergencia` , `Codigo_idCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
