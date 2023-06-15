CREATE SCHEMA IF NOT EXISTS cinema;

CREATE TABLE IF NOT EXISTS cinema.users (
    ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(256) NOT NULL,
    SecondName VARCHAR(256),
    Email VARCHAR(256) UNIQUE NOT NULL,
    Password VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS cinema.logs (
    ID SERIAL PRIMARY KEY,
    Email VARCHAR(256) REFERENCES cinema.users(Email),
    Date TIMESTAMP,
    IP VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS cinema.images (
    ID SERIAL PRIMARY KEY,
    UserID BIGINT NOT NULL REFERENCES cinema.users(ID),
    Name VARCHAR(1024) NOT NULL,
    MIME VARCHAR(256) NOT NULL,
    Size VARCHAR(256) NOT NULL
);