{{ 
    config(
        materialized='table'
    )
}}

with fct_reviews as (
    select * from {{ ref("fct_reviews") }}
),

full_moon_dates as (
    select * from {{ ref("seed_full_moon_dates") }}
)

select 
    fr.*,
    case
        when fm.full_moon_date is null then 'not full moon date'
        else 'full moon'
    end as is_full_moon
from
    fct_reviews fr
left join
    full_moon_dates fm
on
    to_date(fr.review_date) = dateadd(day, 1, full_moon_date)