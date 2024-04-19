DROP TABLE IF EXISTS Stock;

CREATE TABLE Stock (
	Id         INTEGER PRIMARY KEY,
	Ticker     TEXT    NOT NULL,
	FullName   TEXT    NOT NULL,
	TradingDay TEXT    NOT NULL,
	Price      REAL    NOT NULL CHECK (Price > 0),
	Sector     TEXT    NOT NULL,
	EPS        REAL
);

INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (1, 'AAPL', 'APPLE INC.', '2021-02-03', 134.99, 'Electronic Technology', 3.74);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (2, 'MSFT', 'MICROSOFT CORP.', '2021-02-03', 240.7, 'Technology Services', 6.78);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (3, 'AMZN', 'AMAZON COM INC', '2021-02-03', 3380.29, 'Retail Trade', 42.60);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (4, 'GOOGL', 'ALPHABET INC (GOOGLE) CLASS A', '2021-02-03', 2040.09, 'Technology Services', 59.26);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (5, 'FB', 'FACEBOOK INC', '2021-02-03', 264.88, 'Technology Services', 10.23);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (6, 'TSLA', 'TESLA INC', '2021-02-03', 864.75, 'Consumer Durables', 0.57);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (7, 'BABA', 'ALIBABA GROUP HOLDINGS LTD.', '2021-02-03', 264.70, 'Retail Trade', 8.63);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (8, 'V', 'VISA INC', '2021-02-03', 202.83, 'Finance', 4.85);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (9, 'PYPL', 'PAYPAL HOLDINGS INC', '2021-02-03', 251.93, 'Technology Services', 2.68);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (10, 'ORCL', 'ORACLE CORP', '2021-02-03', 62.26, 'Technology Services', 3.37);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (11, 'JNJ', 'JOHNSON & JOHNSON', '2021-02-03', 160.5, 'Health Technology', NULL);
INSERT INTO Stock (Id, Ticker, FullName, TradingDay, Price, Sector, EPS) 
VALUES (12, 'CMCSA', 'COMCAST CORP', '2021-02-03', 50.47, 'Consumer Services', NULL);

/* 1. Create a query that displays the first 5 records from the Stock table. */
 --SELECT * FROM Stock LIMIT 5;
/* 2. Create a query that displays 5 records from the Stock table 
that have the highest price (the Price column). Sort the result in 
descending order by the Price column. */
 --SELECT * FROM Stock ORDER BY Price DESC LIMIT 5;
/* 3. Create a query that displays the first three records in the Stock table 
that have the highest EPS (earnings per share) value. Sort the result in 
descending order by the EPS column. */
 --SELECT * FROM Stock ORDER BY EPS DESC LIMIT 3;
 
 /* Create a query that displays the following columns from the Stock 
table:
	* Sector
	* FullName
	* Price
Sort the result by the Sector column in descending order. Limit the result to 
the first five records. */

 --SELECT Sector, FullName, Price FROM Stock ORDER BY Sector DESC LIMIT 5;
 
 /*
 Create a query that skips the first three records of the Stock 
table and displays the next five records. */

 --SELECT * FROM Stock LIMIT 5 OFFSET 3;

/* Create a query that displays the following columns from the Stock 
table:
  * Ticker
  * Price
  * EPS
Sort the result by the EPS column in descending order. Then skip the first 
three records and display the next five records. */

 --SELECT Ticker, Price, EPS FROM Stock ORDER BY EPS DESC LIMIT 5 OFFSET 3;


/* Create a query that displays the third company with the highest EPS 
from the Stock table. Use the LIMIT and OFFSET clauses for this exercise. */

 --SELECT * FROM Stock ORDER BY EPS DESC LIMIT 1 OFFSET 2;


/* Create a query that displays the second company with the lowest Price
 from the Stock table. Use the LIMIT and OFFSET clauses for this exercise. */

 -- SELECT * FROM Stock ORDER BY Price LIMIT 1 OFFSET 1;
