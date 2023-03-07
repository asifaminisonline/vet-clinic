CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(4, 2)
);

alter table animals add species VARCHAR(250);

create table owners (
    id serial primary key, 
    full_name varchar(255), 
    age integer
);

create table species (
    id serial primary key, 
    name varchar(255)
);

alter table animals drop column species;
alter table animals add species_id integer;
alter table animals add foreign key(species_id) references species(id);

alter table animals add owner_id integer;

alter table animals add foreign key(owner_id) references owners(id);

create table vets (id serial primary key, name varchar(255), age integer, date_of_graduation date);

create table specializations (
    vet_id integer references vets(id),
    species_id integer references species(id),
    primary key(vet_id, species_id)
);

CREATE TABLE visits(
  id INT GENERATED ALWAYS AS IDENTITY,
  animal_id INT REFERENCES animals(id),
  vet_id INT REFERENCES vets(id),
  date_of_visit DATE,
  PRIMARY KEY(id)
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);