### PostgreSQL DDL statements.
#### Creating test music database v.2 using PostgreSQL.

The DB schema is following:
![SQL_SCHEMA_IMG](db_schemas/mus_db.png)


SQL script for tables creation is located under
```
./sql_scripts/ddl_query_execution.sql
```

Creating Tables inside the database using python:

* Install package for Postgres connector
```
$ pip install psycopg2
```

* Setup your connection details for database inside **main.py**

* Run main.py
```
$ python3 main.py
```

* Choose the option:
----
1. Create tables inside the database.
2. Drop tables inside the database.
----