/*
Take a look at the raw table to see why the previous query was wrong:
*/
SELECT *
FROM inventory inv
JOIN item it ON inv.item_id = it.id
JOIN review r ON r.item_id = it.id
;
/*
We have more rows in our table because there are multiple reviews per item, so we get
multiple rows with the same inventory info.  Those duplicates are getting aggregated
into the count, making it incorrect (too big).

Also note that the average rating value is going to be incorrect too, because of the
duplicate values from the review table.  We can make it better by fixing the joins so
that the reviews and inventory both join with the location table as well
*/
SELECT *
FROM inventory inv
JOIN location l ON inv.location_id = l.id
JOIN item it ON inv.item_id = it.id
JOIN review r ON r.item_id = it.id
WHERE r.location_id = l.id
;
/*
But even this is incorrect, because this way of joining will cause us to miss reviews for 
items that aren't currently stocked at a location.  But if we are willing to ignore this, we
can use DISTINCT on our COUNT to at least get the correct value for stores_carrying_item:
*/
SELECT it.name, COUNT(DISTINCT inv) AS stores_carrying_item, AVG(inv.price) AS avg_price, AVG(r.rating) AS average_rating
FROM inventory inv
JOIN location l ON l.id = inv.location_id
JOIN item it ON inv.item_id = it.id
JOIN review r ON r.item_id = it.id
WHERE r.location_id = l.id
GROUP BY it.name
;
/*
I am not aware of a way to get exactly what we were originally looking for in one query
using just joins and aggregates.  Two queries would be better, or you could probably use 
subqueries if you needed them to come back in a single query.
*/
