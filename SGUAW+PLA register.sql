SELECT DISTINCT
	SGUAW.`statistical-geography-unitary-authority-wls`,
    PLA.name,
    PLA.`official-name`,
    SGUAW.`start-date`,
    SGUAW.`end-date`
FROM
    Registers.statistical_geography_unitary_authority_wls SGUAW
        JOIN
    Registers.principal_local_authority PLA ON PLA.key = SGUAW.`principal-local-authority`
