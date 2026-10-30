# KPI PLAN - Ecommerce Executive Dashboard

## Purpose of KPI Dashboard

The dashboard will provide a concise view of e-commerce performance, helping the CEO understand revenue generation, customer demand, product performance, and operational risks. The selected KPIs prioritize metrics that support business decisions rather than simply describe the available data.

All KPIs should use consistent reporting periods, documented calculation rules, and clearly defined treatment of incomplete orders, cancellations, discounts, and refunds.

## Brainstorming the KPIs Metrics 

-Revenue
-Orders
-Customers
-Average Order Value (AOV)
-Profit
-Profit Margin
-Refund Rate
-Return Rate
-Conversion Rate
-Top Category Revenue
-Top Region Revenue
-Customer Retention
-New Customers
-Shipping Delays
-Inventory Stockouts

## Selected KPIs

### 1. Total Revenue

* **Definition:** Total gross sales revenue generated from completed orders, net of explicit line-item discounts and promotional codes, serving as the primary top-line scale indicator.

* **Unit:** Currency (e.g., USD) and absolute financial value.

* **Comparison or trend:** Week-over-Week (WoW) and Year-over-Year (YoY) percentage change, accompanied by a trailing trend line.

* **Why it matters:** Revenue is the ultimate heartbeat of the business. It gives the CEO an immediate answer to whether the company is growing or contracting compared to historical benchmarks.

### 2. Total Orders

* **Definition:** The total count of unique, successfully placed and paid transactions across the platform.

* **Unit:** Integer count of transactions.

* **Comparison or trend:** Daily and weekly run-rate compared against historical rolling averages.

* **Why it matters:** Revenue alone can mask underlying transaction volume shifts (e.g., a high revenue week driven by a few massive wholesale or corporate orders rather than broad consumer demand). Tracking total orders measures real transaction velocity.

### 3. Return / Refund Rate

* **Definition:** The percentage of total fulfilled orders that resulted in a customer-initiated product return or financial refund request within the standard window.

* **Unit:** Percentage (%) calculated as $(\text{Total Returned Orders} / \text{Total Fulfilled Orders}) \times 100$.

* **Comparison or trend:** Period-over-period anomaly tracking against a rolling baseline to catch sudden spikes.

* **Why it matters:** Directly addresses the CEO’s need to know if "anything is broken." A sudden spike in returns acts as an early-warning radar for product quality defects, poor product descriptions, or fulfillment errors.

### 4. Average Order Value (AOV)

* **Definition:** The average monetary amount spent by a customer each time they place an order, calculated as total revenue divided by total orders.

* **Unit:** Currency per order (e.g., USD / order).

* **Comparison or trend:** Weekly moving average compared against trailing 30-day and 90-day baselines.

* **Why it matters:** AOV reveals shifts in customer basket composition and purchasing power. A downward trend indicates customers are downgrading items or tightening spending, signaling a need for bundling or cross-selling strategies.

### 5. Revenue Growth Rate 

**Definition:** Percentage change in gross sales revenue between the current and previous equivalent reporting periods.

**Formula:** ((Current Revenue - Previous Revenue) / Previous Revenue) × 100

**Unit:** Percentage.

Comparison or trend: Period-over-period growth, with the comparison period displayed explicitly.

Why it matters: Absolute revenue shows business scale, while growth rate shows direction and pace. If previous-period revenue is zero, the growth rate should be displayed as unavailable rather than mathematically misleading.

### 6. Top Category by Revenue

* **Definition:** The product category generating the highest cumulative sales volume and revenue share during the selected period.

* **Unit:** Revenue amount and percentage share (%) of total company revenue.

* **Comparison or trend:** Ranked performance list tracking category growth velocity over the prior period.

* **Why it matters:** It isolates which merchandising sectors are acting as growth engines versus those that are stagnating, guiding inventory investments and marketing focus.

### 7. Revenue Trend

* **Definition:** The chronological trajectory of revenue performance plotted continuously over daily, weekly, or monthly intervals.

* **Unit:** Time-series currency values across structured intervals.

* **Comparison or trend:** Directional slope and period-over-period moving average alignment.

* **Why it matters:** A single static number misses the story; the trend exposes cyclical patterns, weekend dips, or sudden post-campaign spikes that require executive attention.

### 8. Revenue by Region

* **Definition:** Gross sales revenue grouped by broad geographic territories (e.g., North America, EMEA, APAC), with unassigned regions classified as “Unassigned / Direct.”

* **Unit:** Revenue by region and percentage contribution to total global revenue.

* **Comparison or trend:** Ranked regional contribution with period-over-period growth velocity.

* **Why it matters:** Similar to country-level tracking, regional performance highlights macro-level geographic concentration risks and reveals where global market expansion efforts are gaining traction.

## Implementaion Priorities 

The dashboard prioritizes Gross Sales Revenue, Total Orders, Average Order Value (AOV), and revenue growth rate as headline KPIs to provide an immediate view of business growth and financial performance. Revenue by Country and Top 5 Products by Revenue explain where growth is occurring by highlighting the strongest geographic markets and product-level contributors. Refund Rate act as operational health indicators, helping management quickly identify potential issues that may impact customer satisfaction or revenue realization. Revenue trend displays revenue performance over time, highlighting growth patterns, seasonality, and potential declines.

Before publication, all metrics should be validated for revenue calculations, order-status definitions, date attribution logic, product and country mappings, and cancellation/refund relationships. Each KPI should have a documented SQL definition and reconcile accurately with the underlying transactional dataset.

The dashboard is successful when executives can determine whether the business is growing, understand which products and countries are driving performance, and identify operational risks within a 30-second review, without needing to inspect raw data tables or supporting reports.