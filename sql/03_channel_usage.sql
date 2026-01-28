/*
Aggregates transaction amounts by banking channel.
Used to compare Branch, Online, and ATM activity.
*/


SELECT
	T.CHANNEL,
	SUM(T.AMOUNT) AS TOTAL_TRANSACTION_AMOUNT
FROM
	TRANSACTIONS T
GROUP BY
	T.CHANNEL
ORDER BY
	TOTAL_TRANSACTION_AMOUNT DESC