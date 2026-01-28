/*
Checks account transaction activity in the last 90 days.
Used to identify inactive or low-activity accounts.
*/


SELECT
	A.ACCOUNT_ID,
	COUNT(
		CASE
			WHEN T.TRANSACTION_ID = 0 THEN 'No Transactions'
		END
	) AS TRANSACTIONS_LAST_90_DAYS
FROM
	ACCOUNTS A
	LEFT JOIN TRANSACTIONS T ON A.ACCOUNT_ID = T.ACCOUNT_ID
	AND T.TRANSACTION_DATE >= CURRENT_DATE - INTERVAL '90 days'
GROUP BY
	A.ACCOUNT_ID
ORDER BY
	TRANSACTIONS_LAST_90_DAYS,
	A.ACCOUNT_ID