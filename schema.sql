/*
Provides high-level bank KPIs.
Includes customers, accounts, deposits, and loan exposure.
*/


create table customers (
    customer_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    country varchar(50),
    date_of_birth date,
    join_date date
);

create table accounts (
    account_id int primary key,
    customer_id int references customers(customer_id),
    account_type varchar(20),
    balance numeric(12,2),
    status varchar(20),
    opened_date date
);

create table transactions (
    transaction_id int primary key,
    account_id int references accounts(account_id),
    transaction_date date,
    transaction_type varchar(20),
    amount numeric(12,2),
    channel varchar(20)
);

create table loans (
    loan_id int primary key,
    customer_id int references customers(customer_id),
    loan_type varchar(30),
    loan_amount numeric(12,2),
    interest_rate numeric(5,2),
    start_date date,
    status varchar(20)
);

create table loan_payments (
    payment_id int primary key,
    loan_id int references loans(loan_id),
    payment_date date,
    payment_amount numeric(12,2)
);
