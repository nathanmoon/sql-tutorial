SELECT it.name, inv.price, inv.quantity, l.name as location
FROM inventory inv
JOIN item it ON inv.item_id = it.id
JOIN location l ON inv.location_id = l.id
;


