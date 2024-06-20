with raw_hosts as (
    select * from sandbox.sanderson_dbt_airbnb_raw.raw_hosts
)

select 
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
from raw_hosts