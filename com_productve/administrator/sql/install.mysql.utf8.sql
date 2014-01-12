SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

-- -----------------------------------------------------
-- Table `#__workshop`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__workshop` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `province` VARCHAR(128) NULL ,
  `city` VARCHAR(128) NULL ,
  `street` VARCHAR(128) NULL ,
  `number` VARCHAR(128) NULL ,
  `gps_location` VARCHAR(128) NULL ,
  `active` TINYINT(1)  NOT NULL ,
  `position_number` TINYINT NULL ,
  `description` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) 
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- -----------------------------------------------------
-- Table `#__order`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__order` (
  `id` INT NOT NULL ,
  `date` DATETIME NOT NULL ,
  `client_email` VARCHAR(128) NOT NULL ,
  `workshop_id` INT NOT NULL ,
  `client_name` VARCHAR(128) NOT NULL ,
  `client_number` VARCHAR(128) NOT NULL ,
  `description` TINYBLOB NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_order_workshop`
    FOREIGN KEY (`workshop_id` )
    REFERENCES `#__workshop` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- -----------------------------------------------------
-- Table `#__complaint`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__complaint` (
  `id` INT NOT NULL ,
  `client_email` VARCHAR(128) NOT NULL ,
  `registration_date` DATETIME NOT NULL ,
  `status` VARCHAR(128) NULL ,
  `order_id` INT NOT NULL ,
  `last_change` VARCHAR(128) NULL ,
  `description` TINYBLOB NOT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_complaint_order`
    FOREIGN KEY (`order_id` )
    REFERENCES `#__order` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- -----------------------------------------------------
-- Table `#__service`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__service` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NOT NULL ,
  `category` VARCHAR(45) NULL ,
  `price` VARCHAR(45) NULL ,
  `description` VARCHAR(45) NULL ,
  `active` TINYINT(1)  NOT NULL ,
  PRIMARY KEY (`id`) 
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- -----------------------------------------------------
-- Table `#__promotion`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__promotion` (
  `id` INT NOT NULL ,
  `from` DATETIME NOT NULL ,
  `to` DATETIME NULL ,
  `service_id` INT NOT NULL ,
  `off` TINYINT NOT NULL ,
  `description` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `fk_promotion_service`
    FOREIGN KEY (`service_id` )
    REFERENCES `#__service` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



-- -----------------------------------------------------
-- Table `#__workshop_service`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__workshop_service` (
  `workshop_id` INT NOT NULL ,
  `service_id` INT NOT NULL ,
  CONSTRAINT `fk_workshop_service_workshop`
    FOREIGN KEY (`workshop_id` )
    REFERENCES `#__workshop` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workshop_service_service`
    FOREIGN KEY (`service_id` )
    REFERENCES `#__service` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- -----------------------------------------------------
-- Table `#__service_order`
-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `#__service_order` (
  `order_id` INT NOT NULL ,
  `service_id` INT NOT NULL ,
  CONSTRAINT `fk_service_order_order1`
    FOREIGN KEY (`order_id` )
    REFERENCES `#__order` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_service_order_service1`
    FOREIGN KEY (`service_id` )
    REFERENCES `#__service` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


-- -----------------------------------------------------
-- Table `#__contact`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `#__contact` (
  `id` INT NOT NULL ,
  `registration_date` DATETIME NOT NULL ,
  `client_name` VARCHAR(128) NOT NULL ,
  `client_email` VARCHAR(128) NULL ,
  `client_phone` VARCHAR(128) NOT NULL ,
  `describe` TINYBLOB NULL ,
  `status` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) 
)ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
