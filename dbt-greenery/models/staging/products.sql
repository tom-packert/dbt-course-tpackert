with source as (

    select * from {{ source('greenery', 'products') }}

),

renamed as (

    select
        product_id,
        name,
        price,
        quantity

    from source

)

select * from renamed

