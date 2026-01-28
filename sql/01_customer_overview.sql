/*
Summarises customer account relationships.
Calculates number of accounts and total balance per customer.
*/


SELECT
	CONCAT(C.FIRST_NAME, ' ', C.LAST_NAME) AS CUSTOMER_NAME,
	COUNT(A.ACCOUNT_ID) AS NUMBER_OF_ACCOUNTS,
	SUM(A.BALANCE) AS TOTAL_BALANCE
FROM
	ACCOUNTS A
	JOIN CUSTOMERS C ON A.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY
	C.FIRST_NAME,
	C.LAST_NAME
ORDER BY
	CUSTOMER_NAME
