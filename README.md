# sql-tutorial

Provides some test tables and data, and sample queries to demonstrate different aspects of writing SQL. 
It was written for Postgresql, because why would you try anything else? ;)  I know that SQLite is a bit simpler
to use, but it's not teaching you to use a database that's able to handle anything outside of toy projects.

## Setup
To create a user and database in Postgres, run:
```bash
./setup-ubuntu
```
or
```bash
./setup-mac
```

Postgresql must be installed.  Also, make sure local connections with passwords are supported.

e.g. on ubuntu:
```bash
sudo apt-get install postgresql postgresql-contrib
```

And if you trust me (you'll need to determine your postgres version and insert it where I have "9.3"):
```bash
echo "host    all             all             localhost               md5" | sudo tee -a /etc/postgresql/9.3/main/pg_hba.conf
sudo service postgresql reload
```

or on Mac:

install postgres with homebrew or from postgresapp.com

Run this any time you want to populate data in the database, or re-populate:
```bash
./init-tables
```

## Running queries
To run a query in the `queries` directory, use the `run` script:
```bash
./run queries/locations.sql
```

## Running the interactive tutorial
```bash
./tutorial
```

