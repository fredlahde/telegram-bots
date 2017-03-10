-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema telegramdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema telegramdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `telegramdb` DEFAULT CHARACTER SET utf8 ;
USE `telegramdb` ;

-- -----------------------------------------------------
-- Table `telegramdb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telegramdb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `chat_id` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `telegramdb`.`keyword`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `telegramdb`.`keyword` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `keyword` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_keywords_users_idx` (`user_id` ASC),
  CONSTRAINT `fk_keywords_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `telegramdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
