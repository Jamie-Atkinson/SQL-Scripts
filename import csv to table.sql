LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/addressbase-data/cache/AddressBase/csv/by_type/21.csv' INTO TABLE `addressbase`.`basiclandpropertyunit`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/addressbase-data/cache/AddressBase/csv/by_type/28.csv' INTO TABLE `addressbase`.`deliverypointaddress`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/addressbase-data/cache/AddressBase/csv/by_type/24.csv' INTO TABLE `addressbase`.`landpropertyidentifier`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/addressbase-data/cache/AddressBase/csv/by_type/15.csv' INTO TABLE `addressbase`.`streetdescriptiveidentifier`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
