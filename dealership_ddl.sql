CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    date DATE,
    amount MONEY
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50),
    license_num VARCHAR(30),
    car_id INTEGER,
    invoice_id INTEGER
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50),
    hire_date DATE
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(30),
    model VARCHAR(30),
    car_year INTEGER,
    new_or_used VARCHAR(5),
    salesperson_id INTEGER,
    serv_hist_id INTEGER
);

CREATE TABLE service_ticket(
    ticket_id SERIAL PRIMARY KEY,
    issue VARCHAR(100),
    date DATE,
    customer_id INTEGER,
    car_id INTEGER
);

CREATE TABLE service_history(
    history_id SERIAL PRIMARY KEY,
    description VARCHAR(100),
    service_date DATE,
    car_id INTEGER,
    ticket_id INTEGER
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    specialization VARCHAR(50),
    mechanic_name VARCHAR(50)
);

CREATE TABLE mechanic_assignment(
    assignment_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    ticket_id INTEGER
);


-- We decided to add the FK relationships after creating all the tables


ALTER TABLE customer
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);

ALTER TABLE customer
ADD FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id);

ALTER TABLE service_ticket
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE service_ticket
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);

ALTER TABLE service_history
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);

ALTER TABLE service_history
ADD FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id);

ALTER TABLE car
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE car
ADD FOREIGN KEY (serv_hist_id) REFERENCES service_history(history_id);

ALTER TABLE mechanic_assignment
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id);

ALTER TABLE mechanic_assignment
ADD FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id);