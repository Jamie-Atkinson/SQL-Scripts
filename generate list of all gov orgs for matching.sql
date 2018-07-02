SELECT 
    CONCAT('government-service:',
            government_service.`government-service`) AS 'key',
    government_service.`hostname` AS 'name'
FROM
    Registers.government_service 
UNION SELECT 
    CONCAT('government-organisation:',
            government_organisation.`government-organisation`) AS 'key',
    government_organisation.`name` AS 'name'
FROM
    Registers.government_organisation
    
UNION SELECT 
    CONCAT('local-authority-eng:',
            local_authority_eng.`local-authority-eng`) AS 'key',
    local_authority_eng.`name` AS 'name'
FROM
    Registers.local_authority_eng
    
UNION SELECT 
    CONCAT('local-authority-sct:',
            local_authority_sct.`local-authority-sct`) AS 'key',
    local_authority_sct.`name` AS 'name'
FROM
    Registers.local_authority_sct

UNION SELECT 
    CONCAT('local-authority-nir:',
            local_authority_nir.`local-authority-nir`) AS 'key',
    local_authority_nir.`name` AS 'name'
FROM
    Registers.local_authority_nir
    
UNION SELECT 
    CONCAT('principal-local-authority:',
            principal_local_authority.`principal-local-authority`) AS 'key',
    principal_local_authority.`name` AS 'name'
FROM
    Registers.principal_local_authority

UNION SELECT 
    CONCAT('internal-drainage-board:',
            internal_drainage_board.`internal-drainage-board`) AS 'key',
    internal_drainage_board.`name` AS 'name'
FROM
    Registers.internal_drainage_board


/*
UNION SELECT 
    CONCAT(':',
            .``) AS 'key',
    .`name` AS 'name'
FROM
    Registers.
*/