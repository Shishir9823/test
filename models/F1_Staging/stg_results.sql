with

    results as (select * from {{ source('formula1', 'results') }}),

    renamed as (
        select
            result_id as result_id,
            race_id as race_id,
            driver_id as driver_id,
            constructor_id as constructor_id,
            number as driver_number,
            grid,
            --position::int as position,
            position as driver_position,
            position_text as position_text,
            position_order as position_order,
            points,
            laps,
            "TIME" as race_time,
            milliseconds as milliseconds,
            fastest_lap as fastest_lap,
            "RANK" as driver_rank,
            fastest_lap_time as fastest_lap_time,
            fastest_lap_speed as fastest_lap_speed,
            status_id as status_id
        from results
    )

select *
from renamed