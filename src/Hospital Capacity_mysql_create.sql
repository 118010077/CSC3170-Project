CREATE TABLE `State_Abbr` (
	`State` VARCHAR(32) NOT NULL,
	`Postal(HRR)` VARCHAR(32) NOT NULL,
	PRIMARY KEY (`State`)
);

CREATE TABLE `State_CityList` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	PRIMARY KEY (`State`,`City`)
);

CREATE TABLE `State_ICU_Beds` (
	`State` VARCHAR(32) NOT NULL,
	`Total ICU Beds` DECIMAL(8) NOT NULL,
	`Available ICU Beds` DECIMAL(8) NOT NULL,
	`Potentially Available ICU Beds` DECIMAL(8) NOT NULL,
	`ICU Beds Occupancy Rate` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`)
);

CREATE TABLE `State_Total_Beds` (
	`State` VARCHAR(32) NOT NULL,
	`Total Hospital Beds` DECIMAL(8) NOT NULL,
	`Available Hospital Beds` DECIMAL(8) NOT NULL,
	`Potentially Available Hospital Beds` DECIMAL(8) NOT NULL,
	`Hospital Bed Occupancy Rate` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`)
);

CREATE TABLE `State_Projection_Data` (
	`State` VARCHAR(32) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Projected_Infected` DECIMAL(8) NOT NULL,
	`Projected_Hospitalized` DECIMAL(8) NOT NULL,
	`Projected_ICUed` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`,`Percentage`)
);

CREATE TABLE `State_Available_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Available Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Available ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`Month`,`Percentage`)
);

CREATE TABLE `State_Bed_Needed` (
	`State` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Hospital Bed Needed` DECIMAL(8) NOT NULL,
	`ICU Bed Needed` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`,`Month`,`Percentage`)
);

CREATE TABLE `State_Total_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Total Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Total ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`Month`,`Percentage`)
);

CREATE TABLE `State_Potential_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Potentially_Available Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Potentially_Available ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`Month`,`Percentage`)
);

CREATE TABLE `State_Population` (
	`State` VARCHAR(32) NOT NULL,
	`Adult_Population` DECIMAL(8) NOT NULL,
	`Population65+` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`)
);

CREATE TABLE `City_Population` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Adult_Population` DECIMAL(8) NOT NULL,
	`Population65+` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`,`City`)
);

CREATE TABLE `City_Projection_Data` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Projected_Infected` DECIMAL(8) NOT NULL,
	`Projected_Hospitalized` DECIMAL(8) NOT NULL,
	`Projected_ICUed` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`,`City`,`Percentage`)
);

CREATE TABLE `City_ICU_Beds` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Total ICU Beds` DECIMAL(8) NOT NULL,
	`Available ICU Beds` DECIMAL(8) NOT NULL,
	`Potentially Available ICU Beds` DECIMAL(8) NOT NULL,
	`ICU Occupancy Rate` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`City`)
);

CREATE TABLE `City_Total_Beds` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Total Hospital Beds` DECIMAL(8) NOT NULL,
	`Available Hospital Beds` DECIMAL(8) NOT NULL,
	`Potentially Available Hospital Beds` DECIMAL(8) NOT NULL,
	`Hospital Occupancy Rate` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`City`)
);

CREATE TABLE `City_Bed_Needed` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Hospital Bed Needed` DECIMAL(8) NOT NULL,
	`ICU Bed Needed` DECIMAL(8) NOT NULL,
	PRIMARY KEY (`State`,`City`,`Month`,`Percentage`)
);

CREATE TABLE `City_Available_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Available Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Available ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`City`,`Month`,`Percentage`)
);

CREATE TABLE `City_Potential_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Potentially_Available Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Potentially_Available ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`City`,`Month`,`Percentage`)
);

CREATE TABLE `City_Total_Analysis` (
	`State` VARCHAR(32) NOT NULL,
	`City` VARCHAR(32) NOT NULL,
	`Month` DECIMAL(2) NOT NULL,
	`Percentage` DECIMAL(8,2) NOT NULL,
	`Percentage of Total Bed` DECIMAL(8,2) NOT NULL,
	`Percentage of Total ICU` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`State`,`City`,`Month`,`Percentage`)
);

ALTER TABLE `State_CityList` ADD CONSTRAINT `State_CityList_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_ICU_Beds` ADD CONSTRAINT `State_ICU_Beds_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Total_Beds` ADD CONSTRAINT `State_Total_Beds_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Projection_Data` ADD CONSTRAINT `State_Projection_Data_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Available_Analysis` ADD CONSTRAINT `State_Available_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Bed_Needed` ADD CONSTRAINT `State_Bed_Needed_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Total_Analysis` ADD CONSTRAINT `State_Total_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Potential_Analysis` ADD CONSTRAINT `State_Potential_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `State_Population` ADD CONSTRAINT `State_Population_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Population` ADD CONSTRAINT `City_Population_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Projection_Data` ADD CONSTRAINT `City_Projection_Data_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_ICU_Beds` ADD CONSTRAINT `City_ICU_Beds_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Total_Beds` ADD CONSTRAINT `City_Total_Beds_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Bed_Needed` ADD CONSTRAINT `City_Bed_Needed_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Available_Analysis` ADD CONSTRAINT `City_Available_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Potential_Analysis` ADD CONSTRAINT `City_Potential_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);

ALTER TABLE `City_Total_Analysis` ADD CONSTRAINT `City_Total_Analysis_fk0` FOREIGN KEY (`State`) REFERENCES `State_Abbr`(`Postal(HRR)`);



















