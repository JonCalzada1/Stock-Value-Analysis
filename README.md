# Stock Value Analysis: Boeing (BA) & JPMorgan Chase (JPM)

This project analyzes and forecasts stock performance for **Boeing (BA)** and **JPMorgan Chase (JPM)** using **SQL** for data transformation, **Python** for time series forecasting (ARIMA), and **Tableau** for interactive data visualization.


## **Project Overview**

The goal of this project is to:
- Analyze historical stock data for BA and JPM
- Calculate daily return metrics using SQL
- Forecast future stock prices with ARIMA in Python
- Present insights in an interactive Tableau dashboard



## **Files Included**

| File | Description |
|------|-------------|
| `Stock_SQL_Analysis.sql` | SQL script for calculating daily differences and daily return % |
| `Stocks_time_series_forecast.ipynb` | Jupyter Notebook for ARIMA modeling and 30-day forecast |
|[View Tableau Dashboard]((https://public.tableau.com/views/StockValueAnalysisBAvsJPM/StockValueAnalysisBAandJPM?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)) | Interactive dashboard on Tableau Public |



## **Tools & Technologies**

- **SQL (PostgreSQL)** – Data cleaning and transformation
- **Python** – Forecasting with:
  - `pandas`
  - `matplotlib.pyplot`
  - `statsmodels.tsa.arima.model`
- **Tableau** – Interactive dashboard design



## **Project Workflow**

### 1️⃣ **Data Preparation in SQL**
- Cleaned raw stock data
- Calculated:
  - Daily price difference
  - Daily return %
- Exported ready-to-use CSV files  
*→ See: `Stock_SQL_Analysis.sql`*

### 2️⃣ **Forecasting in Python**
- Loaded the SQL output
- Used **ARIMA** to forecast closing prices 30 days ahead
- Visualized actual vs forecasted trends  
*→ See: `Stocks_time_series_forecast.ipynb`*

### 3️⃣ **Dashboard in Tableau**
- Visualized:
  - KPIs (e.g., avg price, volume, return)
  - Stock performance over time
  - ARIMA forecast line
  - Sector and price breakdowns
- Designed a clean, modern layout  
*→ [Live Dashboard]((https://public.tableau.com/views/StockValueAnalysisBAvsJPM/StockValueAnalysisBAandJPM?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))*



## **Key Insights**

- **BA** had a higher average adjusted close than **JPM**
- Adjusted prices revealed the impact of **dividends and stock splits**
- ARIMA model forecasted short-term movement (30 days)
- Tableau dashboard makes comparing metrics simple and interactive
