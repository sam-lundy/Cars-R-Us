-- adding our employees

INSERT INTO salesperson(
    full_name,
    hire_date
) VALUES (
    'Omar Gonzalez',
    '1978-10-30'
);

INSERT INTO salesperson(
    full_name,
    hire_date
) VALUES (
    'Britt Pitts',
    '2019-01-22'
);

-- adding our mechanics

INSERT INTO mechanic(
    specialization,
    mechanic_name
) VALUES (
    'Transmissions',
    'Jake Mandeville'
);

INSERT INTO mechanic(
    specialization,
    mechanic_name
) VALUES (
    'Electrical',
    'Christian Askew'
);

-- adding customers

INSERT INTO customer(
    full_name,
    license_num,
    car_id,
    invoice_id
) VALUES (
    'Lois E Austin',
    'A023124',
    1,
    1
);

INSERT INTO customer(
    full_name,
    license_num,
    car_id,
    invoice_id
) VALUES (
    'Sam Lundy',
    'LX2209G4',
    2,
    2
);

INSERT INTO customer(
    full_name,
    license_num,
    car_id,
    invoice_id
) VALUES (
    'Mitchell Hamm',
    'BALLER99',
    3,
    3
);


-- adding cars

INSERT INTO car(
    make,
    model,
    car_year,
    salesperson_id,
    new_or_used
) VALUES (
    'Chevrolet',
    'Caprice Classic',
    1988,
    1,
    'New'
);

INSERT INTO car(
    make,
    model,
    car_year,
    salesperson_id,
    new_or_used
) VALUES (
    'Ford',
    'Edge',
    2018,
    2,
    'Used'
);

INSERT INTO car(
    make,
    model,
    car_year,
    salesperson_id,
    new_or_used
) VALUES (
    'Lamborghini',
    'Diablo',
    1999,
    2,
    'Used'
);




-- adding service ticket

INSERT INTO service_ticket(
    issue,
    date,
    customer_id,
    car_id
) VALUES (
    'Need brake drums and pads changed',
    '1989-09-09',
    1,
    1
);

INSERT INTO service_ticket(
    issue,
    date,
    customer_id,
    car_id
) VALUES (
    'Vehicle was totaled',
    '2021-03-13',
    3,
    3
);


-- adding service history

INSERT INTO service_history(
    description,
    service_date,
    car_id,
    ticket_id
) VALUES (
    'Service history for 1989 Caprice',
    '1989-09-10',
    1,
    1
);

-- reassociating service history to car
UPDATE car
SET serv_hist_id = 1
WHERE car_id = 1;

SELECT * FROM car;

INSERT INTO service_history(
    description,
    service_date,
    car_id,
    ticket_id
) VALUES (
    'Service history for 1999 Lamborghini',
    '2021-03-13',
    1,
    1
);

-- Fixing mistake caused by copying and pasting and not changing the car id or ticket id

UPDATE service_history
SET car_id = 3
WHERE history_id = 2;

UPDATE service_history
SET ticket_id = 2
WHERE history_id = 2;

UPDATE car
SET serv_hist_id = 2
WHERE car_id = 3;



-- adding mechanic assignments

INSERT INTO mechanic_assignment(
    mechanic_id,
    ticket_id
) VALUES (
    1,
    2
);

INSERT INTO mechanic_assignment(
    mechanic_id,
    ticket_id
) VALUES (
    2,
    1
);



-- 3 invoices

INSERT INTO invoice(
    date,
    amount
) VALUES (
    '1989-05-06',
    16850.00
);

INSERT INTO invoice(
    date,
    amount
) VALUES (
    '2018-10-19',
    19552.00
);

INSERT INTO invoice(
    date,
    amount
) VALUES (
    '2020-04-12',
    842222.00
);




