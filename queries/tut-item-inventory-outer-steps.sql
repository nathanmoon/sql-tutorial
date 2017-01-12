/*
First, let's see what happens with a simple OUTER JOIN, from location to inventory
*/
SELECT l.name, inv.item_id, inv.quantity, inv.price
FROM location l
LEFT OUTER JOIN inventory inv ON inv.location_id = l.id
;
/*
Note that all the locations are represented, as well as all the inventory rows that
exist. The only difference between INNER and OUTER here is that the Star City Glades
row would not show up with an inner join.

So what if we try to see how many Lassos of Truth are at each store, but adding a
WHERE clause?
*/
SELECT l.name, inv.quantity, inv.price
FROM location l
LEFT OUTER JOIN inventory inv ON inv.location_id = l.id
WHERE inv.item_id = 2
;
/*
This didn't work because now we aren't getting rows for Central City and Star City
anymore.  The WHERE clause is applied to the joined table, meaning that the join happens
first, and then the filtering.  We want to filter as we join, as we will see next.
*/
