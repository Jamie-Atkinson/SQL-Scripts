TRUNCATE `charity`.`extract_acct_submit`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_acct_submit.csv' INTO TABLE `charity`.`extract_acct_submit`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_aoo_ref`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_aoo_ref.csv' INTO TABLE `charity`.`extract_aoo_ref`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_ar_submit`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_ar_submit.csv' INTO TABLE `charity`.`extract_ar_submit`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_charity`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_charity.csv' INTO TABLE `charity`.`extract_charity`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_charity_aoo`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_charity_aoo.csv' INTO TABLE `charity`.`extract_charity_aoo`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_class`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_class.csv' INTO TABLE `charity`.`extract_class`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_class_ref`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_class_ref.csv' INTO TABLE `charity`.`extract_class_ref`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_financial`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_financial.csv' INTO TABLE `charity`.`extract_financial`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_main_charity`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_main_charity.csv' INTO TABLE `charity`.`extract_main_charity`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_name`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_name.csv' INTO TABLE `charity`.`extract_name`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_objects`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_objects.csv' INTO TABLE `charity`.`extract_objects`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_partb`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_partb.csv' INTO TABLE `charity`.`extract_partb`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_registration`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_registration.csv' INTO TABLE `charity`.`extract_registration`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_remove_ref`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_remove_ref.csv' INTO TABLE `charity`.`extract_remove_ref`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;

TRUNCATE `charity`.`extract_trustee`;
LOAD DATA LOCAL INFILE '../../../home/jamie/src/openregisters/charity-data/lists/extract_trustee.csv' INTO TABLE `charity`.`extract_trustee`
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 LINES;
