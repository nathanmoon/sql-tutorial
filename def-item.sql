CREATE TABLE item (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(200) NULL,
    msrp NUMERIC(6,2) NOT NULL,
    available_since TIMESTAMPTZ NOT NULL DEFAULT now()
);

/*
Defines items
*/
