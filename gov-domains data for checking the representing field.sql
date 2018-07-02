SELECT 
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    JISC.`Representing` AS 'representing',
    '' AS `representing-link`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.government_domain
        JOIN
    Registers.JISC ON JISC.`Domain Id` = government_domain.`government-domain`
WHERE
    JISC.`Representing` NOT IN (JISC.`Owner`)
        AND JISC.`Representing` NOT LIKE '%parish%'
        AND JISC.`Representing` NOT LIKE '%community%'
        AND JISC.`Representing` NOT LIKE '%town council%' 
UNION SELECT 
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    '' AS 'representing',
    government_domain.`organisation` AS `representing-link`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.government_domain
        JOIN
    Registers.JISC ON JISC.`Domain Id` = government_domain.`government-domain`
WHERE
    JISC.`Representing` IN (JISC.`Owner`)
        AND JISC.`Representing` NOT LIKE '%parish%'
        AND JISC.`Representing` NOT LIKE '%community%'
        AND JISC.`Representing` NOT LIKE '%town council%'
        AND government_domain.`organisation` IS NOT NULL 
UNION SELECT 
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    JISC.`Owner` AS 'representing',
    '' AS `representing-link`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.government_domain
        JOIN
    Registers.JISC ON JISC.`Domain Id` = government_domain.`government-domain`
WHERE
    JISC.`Representing` LIKE '%parish%'
        OR JISC.`Representing` LIKE '%community%'
        OR JISC.`Representing` LIKE '%town council%'
        AND government_domain.`organisation` IS NOT NULL 
UNION SELECT 
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    '' AS 'representing',
    government_domain.`organisation` AS `representing-link`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.government_domain
        JOIN
    Registers.JISC ON JISC.`Domain Id` = government_domain.`government-domain`
WHERE
    JISC.`Representing` IN (JISC.`Owner`)
        AND JISC.`Representing` NOT LIKE '%parish%'
        AND JISC.`Representing` NOT LIKE '%community%'
        AND JISC.`Representing` NOT LIKE '%town council%'
        AND government_domain.`organisation` IS NULL 
UNION SELECT 
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    JISC.`Owner` AS 'representing',
    '' AS `representing-link`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.government_domain
        JOIN
    Registers.JISC ON JISC.`Domain Id` = government_domain.`government-domain`
WHERE
    JISC.`Representing` LIKE '%parish%'
        OR JISC.`Representing` LIKE '%community%'
        OR JISC.`Representing` LIKE '%town council%'
        AND government_domain.`organisation` IS NULL