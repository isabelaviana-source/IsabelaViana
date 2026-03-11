-- SQL schema for experiments, variables, runs, observations tables

CREATE TABLE experiments (
    experiment_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE variables (
    variable_id SERIAL PRIMARY KEY,
    experiment_id INT REFERENCES experiments(experiment_id),
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50),
    min_value FLOAT,
    max_value FLOAT
);

CREATE TABLE runs (
    run_id SERIAL PRIMARY KEY,
    experiment_id INT REFERENCES experiments(experiment_id),
    run_number INT,
    date_run TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE observations (
    observation_id SERIAL PRIMARY KEY,
    run_id INT REFERENCES runs(run_id),
    variable_id INT REFERENCES variables(variable_id),
    value FLOAT
);

-- Indexes and views can be defined below
