# GIT configuration

git init
git config --local user.email "lazlo.developer@gmail.com"
git config --local user.name "lazlo"



# Docker

docker build -t dbms-postgres .
docker run -d --rm -p 5432:5432 --name my-postgres-1 --network my-bridge-net -e POSTGRES_PASSWORD=mypass dbms-postgres
docker run -d --rm -p 5432:5432 --name my-postgres-2 --network my-bridge-net -e POSTGRES_PASSWORD=mypass postgres:17.4
docker run -d --rm -p 5432:5432 --name my-postgres-3 --network my-bridge-net -e POSTGRES_PASSWORD=mypass -e POSTGRES_DB=login_db -v C:/DBMS/Docker-Postgres/volumes/initdb/init.sql:/docker-entrypoint-initdb.d/init.sql postgres:17.4





:/docker-entrypoint-initdb.d
:/docker-entrypoint-initdb.d/init.sql

🧱 DDL — Data Definition Language
DDL is for defining and changing the structure of your database — like creating tables, altering columns, or removing them.

Common DDL commands in PostgreSQL:

Command	Purpose	Example
CREATE	Make a new table, database, index	CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT);
ALTER	Modify an existing table	ALTER TABLE users ADD COLUMN email TEXT;
DROP	Remove tables, databases, columns	DROP TABLE users;
TRUNCATE	Delete all data in a table (fast)	TRUNCATE TABLE users;

🛠️ DML — Data Manipulation Language
DML is all about working with the data inside your tables. These commands let you insert, retrieve, update, or delete rows.

Common DML commands in PostgreSQL:

Command	Purpose	Example
INSERT	Add new rows to a table	INSERT INTO users (name) VALUES ('Alice');
SELECT	Query and retrieve data	SELECT * FROM users;
UPDATE	Modify existing data	UPDATE users SET name = 'Bob' WHERE id = 1;
DELETE	Remove rows	DELETE FROM users WHERE id = 2;
DML changes data, not structure.


🔹 1. DDL – Data Definition Language
Purpose: Define or change the structure of database objects (tables, schemas, etc.)

Examples: CREATE, ALTER, DROP, TRUNCATE

🔹 2. DML – Data Manipulation Language
Purpose: Manipulate data within the structures (insert, update, delete, read rows)

Examples: SELECT, INSERT, UPDATE, DELETE

🔹 3. DCL – Data Control Language
Purpose: Control access to the data and database.

Examples:

GRANT – give permissions

REVOKE – remove permissions

✅ Useful when managing roles, privileges, and security in PostgreSQL.

🔹 4. TCL – Transaction Control Language
Purpose: Manage transactions to ensure data integrity.

Examples:

BEGIN – start a transaction

COMMIT – save changes

ROLLBACK – undo changes

SAVEPOINT, RELEASE SAVEPOINT – fine-grained control

✅ PostgreSQL supports full ACID transactions — this is super important in real-world apps.

🔹 5. DQL – Data Query Language (Sometimes separated from DML)
Purpose: Purely for querying (not modifying) data.

Main command:

SELECT – fetch data from tables or views

📝 Some sources treat SELECT as part of DML, others as a separate DQL group because it doesn’t change data.



🔄 Summary Table

Type	Description	Common Commands
TCL	Manage transactions	BEGIN, COMMIT, ROLLBACK, SAVEPOINT
DDL	Define structure	CREATE, ALTER, DROP, TRUNCATE
DCL	Control access	GRANT, REVOKE
DML	Manipulate data	 INSERT, UPDATE, DELETE, SELECT
DQL	Query data	SELECT

