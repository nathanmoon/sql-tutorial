CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    location_id INTEGER NOT NULL REFERENCES location(id),
    item_id INTEGER NOT NULL REFERENCES item(id),
    price NUMERIC(6,2) NOT NULL,
    quantity INTEGER NOT NULL
);

/*
Defines how many items are available at a location
as well as what the current price is at that location
*/
