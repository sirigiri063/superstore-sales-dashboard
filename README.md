📊 Superstore Sales & Profit Dashboard

An interactive Power BI dashboard analysing 4 years of retail data across 793 transactions — surfacing the product categories and regions that drive profit, and those quietly destroying it.


🎯 Business Problem
Retail businesses often celebrate high revenue categories without realising those same categories may be unprofitable. This project was built to answer a simple but critical business question:

"Where is the business actually making money — and where is it losing it despite strong sales?"


🛠️ Tools & Stack
ToolPurposeExcelData cleaning, null handling, derived columnsSQLExploratory analysis, aggregations, segmentationPower BIInteractive dashboard, KPI cards, DAX measures

⚙️ Project Workflow
1. Data Cleaning (Excel)

Removed duplicate transaction records
Standardised date formats and category labels
Handled missing values in the Profit and Discount columns
Created derived field: Profit Margin % per order

2. Data Analysis (SQL)
Key queries written to answer:

Which product categories generate the most profit (not just revenue)?
Which regions are most and least profitable?
What is the monthly sales trend over the 4-year period?
Which customer segments drive the highest order volume?

3. Dashboard (Power BI)
Built a single-page interactive dashboard with:

KPI Cards — Total Sales, Total Profit, Total Orders, Average Profit Margin
Sales by Category — bar chart with profit margin overlay
Profit by Region — map and bar chart combination
Monthly Sales Trend — 4-year line chart with seasonality visible
Top 5 Products by Profit — horizontal bar
Segment Filter — Consumer / Corporate / Home Office slicer


📷 Dashboard Preview
screenshot.png

🔍 Key Findings
FindingBusiness ImplicationTechnology drives the highest profit margin (~17%) despite mid-tier sales volumePrioritise tech category in promotions — it punches above its weightFurniture has the 2nd highest sales but the lowest profit margin (~2.5%)Pricing or discount policy on furniture needs reviewWest region is the most profitable; Central region has the lowest marginsRegional pricing strategy or cost structure warrants investigationConsumer segment accounts for ~51% of revenue but places the most individual ordersHigh-volume, moderate-value customers — loyalty programme opportunitySales peak in Q4 (Nov–Dec) across all yearsInventory and staffing should be scaled up for Q4 demand

📁 Project Files
FileDescriptiondashboard.pbixPower BI dashboard filedataset.xlsxCleaned dataset used for analysissql_queries.sqlSQL queries for exploratory analysisproject_document.docxFull project documentationscreenshot.pngDashboard preview image

💡 What I Learned
This project reinforced how misleading top-line revenue can be. Furniture had strong sales and weak profits — a pattern that would be invisible in a simple revenue report but immediately clear once profit margin was overlaid. The ability to ask "profitable, not just popular" is what separates useful analysis from vanity metrics.

👤 Author
Sirigiri Malakonda Reddy — Business Analyst
LinkedIn · GitHub
