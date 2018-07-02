SELECT 
    local_authority_eng.register,
    local_authority_eng.`phase`,
    local_authority_eng.`index-entry-number`,
    local_authority_eng.`entry-number`,
    local_authority_eng.`entry-timestamp`,
    local_authority_eng.`key`,
    local_authority_eng.`local-authority-eng`,
    local_authority_type.`name` AS 'local-authority-type',
    local_authority_eng.`name`,
    local_authority_eng.`official-name`,
    local_authority_eng.`start-date`,
    local_authority_eng.`end-date`
FROM
    Registers.local_authority_eng
        JOIN
    Registers.local_authority_type ON local_authority_eng.`local-authority-type` = local_authority_type.`local-authority-type`