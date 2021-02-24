#These are glassdoor questions for what you can expect in Amazon BI interview:

select Product_ID, l*b*h as Volume
from Dimensions;

select *
from Warehouse;


select Warehouse_ID, Sum(Units)
from Warehouse
Group By Warehouse_ID;

select Warehouse_ID, Max(Units)
from Warehouse
Group By Warehouse_ID;

select Warehouse.ProductID
from Warehouse left join Dimensions
on Warehouse.ProductID = Dimensions.Product_ID;
numbersnumbers








