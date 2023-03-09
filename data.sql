/* Populate database with sample data. */
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon','2020-02-03', 0, false, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15', 2, TRUE, 8);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4, 'Devimon', '2017-05-12', 5, TRUE, 11);


INSERT INTO owner (full_name, age)
  VALUES ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob',45), ('Melody Pond', 77), 
  ('Dean Winchester', 14), 
  ('Joddie Whittaker', 38);

  INSERT INTO species (name)
  VALUES ('Pokemon'),
  ('Digimon');


 UPDATE animals SET species_id = 2
  WHERE name LIKE '%mon';

UPDATE animals SET species_id = 1
  WHERE species_id IS NULL;

  UPDATE animals SET owner_id = 1
  WHERE name='Agumon';
UPDATE animals SET owner_id = 2
  WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3
  WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4
  WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5
  WHERE name IN ('Angemon', 'Boarmon');