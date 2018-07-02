SELECT 
    `school_eng`.`school-eng`,
    `school_eng`.`name`,
    `school_type`.`name`,
    `school_eng`.`minimum-age`,
    `school_eng`.`maximum-age`,
    `school_eng`.`school-capacity`,
    `school_eng`.`headteacher`,
    `school_eng`.`start-date`,
    `school_eng`.`end-date`
FROM
    Registers.`school_eng`
        JOIN
    Registers.`school_type` ON school_eng.`school-type` = school_type.`school-type`
WHERE
    `school_eng`.`name` LIKE '%%'