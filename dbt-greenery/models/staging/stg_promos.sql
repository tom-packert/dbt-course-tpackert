{{
  config(
    materialized='table'
  )
}}

with source as (

    select * from {{ source('greenery', 'promos') }}

),

renamed as (

    select
        promo_id,
        discout,
        status

    from source

)

select * from renamed