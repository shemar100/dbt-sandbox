with raw_listings as (
    select * from {{ source('sandbox', 'reviews') }}
)

select 
    listing_id,
    reviewer_name,
    date as review_date,
    comments as review_text,
    sentiment as review_sentiment
from raw_listings
