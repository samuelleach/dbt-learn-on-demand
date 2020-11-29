{{ config (
    materialized="table"
)}}

with dates as (

    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="parse_date('%F', '2020-01-01')",
        end_date="parse_date('%F', '2021-01-01')"
    )
    }}
)

select cast(date_day as DATE) as date_day from dates