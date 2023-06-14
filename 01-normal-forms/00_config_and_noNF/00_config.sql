--Execute psql shell
--psql -U postgres

CREATE DATABASE "sql-workshop"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE "sql-workshop"
    IS 'Sandbox database for my sql workshop';

--Change DB to sql-workshop
--\c sql-workshop