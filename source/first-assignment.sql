create table drivers
(
    id serial primary key,
    first_name varchar,
    last_name varchar
);

create table vehicles
(
    id serial primary key,
    make varchar,
    model varchar,
    driver_id integer references drivers(id)
);

INSERT INTO drivers
    (first_name, last_name)
VALUES
    ('Amy', 'Hua');

INSERT INTO drivers
    (first_name, last_name)
VALUES
    ('Robin', 'Smorenburg');

INSERT INTO drivers
    (first_name, last_name)
VALUES
    ('John', 'Doe');

INSERT INTO drivers
    (first_name, last_name)
VALUES
    ('Jane', 'Doe');

INSERT INTO drivers
    (first_name, last_name)
VALUES
    ('Ronak', 'Abghari');


INSERT INTO vehicles
    (make, model, driver_id)
VALUES
    ('Mazda', '2', '5');

INSERT INTO vehicles
    (make, model, driver_id)
VALUES
    ('Volkswagen', 'Golf', '1');

INSERT INTO vehicles
    (make, model, driver_id)
VALUES
    ('Seat', 'Leon', '2');

INSERT INTO vehicles
    (make, model, driver_id)
VALUES
    ('Tesla', 'Model 3', '3');

INSERT INTO vehicles
    (make, model, driver_id)
VALUES
    ('Tesla', 'Model S', '4');


DELETE FROM vehicles WHERE driver_id = '2';
UPDATE vehicles SET make = 'Audi', model = 'A5' WHERE driver_id = '1';

SELECT *
FROM drivers;

SELECT *
FROM vehicles LIMIT
3;

SELECT *
FROM vehicles;
SELECT *

FROM vehicles
WHERE driver_id = '3';

SELECT *
FROM vehicles INNER JOIN drivers ON driver_id = drivers.id;