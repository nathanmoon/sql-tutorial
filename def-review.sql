CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    item_id  INTEGER NOT NULL REFERENCES item(id),
    location_id INTEGER NOT NULL REFERENCES location(id),
    text TEXT NULL,
    rating INTEGER NOT NULL
);

/*
Reviews are a rating (0-10) and an optional comment
*/

