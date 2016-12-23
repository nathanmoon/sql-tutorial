/*
We only need to be concerned about reviews with low ratings, so we filter down to
low ratings only.
*/
SELECT item.id, item.name AS item_name, item.description, item.msrp, rev.text, rev.rating, loc.name
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
WHERE rev.rating < 5
;


