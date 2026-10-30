# DRAFT NOTES ECOMMERCE DASHBOARD

## Purpose
This is the first working version of the executive dashboard. The goal is to make key business metrics visible on one screen and establish a structure that can be improved after stakeholder feedback. The priority at this stage is analytical correctness and coverage, rather than visual polish.

## What Is Intentionally Rough

**KPI Presentation:** KPI cards currently use basic formatting and default styling. Visual hierarchy, spacing between metric names and values, and comparison indicators can be improved to make key results easier to scan.

**Chart Refinement:** The Top 5 Products by Revenue, Revenue by Country, and Revenue Trend charts are functional, but tooltips, axis formatting, labels, and chart annotations can be enhanced for better readability and interpretation.

**Dashboard Styling:** Default Tableau colors, fonts, and formatting have been retained at this stage. A consistent theme, improved spacing, and executive-friendly visual design will be applied in the next iteration.

## What Is Done

SQL queries have been written for the planned KPIs and tested against the PostgreSQL database.
Revenue by country includes a consolidated “Not Provided” category for missing or placeholder country values.

The product chart is restricted to the five highest-revenue products.

Cancellation and refund calculations use distinct order counts to reduce the risk of double-counting.

The dashboard layout follows the intended structure: headline KPIs first, business drivers next, and operational metrics as supporting indicators.

## Analytical Caveats

Revenue is currently defined using delivered orders, excluding orders with failed payment status. This definition should remain consistent across the headline revenue KPI, product analysis, and country analysis. Refund status is treated as successful only when the refund status is succeeded. Refund and return relationships should be validated before interpreting the refund rate as a measure of financial loss.