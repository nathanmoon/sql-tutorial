/*
The where clause will filter out rows from the raw table, but does not have access to
aggregate values. If you need to filter the grouped table, you can add conditions to the
HAVING clause.

First, here are locations, with their average review rating, across all items
*/

SELECT l.name AS location_name, avg(r.rating) AS avg_review
FROM location l
LEFT OUTER JOIN review r on l.id = r.location_id
GROUP BY l.name
;

/*
Now, if we want to see the locations that have garnered average reviews over 6
*/
SELECT l.name AS location_name, avg(r.rating) AS avg_reviews
FROM location l
LEFT OUTER JOIN review r on l.id = r.location_id
GROUP BY l.name
HAVING avg(r.rating) > 6
;
