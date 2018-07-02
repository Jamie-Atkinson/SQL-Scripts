SELECT 
    JISC.`government-domain` AS 'government-domain',
    JISC.hostname AS 'hostname',
    government_domain.`hostname` AS 'old-register',
    government_domain.`organisation` AS 'organisation-register',
    JISC.owner AS 'Organisation-JISC',
    JISC.`start-date`,
    JISC.`end-date`
FROM
    import.JISC
        LEFT OUTER JOIN
    Registers.government_domain ON government_domain.`government-domain` = JISC.`government-domain` 
UNION SELECT 
    JISC.`government-domain` AS 'government-domain',
    JISC.hostname AS 'hostname',
    government_domain.`hostname` AS 'old-register',
    government_domain.`organisation`,
    JISC.owner AS 'organisation',
    JISC.`start-date`,
    JISC.`end-date`
FROM
    import.JISC
        RIGHT OUTER JOIN
    Registers.government_domain ON government_domain.`government-domain` = JISC.`government-domain`
