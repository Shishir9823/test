WITH constructor_results AS (
    SELECT * FROM {{ ref('Stage_Constructor_Results') }}
)

SELECT 
    constructor_results_id,
    race_id,
    constructor_id,
    constructor_points,
    status
FROM constructor_results