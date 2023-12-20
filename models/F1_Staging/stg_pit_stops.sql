with

    pit_stops as (select * from {{ source('formula1', 'pit_stops') }}),

    renamed as (
        select
            race_id as race_id,
            driver_id as driver_id,
            stop as stop_number,
            lap,
            "TIME" as pit_stop_time,
            duration as pit_stop_duration_seconds,
            milliseconds as pit_stop_milliseconds
        from pit_stops
    )

select * from renamed