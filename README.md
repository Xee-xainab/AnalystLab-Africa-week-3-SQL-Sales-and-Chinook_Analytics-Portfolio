# SQL Sales Performance Analysis

## Project Overview

This project explores and analyzes transactional sales data using SQL to uncover insights into business performance, customer behavior, product performance, geographic sales distribution, and revenue trends.

The analysis was conducted using SQL queries in DBeaver with a SQLite database and focused on answering key business questions that support data-driven decision-making.

---

## Business Problem

Management requires a deeper understanding of sales performance to identify:

- Top-performing product lines
- High-value customers
- Best-performing markets
- Revenue trends over time
- Opportunities for business growth

The goal is to leverage data to improve strategic planning, customer retention, and revenue generation.

---

## Dataset Overview

The dataset contains transactional sales records including:

- Order Information
- Customer Information
- Product Information
- Geographic Information
- Sales Metrics

### Dataset Statistics

| Metric | Value |
|----------|----------|
| Total Revenue | $10,032,628.85 |
| Total Orders | 2,823 |
| Total Customers | 92 |
| Product Lines | 7 |

---

## Dataset Structure

The dataset consists of a single sales table containing information about:

- Orders (Order Number, Order Date, Status)
- Products (Product Line, Product Code, MSRP, Price Each)
- Sales Metrics (Quantity Ordered, Sales)
- Customers (Customer Name, Contact Information)
- Geography (City, State, Country, Territory)
- Time Dimensions (Month, Quarter, Year)
- Deal Information (Deal Size)

This structure enables analysis of sales performance, customer behavior, product performance, and geographic trends.

---

## Tools Used

- SQL
- SQLite
- DBeaver
- GitHub

---

## SQL Concepts Applied

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions (SUM, COUNT, AVG)
- Subqueries
- Window Functions (RANK)

---

## Methodology

The analysis followed a structured workflow:

1. Data Understanding
2. Data Exploration
3. Sales Performance Analysis
4. Customer Analysis
5. Geographic Analysis
6. Trend Analysis
7. Business Insight Generation

SQL aggregation functions, subqueries, filtering techniques, and window functions were used to transform raw data into actionable business insights.

---

## Business Questions

The analysis addressed the following questions:

1. What is the total revenue generated?
2. How many orders and customers exist?
3. Which product lines generate the most revenue?
4. Who are the top-performing customers?
5. Which customers generate sales above $50,000?
6. Which customers generate above-average revenue?
7. Which countries contribute the most revenue?
8. How has revenue changed over time?

---

## Key Findings

### Overall Business Performance

- Total Revenue: **$10,032,628.85**
- Total Orders: **2,823**
- Total Customers: **92**
- Product Lines: **7**

### Product Line Performance

| Product Line | Revenue ($) |
|-------------|-------------|
| Classic Cars | 3,919,615.66 |
| Vintage Cars | 1,903,150.84 |
| Motorcycles | 1,166,388.34 |
| Trucks and Buses | 1,127,789.84 |
| Planes | 975,003.57 |
| Ships | 714,437.13 |
| Trains | 226,243.47 |

**Insight:** Classic Cars generated approximately 39% of total revenue, making it the strongest-performing product category.

---

### Top Customers

| Customer | Revenue ($) |
|-----------|-------------|
| Euro Shopping Channel | 912,294.11 |
| Mini Gifts Distributors Ltd. | 654,858.06 |
| Australian Collectors, Co. | 200,995.41 |
| Muscle Machine Inc. | 197,736.94 |
| La Rochelle Gifts | 180,124.90 |

**Insight:** Revenue is concentrated among a small number of high-value customers, highlighting the importance of customer retention.

---

### Geographic Performance

| Country | Revenue ($) |
|----------|-------------|
| USA | 3,627,982.83 |
| Spain | 1,215,686.92 |
| France | 1,110,916.52 |
| Australia | 630,623.10 |
| United Kingdom | 478,880.46 |

**Insight:** The United States was the highest-performing market, generating over $3.6 million in revenue.

---

### Revenue Trend

| Year | Revenue ($) |
|--------|-------------|
| 2003 | 3,516,979.54 |
| 2004 | 4,724,162.60 |
| 2005 | 1,791,486.71 |

**Insight:** Revenue peaked in 2004, indicating significant business growth before declining in 2005.

---

## Recommendations

- Increase investment in high-performing product lines such as Classic Cars.
- Strengthen retention programs for high-value customers.
- Expand market penetration in top-performing countries.
- Investigate lower-performing product categories for improvement opportunities.
- Implement continuous sales monitoring and reporting.

---

## Project Files

```text
├── README.md
├── Sales_SQL_Queries.sql
├── Sales_Performance_Report.pdf
├── screenshots/
│   ├── schema_diagram.png
│   ├── revenue_by_productline.png
│   ├── top_customers.png
│   ├── revenue_by_country.png
│   └── revenue_by_year.png
└── dataset/
```

---

## Author

**Zainab Danjuma**

Aspiring Data Analyst | SQL | Power BI | Excel | Data Visualization

LinkedIn: : https://www.linkedin.com/in/danjuma-zainab
