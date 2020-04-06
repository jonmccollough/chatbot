-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS keywords;
DROP TABLE IF EXISTS responses;

CREATE TABLE responses (

        id serial PRIMARY KEY,
        answer varchar NOT NULL,
        title varchar NOT NULL

);

CREATE TABLE keywords (

        keywordid int NOT NULL,
        words varchar NOT NULL,
        
        CONSTRAINT fk_id FOREIGN KEY (keywordid) REFERENCES responses (id)

);

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

COMMIT;