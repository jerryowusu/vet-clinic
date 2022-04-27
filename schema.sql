/* Database schema to keep the structure of entire database. */

CREATE TABLE animals( 
    id                  INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1), 
    name                 VARCHAR(50), 
    date_of_birth        date, 
    escape_attempts     INT, 
    neutered            boolean, 
    weight_kg           DEC,
    );
    
    ALTER TABLE animals ADD species VARCHAR(50);


    /* create table for owners' data.*/
CREATE TABLE owners( 
    id                  INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1), 
    full_name            VARCHAR(50), 
    age                  INT,
    );

    /* create table for species' data.*/
CREATE TABLE species( 
    id                  INT GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1), 
    name                 VARCHAR(50), 
    );


ALTER TABLE animals ADD PRIMARY KEY (id);