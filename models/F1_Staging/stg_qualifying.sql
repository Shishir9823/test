with
    qualifying as (select * from {{ source('formula1', 'qualifying') }}),

    renamed as (
        select
            qualifying_id as qualifying_id,
            race_id as race_id,
            driver_id as driver_id,
            constructor_id as constructor_id,
            number as driver_number,
            "POSITION" as qualifying_position,
            q1 as q1_time,
            q2 as q2_time,
            q3 as q3_time
        from qualifying
    )

select *
from renamed