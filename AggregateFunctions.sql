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

/*
Problem 1 : Create a query that displays the number of records in the Stock table.
*/
SELECT COUNT(*) AS RCount FROM Stock;

/*
Problem 2 :Create a query that displays the number of non-empty values in the EPS column. 
Assign the alias NonMissingEPS to the result.
*/
SELECT COUNT(EPS) AS NonMissingEPS FROM Stock WHERE EPS IS NOT NULL;
SELECT * FROM Stock;
/*
Problem 3 :Create a query that displays the number of NULL values in the EPS column. 
Assign the alias MissingEPS to the result.
*/
-- SELECT COUNT(*) AS MissingEPS FROM Stock WHERE EPS IS NULL ;

/*
Problem 4 : Create a query that displays the number of unique values for the Sector column 
and assign an alias NumberOfSectors to the result.
*/ 
 -- SELECT COUNT(DISTINCT Sector) AS NumberOfSectors FROM Stock;

/*
Problem 5 : Create a query that displays the average value for the Price column. Assign 
the alias AvgPrice to the result.
*/
 
-- SELECT AVG(Price) AS AvgPrice FROM Stock;

/*
Problem 6 : Create a query that displays the lowest and highest values for EPS in the 
table. Assign the MinEPS and MaxEPS aliases respectively.
*/

-- SELECT MIN(EPS) AS MinEPS, MAX(EPS) AS MaxEPS FROM Stock;

/*
Problem 7 : Create a query that displays the following columns from the Stock table:
* Id
* Ticker
* FullName
Also add a fourth column to the result that is the number of characters in the 
Ticker. Assign the alias TickerLength to the fourth column.
*/
ALTER TABLE Stock
Add COLUMN TickerLength Integer;
UPDATE Stock
SET TickerLength = LENGTH(Ticker);

SELEct id, Ticker, fullname, tickerlength FRom Stock;