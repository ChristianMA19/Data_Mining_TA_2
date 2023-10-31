SELECT * 
FROM {{ ref('Vino_OLIMPICA') }}
UNION ALL
SELECT *
FROM {{ ref('Vino_EXITO') }}