ALTER SESSION SET EXPLAIN PLAN = ON;
ALTER SYSTEM SET TRCLOG_EXPLAIN_GRAPH = 1;

SET TIMING ON;
SET TIMESCALE MILSEC;

SELECT 
	SUM(L_EXTENDEDPRICE * L_DISCOUNT) AS REVENUE
FROM
	LINEITEM
WHERE
	L_SHIPDATE >= DATE'01-JAN-1994'
	AND L_SHIPDATE < ADD_MONTHS('01-JAN-1994', 12)
	AND L_DISCOUNT BETWEEN 0.06 - 0.01 AND 0.06 + 0.01
	AND L_QUANTITY < 24;

ALTER SYSTEM SET TRCLOG_EXPLAIN_GRAPH = 0;
