LOAD DATA LOCAL INFILE 'F:\\CUHKSZ\\CSC3170\\Project\\Data\\city_bed_needed.csv' 
INTO TABLE city_bed_needed CHARACTER SET 'utf8' 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE 'F:\\CUHKSZ\\CSC3170\\Project\\Data\\city_available_analysis.csv' 
INTO TABLE city_available_analysis CHARACTER SET 'utf8' 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'E:\\save_folder\\sc\\xxx.csv' 
INTO TABLE table_name CHARACTER SET 'utf8' 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


set global local_infile=1;
