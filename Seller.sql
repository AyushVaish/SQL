select distinct seller_name

from Seller 

where seller_id not in 
(
select seller_id
from Customer join Orders o using(customer_id) 
where sale_date like "2020%"

group by seller_id
)

order by seller_name