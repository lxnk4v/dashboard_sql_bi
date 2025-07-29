SELECT
    "Year",
    "Company",
    "Net Income",
    "Share Holder Equity",
    ("Net Income" * 1.0 / "Share Holder Equity") AS roe
FROM
    financials
WHERE
    "Share Holder Equity" > 0
ORDER BY
    "Company", "Year";



SELECT
    "Year",
    "Company",
    ("Net Income" * 1.0 / "revenue") AS net_profit_margin
FROM
    financials
WHERE
    "revenue" > 0;


SELECT
    "Year",
    "Company",
    "roe", 
    ROUND(("Net Income" * 1.0 / "Share Holder Equity") * 100,4) AS calculated_roe 
FROM
    financials
WHERE
    "Share Holder Equity" > 0
LIMIT 20; 
    
