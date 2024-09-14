/* Question -2 Write a SQL query to retrieve the IDs of the Facebook pages that have zero likes. The output should be sorted in 
               ascending order based on the page IDs.
   We have two tables: pages and page_likes.
    - pages Table columns: page_id, page_name
    - page_likes Table columns: user_id, page_id, liked_date */

select p.page_id
from pages p 
left join page_likes pl on p.page_id = pl.page_id
where liked_date is null
order by p.page_id asc;

select p.page_id
from pages p 
left join page_likes pl on p.page_id = pl.page_id
group by p.page_id
having count(pl.page_id) = 0
order by p.page_id asc;
