/*
First we build a view that contains all the data we need.  Here we are just worried
about getting the joins right.
*/
SELECT *
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
;
/*
We should be able to inspect this above view and determine that it has all the data
we need.  Then we can filter which columns to return, to make the results more
readable.
*/
SELECT item.id, item.name AS item_name, item.description, item.msrp, rev.text, rev.rating, loc.name
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
;
