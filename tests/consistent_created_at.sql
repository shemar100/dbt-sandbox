select
    * 
from
    {{ ref("dim_listings_cleansed") }} dlc
left join 
    {{ ref("fct_reviews") }} fr
on 
    dlc.listing_id = fr.listing_id
where dlc.created_at >= fr.review_date
limit 10