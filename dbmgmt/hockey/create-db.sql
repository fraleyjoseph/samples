\pset pager off

\set ON_ERROR_STOP

SET client_min_messages='warning';

CREATE USER fred
   UNENCRYPTED PASSWORD 'fred123'
   SUPERUSER;

CREATE DATABASE hockey_db OWNER fred;

\connect hockey_db fred localhost;

CREATE SCHEMA nhl AUTHORIZATION fred;

CREATE TABLE nhl.teams (
   name    text   PRIMARY KEY,
   year_founded bigint  NOT NULL
);

