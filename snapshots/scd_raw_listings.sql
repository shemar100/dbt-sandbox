{% {% snapshot scd_raw_listings %}

{{
   config(
       target_database='sandbox',
       target_schema='sanderson_dbt_airbnb',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True
   )
}}

select * from {{ source('sandbox', 'listings') }}

{% endsnapshot %}%}