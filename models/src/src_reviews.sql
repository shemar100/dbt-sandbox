with raw_listings as (
    select * from sandbox.sanderson_dbt_airbnb_raw.raw_reviews
)

select 
    listing_id,
    reviewer_name,
    date as review_date,
    comments as review_text,
    sentiment as review_sentiment
from raw_listings
