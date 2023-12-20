with
    constructor_results as (
        select * from {{ source('formula1', 'constructor_results') }}
    ),
    renamed as (
        select
            CONSTRUCTOR_RESULTS_ID as constructor_results_id,
            RACE_ID as race_id,
            CONSTRUCTOR_ID as constructor_id,
            POINTS as constructor_points,
            status as status
        from constructor_results
    )
select *
from renamed