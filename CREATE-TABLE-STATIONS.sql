CREATE TABLE `subway_stations` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `subway_line_id` BIGINT(20) UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `stations_subway_line_fk`
  FOREIGN KEY (`subway_line_id`) REFERENCES `subway_lines` (`id`)
)
DEFAULT CHARSET=utf8mb4;