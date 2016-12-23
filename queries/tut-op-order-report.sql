/*
There are many tricks you can use to get reporting data using aggreates.  Here we
want to return lots more data about low ratings on items.  Take a look at each new
column to make sure you understand why it works like it does.

For this case, we removed the WHERE clause that was limiting the rows to only low
ratings, because we want to report not just on the low ratings, but some overall
stats as well.
*/
SELECT item.id, item.name AS item_name, item.description, item.msrp, 
AVG(CASE WHEN rev.rating < 5 THEN rev.rating ELSE NULL END) AS avg_low_rating, 
AVG(rev.rating) AS avg_total_rating, 
SUM(CASE WHEN rev.rating < 5 THEN 1 ELSE 0 END) AS num_low_ratings, 
COUNT(rev) AS num_total_ratings,
COUNT(DISTINCT CASE WHEN rev.rating < 5 THEN loc.id ELSE NULL END) AS num_low_rating_locations
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
GROUP BY item.id
ORDER BY AVG(rev.rating) DESC
;

