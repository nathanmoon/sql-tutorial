/*

Sometimes it's easy to get tripped up with count(*) queries and outer joins.  count(*)
does not care if there is a value, just if there is a row.  So, for example, you may
try to count how many reviews each location has like this

*/
SELECT l.name AS location_name, count(*) AS review_count
FROM location l
LEFT OUTER JOIN review r on l.id = r.location_id
GROUP BY l.name
;
/*

Gotham City does not actually have any reviews, but it gets counted as 1 because
the row exists.

If you count the rating table by name, then it will only count the row if the 
review actually exists.

*/
SELECT l.name AS location_name, count(r) AS review_count
FROM location l
LEFT OUTER JOIN review r on l.id = r.location_id
GROUP BY l.name
;
