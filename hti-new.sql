CREATE TABLE `vendor` (
	`vendor_id` INT NOT NULL AUTO_INCREMENT,
	`vendor_name` varchar(255) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`vendor_id`)
);

CREATE TABLE `truk_log` (
	`truk_log_id` INT NOT NULL AUTO_INCREMENT,
	`truk_number` varchar(255) NOT NULL,
	`supir_name` varchar(255) NOT NULL,
	`pinjaman_uang_jalan` FLOAT NOT NULL,
	`tanggal_pinjaman_uang_jalan` DATETIME NOT NULL,
	`tanggal_masuk` TIMESTAMP NOT NULL,
	`tanggal_keluar` DATETIME NOT NULL,
	`location` varchar(255) NOT NULL,
	`information` varchar(255),
	`special_case` BOOLEAN NOT NULL DEFAULT '0',
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`truk_log_id`)
);

CREATE TABLE `truk_bongkar` (
	`bongkar_truk_id` INT NOT NULL AUTO_INCREMENT,
	`truk_log_id` INT,
	`bongkar_date` DATETIME(255) NOT NULL,
	`bongkar_nota` varchar(255),
	`bongkar_note_filename` varchar(255),
	`bongkar_tonase` FLOAT NOT NULL,
	`bongkar_harga_tonase` FLOAT,
	`bongkar_hasil_perluasan` FLOAT NOT NULL,
	`bongkar_tebangan_name` varchar(255) NOT NULL,
	`bongkar_status` varchar(255) NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`bongkar_truk_id`)
);

CREATE TABLE `truk` (
	`truk_id` INT NOT NULL AUTO_INCREMENT,
	`truk_number` varchar(255) NOT NULL,
	`vendor_id` INT NOT NULL,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`truk_id`)
);

CREATE TABLE `tebangan` (
	`tebangan_id` INT NOT NULL AUTO_INCREMENT,
	`tebangan_number` varchar(255) NOT NULL,
	`updated_at` TIMESTAMP,
	`created_at` TIMESTAMP NOT NULL,
	`vendor_id` INT NOT NULL,
	PRIMARY KEY (`tebangan_id`)
);

CREATE TABLE `operasional` (
	`operasional_id` INT NOT NULL AUTO_INCREMENT,
	`truk_id` INT,
	`tebangan_id` INT,
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`operasional_id`)
);

CREATE TABLE `tebangan_bongkar` (
	`tebangan_log_id` INT NOT NULL AUTO_INCREMENT,
	`tebangan_id` INT(255) NOT NULL,
	`bongkar_date` DATETIME,
	`bongkar_tonase` FLOAT,
	`bongkar_nota_filename` varchar(255),
	`bongkar_harga_tonase` FLOAT,
	`pinjaman_uang_jalan` FLOAT NOT NULL,
	`bongkar_hasil_perluasan` FLOAT,
	`bongkar_tebangan_name` varchar(255),
	`information` varchar(255),
	`special_case` BOOLEAN NOT NULL DEFAULT '0',
	`created_at` TIMESTAMP NOT NULL,
	`updated_at` TIMESTAMP,
	PRIMARY KEY (`tebangan_log_id`)
);

ALTER TABLE `truk_log` ADD CONSTRAINT `truk_log_fk0` FOREIGN KEY (`supir_name`) REFERENCES `Courses`(`id`);

ALTER TABLE `truk_bongkar` ADD CONSTRAINT `truk_bongkar_fk0` FOREIGN KEY (`truk_log_id`) REFERENCES `truk_log`(`truk_log_id`);

ALTER TABLE `truk` ADD CONSTRAINT `truk_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendor`(`vendor_id`);

ALTER TABLE `tebangan` ADD CONSTRAINT `tebangan_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendor`(`vendor_id`);

ALTER TABLE `operasional` ADD CONSTRAINT `operasional_fk0` FOREIGN KEY (`truk_id`) REFERENCES `truk`(`truk_id`);

ALTER TABLE `operasional` ADD CONSTRAINT `operasional_fk1` FOREIGN KEY (`tebangan_id`) REFERENCES `tebangan`(`tebangan_id`);

ALTER TABLE `tebangan_bongkar` ADD CONSTRAINT `tebangan_bongkar_fk0` FOREIGN KEY (`tebangan_id`) REFERENCES `tebangan`(`tebangan_id`);

