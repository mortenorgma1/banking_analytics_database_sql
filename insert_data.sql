/*
Inserts sample data for analysis and testing.
Simulates realistic banking activity.
*/


insert into customers values
(1, 'Anna', 'Kowalski', 'Estonia', '1990-05-12', '2022-01-10'),
(2, 'Ben', 'Smith', 'Spain', '1985-08-22', '2021-11-05'),
(3, 'Maria', 'Lopez', 'Spain', '1992-03-18', '2023-02-01');

insert into accounts values
(101, 1, 'Checking', 3200.50, 'Active', '2022-01-10'),
(102, 1, 'Savings', 8500.00, 'Active', '2022-03-15'),
(103, 2, 'Checking', 1200.75, 'Active', '2021-11-05'),
(104, 3, 'Checking', 560.20, 'Active', '2023-02-01');

insert into transactions values
(1001, 101, '2024-01-05', 'Deposit', 1500, 'Branch'),
(1002, 101, '2024-01-10', 'Withdrawal', 300, 'ATM'),
(1003, 103, '2024-01-12', 'Transfer', 500, 'Online'),
(1004, 104, '2024-01-15', 'Deposit', 700, 'Online');

insert into loans values
(201, 1, 'Personal Loan', 10000, 5.5, '2023-06-01', 'Active'),
(202, 2, 'Auto Loan', 15000, 6.2, '2022-09-01', 'Paid');

insert into loan_payments values
(301, 201, '2023-07-01', 450),
(302, 201, '2023-08-01', 450),
(303, 202, '2023-01-01', 600);
