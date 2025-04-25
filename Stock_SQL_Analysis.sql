-- Check total number of distinct TICKER
SELECT DISTINCT "Ticker" FROM "Portfolio_prices";

-- Checking first and last available date
SELECT MIN("Date"), MAX("Date") FROM "Portfolio_prices";

/* Choosing JPM stock
Close: The closing price of the stock. Open: The opening price of the stock on that day.
High: The highest price reached on that day. Low: The lowest price reached on that day
Adjusted: The adjusted closing price after stock splits and dividends. Returns: Daily percentage return based on close prices
Volume: The volume of shares traded that day */

-- Calculate daily return. You want to find how much a stock’s price changed each day — that’s the daily return (in price, not %)
SELECT
"Date",
"Close",
  LAG("Close") OVER (ORDER BY "Date") AS prev_close, -- LAG() is a window function that returns the value of a column from the previous row (in this case, the previous day's closing price).
  "Close" - LAG("Close") OVER (ORDER BY "Date") AS daily_diff, -- Here, you’re subtracting the previous day’s close from today’s close to get the daily difference in price.
  ("Close" - LAG("Close") OVER (ORDER BY "Date")) / LAG("Close") OVER (ORDER BY "Date") AS daily_return_pct
FROM "Portfolio_prices" 
WHERE "Ticker" = 'JPM' AND "Close" IS NOT NULL
ORDER BY "Date";

CREATE TABLE "JPM_Time_Series" AS 
SELECT
"Date",
"Close",
  LAG("Close") OVER (ORDER BY "Date") AS prev_close, 
  "Close" - LAG("Close") OVER (ORDER BY "Date") AS daily_diff, 
  ("Close" - LAG("Close") OVER (ORDER BY "Date")) / LAG("Close") OVER (ORDER BY "Date") AS daily_return_pct
FROM "Portfolio_prices" 
WHERE "Ticker" = 'JPM' AND "Close" IS NOT NULL
ORDER BY "Date";


-- Now for BA stock
CREATE TABLE "BA_Time_Series" AS 
SELECT
"Date",
"Close",
  LAG("Close") OVER (ORDER BY "Date") AS prev_close, -- LAG() is a window function that returns the value of a column from the previous row (in this case, the previous day's closing price).
  "Close" - LAG("Close") OVER (ORDER BY "Date") AS daily_diff, -- Here, you’re subtracting the previous day’s close from today’s close to get the daily difference in price.
  ("Close" - LAG("Close") OVER (ORDER BY "Date")) / LAG("Close") OVER (ORDER BY "Date") AS daily_return_pct
FROM "Portfolio_prices" 
WHERE "Ticker" = 'BA' AND "Close" IS NOT NULL
ORDER BY "Date";

