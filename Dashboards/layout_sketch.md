# DASHBOARD LAYOUT SKETCH

## Design Objective

Create a single-screen executive dashboard that answers three questions:
Are we growing?
Which products and markets drive revenue?
Are cancellations and refunds creating operational risks?
The layout prioritizes headline metrics, followed by business drivers and operational health.

## ASCII Wireframe
```
+------------------------------------------------------------------+
|                  E-COMMERCE EXECUTIVE DASHBOARD                  |
| Reporting Period: [Selected Period] | Comparison: [Previous]     |
+------------------------------------------------------------------+
| GROSS SALES   | TOTAL ORDERS | AOV          | REVENUE GROWTH RATE|
| ₹ XXX         | XXX          | ₹ XXX        | +/-XX%             |
| vs prev.      | vs prev.     | vs prev.     | vs prev.           |
+--------------------------------+---------------------------------+
| TOP 5 PRODUCTS BY REVENUE      | REVENUE BY COUNTRY              |
|                                |                                 |
| Product A ████████████         | Country A ████████████          |
| Product B ██████████           | Country B █████████             |
| Product C ███████              | Country C ██████                |
| Product D ████                 | Country D ████                  |
| Product E ███                  | Other / Unknown ██              |
+--------------------------------+---------------------------------+
+------------------------------------------------------------------+
|                  REVENUE TREND (12 MONTHS)                       |
|                 Line Chart with WoW / YoY Trend                  |
+------------------------------------------------------------------+
+------------------------------------------------------------------+
|                      OPERATIONAL HEALTH                          |
|                                                                  |
| REFUND RATE                                                      |
| XX%                                                              |
| Trend vs Previous Period                                         |
+------------------------------------------------------------------+
| Notes: Revenue definition, status rules, and data limitations    |
+------------------------------------------------------------------+
```
## Placement Rationale 

### Row 1: Executive KPIs

Place Revenue , total orders, average order value, and revenue growth rate in four equally sized cards.

These metrics provide an immediate overview of commercial performance. Show the current value prominently

### Row 2: Revenue Drivers

Use two side-by-side panels.

Top 5 Products by Revenue: A horizontal bar chart makes it easy to compare products and identify the strongest contributors.
Revenue by Country: A ranked horizontal bar chart highlights geographic concentration and market opportunities.
Both panels should use the same reporting period and revenue definition as the headline KPIs.

### Row 3: Revenue Trend 

Displays revenue performance over time, highlighting growth patterns, seasonality, and potential declines.
Helps executives quickly assess whether business growth is consistent, accelerating, or slowing compared to previous periods.

### Row 4: Operational Health

Refund Rate serves as the primary operational health indicator, helping management quickly identify customer experience or fulfillment issues that may impact realized revenue.

Footer: Definitions and Data Quality
Include a short note identifying the reporting period, revenue basis, order-status treatment, and any material data-quality limitations. Detailed methodology can remain in the project's documentation.

## Design Rules

- Fit the dashboard on one screen without requiring vertical scrolling at the target display size.
- Use consistent currency formatting, date filters, labels, and comparison periods.
- Avoid unnecessary decoration, excessive colors, and 3D charts.
- Use descriptive titles and readable labels.
- ever display placeholder values as actual business results.

**Success criterion:**The CEO can identify overall performance, the leading products and markets, and operational risks within a few minutes.
