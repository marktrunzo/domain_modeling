-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS sales_members;

-- CREATE TABLES

CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT,
    company_id INTEGER
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contact_type TEXT,
    date TEXT,
    notes TEXT,
    contact_id INTEGER,
    salesmember_id INTEGER
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE industries(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE relationships(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_id INTEGER,
    company_id INTEGER
);

CREATE TABLE sales_members(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);