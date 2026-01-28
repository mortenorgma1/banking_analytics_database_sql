/*
Summarises loans by loan type.
Calculates number of loans, total amount, and average interest rate.
*/


SELECT
	L.LOAN_TYPE,
	COUNT(L.LOAN_ID) AS NUMBER_OF_LOANS,
	SUM(L.LOAN_AMOUNT) AS TOTAL_LOAN_AMOUNT,
	CONCAT(ROUND(AVG(L.INTEREST_RATE), 2), '%') AS AVERAGE_INTEREST_RATE
FROM
	LOANS L
GROUP BY
	L.LOAN_TYPE