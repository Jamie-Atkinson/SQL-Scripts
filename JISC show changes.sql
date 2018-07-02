 SELECT 
    'new entry' AS type,
    JISC.`Government-domain`,
    JISC.`hostname`,
    JISC.`organisation`,
    JISC.`start-date`,
    JISC.`end-date`
FROM
    import.JISC
WHERE
    JISC.`Government-domain` NOT IN (SELECT 
            government_domain.`government-domain`
        FROM
            Registers.`government_domain`) 
UNION SELECT 
    'removed entry' AS type,
    government_domain.`government-domain`,
    government_domain.`hostname`,
    government_domain.`organisation`,
    government_domain.`start-date`,
    government_domain.`end-date`
FROM
    Registers.`government_domain`
WHERE
    government_domain.`Government-domain` NOT IN (SELECT 
            JISC.`Government-domain`
        FROM
            import.JISC) 
UNION SELECT 
    'updated entry' AS type,
    JISC.`Government-domain`,
    JISC.`hostname`,
    JISC.`organisation`,
    JISC.`start-date`,
    JISC.`end-date`
FROM
    import.JISC
        JOIN
    Registers.government_domain ON JISC.`Government-domain` = government_domain.`government-domain`
WHERE
    JISC.`hostname` <> government_domain.`hostname`
        OR JISC.`start-date` <> government_domain.`start-date`
        OR JISC.`end-date` <> government_domain.`end-date`