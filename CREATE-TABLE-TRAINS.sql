CREATE TABLE `subway_trains` (
  `serial_number` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `subway_line_id` BIGINT(20) UNSIGNED NOT NULL,
  `type` TINYINT(4) NOT NULL,
  `year` INT(4) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `trains_line_id_fk`
  FOREIGN KEY (`subway_line_id`) REFERENCES `subway_lines` (`id`)
)
DEFAULT CHARSET=utf8mb4;