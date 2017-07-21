# flask_mysql_dockerized
A minimal example of a dockerized Flask App which uses MySQL.


# Compose web service

sudo docker-compose up --build

The `--build` makes sure that the image is re-built when you change something
in the compose script.

# TODO

* Initialize Database
* Fix error:

```
web_1  |   File "/usr/local/lib/python2.7/dist-packages/mysql/connector/connection.py", line 395, in _handle_result
web_1  |     raise errors.get_exception(packet)
web_1  | sqlalchemy.exc.ProgrammingError: (mysql.connector.errors.ProgrammingError) 1146 (42S02): Table 'performance_schema.session_variables' doesn't exist [SQL: "SHOW VARIABLES LIKE 'sql_mode'"]
db_1   | 2017-07-21T22:22:17.002582Z 3 [Note] Aborted connection 3 to db: 'flask_db' user: 'root' host: '172.18.0.3' (Got an error reading communication packets)
```