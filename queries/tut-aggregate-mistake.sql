/*
Without picturing the raw table, sometimes it's easy to make mistakes when aggregating.

Here we are trying to add in an average rating along with the other aggregates on the 
inventory table:
*/
SELECT it.name, COUNT(inv) AS stores_carrying_item, AVG(inv.price) AS avg_price, AVG(r.rating) AS average_rating
FROM inventory inv
JOIN item it ON inv.item_id = it.id
JOIN review r ON r.item_id = it.id
GROUP BY it.name
;

/*
The stores_carrying_item value is now very wrong. This is because the join to review 
changed the raw table.
*/



