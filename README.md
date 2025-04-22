# GIT configuration

git init --initial-branch=main

git remote add github git@github.com:LazloDEV/docker-postgres.git

git remote add gitlab git@gitlab.com:LazloDEV/docker-postgres.git

git remote add bitbucket git@bitbucket.org:lazlo_dev/docker-postgres.git

git pushall 



# Docker

docker build -t dbms-postgres .

docker run -d --rm -p 5432:5432 --name my-postgres-1 --network my-bridge-net -e POSTGRES_PASSWORD=mypass dbms-postgres

docker run -d --rm -p 5432:5432 --name my-postgres-2 --network my-bridge-net -e POSTGRES_PASSWORD=mypass postgres:17.4

docker run -d --rm -p 5432:5432 --name my-postgres-3 --network my-bridge-net -e POSTGRES_PASSWORD=mypass -e POSTGRES_DB=login_db -v C:/DBMS/Docker-Postgres/volumes/initdb/init.sql:/docker-entrypoint-initdb.d/init.sql postgres:17.4



# DBMS

## PostgreSQL SQL Command Types with Examples

| Type   | Name                         | Description                          | Example |
|--------|------------------------------|--------------------------------------|---------|
| **DDL** | Data Definition Language     | Defines the structure of the database | `CREATE TABLE employees (id SERIAL PRIMARY KEY, name VARCHAR(100));`<br>`ALTER TABLE employees ADD email VARCHAR(100);`<br>`DROP TABLE employees;` |
| **DML** | Data Manipulation Language   | Deals with data inside tables         | `INSERT INTO employees (name, email) VALUES ('Alice', 'alice@example.com');`<br>`UPDATE employees SET name = 'Bob' WHERE id = 1;`<br>`DELETE FROM employees WHERE id = 1;` |
| **DCL** | Data Control Language        | Controls access to data               | `GRANT SELECT ON employees TO analyst;`<br>`REVOKE INSERT ON employees FROM intern;` |
| **TCL** | Transaction Control Language | Manages transactions                  | `BEGIN;`<br>`UPDATE employees SET name = 'Charlie' WHERE id = 2;`<br>`COMMIT;`<br>`ROLLBACK;` |
| **DQL** | Data Query Language          | Queries data                          | `SELECT * FROM employees;` |
