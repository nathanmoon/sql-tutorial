/*
Again, we want to see how many Lassos of Truth are at each location.

As a reminder, here are the location and inventory tables.
*/
SELECT * from location;
SELECT * from inventory;
/*
And here we use a LEFT OUTER JOIN to see how many Lassos of Truth are at
each location.
*/
SELECT l.name, inv.quantity, inv.price
FROM location l
LEFT OUTER JOIN inventory inv ON inv.location_id = l.id AND inv.item_id = 2
/*
What is going on here will be explained in the next step.
*/

