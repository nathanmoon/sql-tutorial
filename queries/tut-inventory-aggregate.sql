/*
With JOINs in our toolkit, AGGREGATES become super useful.  Aggregates allow us to
calculate results from multiple rows of data.
*/
SELECT it.name, COUNT(inv.id) AS stores_carrying_item, AVG(inv.price) AS avg_price, MAX(inv.price) AS max_price, AVG(inv.quantity) AS avg_quantity, MIN(inv.quantity) AS min_quantity
FROM inventory inv
JOIN item it ON inv.item_id = it.id
GROUP BY it.name
;

/*
We want to find out some statistics for different items, across all locations. We add
some aggregate functions to the SELECT clause, and then the GROUP BY clause tells the
database how to aggregate the data.  Here we are grouping by the item name, which means
that for each distinct item name, it will group all the inventory data together, and
calculate the averages, counts, maxs/mins, etc.
*/


