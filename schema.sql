/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DEC,
    species_id INT,
    owner_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_species
        FOREIGN KEY (species_id)
            REFERENCES species(id),
    CONSTRAINT fk_owners
        FOREIGN KEY (owner_id)
            REFERENCES owners(id)
);

    /* create table for owners' data.*/
CREATE TABLE owners( 
    id                   SERIAL PRIMARY KEY,
    full_name            VARCHAR(50), 
    age                  INT   
    );

    /* create table for species' data.*/
CREATE TABLE species( 
    id                   SERIAL PRIMARY KEY,
    name                 VARCHAR(50), 
    );


CREATE TABLE vets (
  id                       SERIAL PRIMARY KEY,
  name                      VARCHAR(50),
  age                       INT,
  date_of_graduation        DATE
);

CREATE TABLE specializations (
  id                        SERIAL PRIMARY KEY,
  species_id                INT,
  vet_id                    INT,
  CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id),
  CONSTRAINT fk_vets FOREIGN KEY (vet_id) REFERENCES vets(id)
);
