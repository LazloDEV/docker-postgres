-- Step 1: Create user
CREATE ROLE test_user WITH LOGIN PASSWORD 'secure123';

-- Step 2: Grant CONNECT privileges in the new DB to test_user
GRANT CONNECT ON DATABASE login_db TO test_user;

-- Step 3: Create a table if it doesn’t exist
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    names TEXT NOT NULL,
    last_names  TEXT NOT NULL,
    email TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_access_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 4: Grant SELECT, INSERT, UPDATE, DELETE privileges in the new DB to test_user
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.users TO test_user;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE users_id_seq TO test_user;

-- Step 5: Inser initial records
INSERT INTO users (username, password, names, last_names, email, created_at, last_access_at) 
  VALUES ('lazlo','testpass','Lazlo','Mita','lazlo.mita@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO users (username, password, names, last_names, email, created_at, last_access_at) 
  VALUES ('gaby','testpass','Gabriela','Siles','lazlo.mita@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO users (username, password, names, last_names, email, created_at, last_access_at) 
  VALUES ('romer','testpass','Romer','Garcia','lazlo.mita@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO users (username, password, names, last_names, email, created_at, last_access_at) 
  VALUES ('chelo','testpass','Marcelo','Vargas','lazlo.mita@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
INSERT INTO users (username, password, names, last_names, email, created_at, last_access_at) 
  VALUES ('rigel','testpass','Rigel','Vargas','lazlo.mita@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
