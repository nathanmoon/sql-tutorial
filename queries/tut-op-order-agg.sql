/*
We need to know how many different locations have given a low review. Here we are 
counting the number of distinct locations that have low reviews for an item.  We
are also returning the average of the low reviews.  We have to do some kind of 
aggregate operation on the ratings, or else drop it from the query.  Make sure you
understand why... (try leaving off the AVG part)
*/
SELECT item.id, item.name AS item_name, item.description, item.msrp, AVG(rev.rating), COUNT(DISTINCT loc.id)
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
WHERE rev.rating < 5
GROUP BY item.id
;

