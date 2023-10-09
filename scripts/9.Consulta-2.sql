use adw_TD_datawh;

with datos as (
    select 
        fact.linetotal,
        fact.count_Ventas,
        dim_Store.*,
        dim_time.*,
        dim_product.*
    from fact_ventas as fact
        left join dim_Store using (location_key)
        left join dim_time using (date_key)
        left join dim_product using (product_key)
)
select 
    location_name location,
    year_month_number mes,
    sum(count_Ventas) cantidad
from datos
group by 
    location,
    mes
limit 5
;