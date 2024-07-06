select *
from {{ ref("dim_listings_with_hosts") }}

select *
from {{ source("sandbox", "listings") }}