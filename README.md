# Banking SQL Analytics Project

## Overview
This project simulates a retail banking database and a collection of realistic SQL analytics tasks commonly encountered in bank data analyst and junior data engineering roles.

The objective is to analyse customer behaviour, account balances, transaction activity, and loan exposure using structured SQL queries. The project focuses on writing clean, readable, and business-oriented SQL suitable for production environments.

The database and queries are implemented using PostgreSQL.

---

## Database Schema

The database models core banking operations using the following tables:

### Customers
Stores customer master data.  
Each row represents a single bank customer and serves as the base entity for accounts, transactions, and loans.

### Accounts
Stores bank accounts owned by customers.  
Tracks account balances, account types, and account status.

### Transactions
Stores financial transactions at the account level.  
Includes deposits and withdrawals, transaction channels, and transaction dates.

### Loans
Stores loan agreements per customer.  
Includes loan type, loan amount, interest rate, and loan status.

### Loan Payments
Stores repayments made toward loans.  
Used to calculate remaining loan exposure.

---

## Sample Data
The dataset includes realistic sample data designed for analysis and learning purposes:
- Multiple customers with varying balances
- Active and inactive accounts
- Transactions across different banking channels
- Loans with partial repayments

The data is intentionally small but structured to reflect real-world banking scenarios.

---

## SQL Tasks

Each task is implemented as a separate SQL file.

### Task 01 – Customer Account Overview
Displays each customer with the number of accounts and total balance across all accounts.

### Task 02 – Daily Transaction Volume
Shows the number of transactions and total transaction amount per day.

### Task 03 – Transaction Volume by Channel
Aggregates transaction amounts by banking channel (ATM, Online, Branch).

### Task 04 – High-Value Customers
Identifies customers whose total account balance exceeds a defined threshold.

### Task 05 – Loan Portfolio Summary
Summarises loans by loan type, including number of loans, total loan amount, and average interest rate.

### Task 06 – Loan Repayment Status
Calculates total paid amount and remaining balance for each loan.

### Task 07 – Low-Balance Active Customers
Identifies customers with active accounts whose total balance is below a defined threshold.

### Task 08 – Top Customers by Transaction Activity
Ranks customers by total transaction amount across all accounts.

### Task 09 – Recent Account Activity
Identifies accounts with transaction activity within the last 90 days.

### Task 10 – Bank-Level Exposure Summary
Produces a high-level banking KPI summary including:
- Total customers
- Total accounts
- Total deposits
- Total outstanding loan exposure

---

## SQL Features Used
- INNER JOIN and LEFT JOIN
- GROUP BY and HAVING
- Aggregate functions (SUM, COUNT, AVG)
- Conditional aggregation
- Common Table Expressions (CTEs)
- Date filtering with INTERVAL
- Ordering and ranking

---

## How to Run
1. Create a PostgreSQL database
2. Execute `schema.sql`
3. Execute `insert_data.sql`
4. Run each task SQL file individually

---

## Purpose
This project is intended for SQL practice, interview preparation, and portfolio demonstration, with a focus on banking and financial analytics use cases.

---

## Author
Morten Orgma  
SQL | Data Analytics | Business Intelligence
