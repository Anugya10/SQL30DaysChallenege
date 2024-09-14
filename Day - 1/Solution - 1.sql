/* Write an SQL query to find out the name of the product with the highest price in each country. return product_name, price and country*/
with CTE as (
select 
      product_name, 
      price, 
      country,
      row_number() over(partition by country order by price desc) as RN
from suppliers s
inner join products p on s.supplier_id = p.supplier_id)
select 
	  product_name, 
      price, 
      country
from CTE
where RN = 1;
