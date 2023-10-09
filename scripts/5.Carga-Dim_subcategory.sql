## Carga de datos de la dimensión subcategory
## -------------------------------------

## dim_subcategory

INSERT INTO adw_TD_datawh.dim_subcategory (
subcategory_id,
 subcategory_name  
)
SELECT 
ProductSubCategoryID,
Name as Nombre
FROM adw.Production_ProductSubcategory
;