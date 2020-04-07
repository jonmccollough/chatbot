BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
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

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(255) NOT NULL UNIQUE,     -- Username
  password varchar(32) NOT NULL,      -- Password
  salt varchar(256) NOT NULL,          -- Password Salt
  role varchar(255) NOT NULL default('user')
);

COMMIT TRANSACTION;
