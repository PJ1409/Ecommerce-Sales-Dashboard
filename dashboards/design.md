
# Executive Ecommerce Dashboard – Design Rationale

## Objective

The dashboard was designed to help an executive answer three questions within a single screen:

1. Are we growing?
2. Where are we growing?
3. Is anything broken?

The visual design prioritizes quick consumption of information and minimizes the need for navigation or drill-down analysis.

## Dashboard Layout

The dashboard follows a top-to-bottom reading hierarchy.

### KPI Summary Section

The first row contains five KPI cards:

- Total Revenue
- Total Orders
- Average Order Value
- Refund Rate
- Revenue Growth Rate

These metrics were placed at the top because they provide an immediate summary of business health and can be scanned within a few seconds.

The KPI cards use a light green background to visually separate them from the analytical charts below while maintaining a clean executive appearance.

## Revenue by Country

### Chart Type
Horizontal Bar Chart

### Why This Choice

The CEO specifically wanted to understand where growth is occurring.

A horizontal bar chart was chosen because it allows easy comparison of revenue generated across countries and naturally supports ranking.

The chart also includes a consolidated "Not Provided" category to account for missing country values and prevent fragmented reporting.

### Marks Card Usage

- Country Name → Rows
- Revenue → Columns
- Bar Marks
- Color used to distinguish categories while keeping focus on magnitude

## Top 5 Products by Revenue

### Chart Type
Vertical Bar Chart

### Why This Choice

This visualization identifies the products contributing the most revenue.

Restricting the view to the top five products prevents overcrowding and highlights the strongest revenue drivers.

The chart complements the country analysis by providing a product-level explanation of business performance.

### Marks Card Usage

- Product Name → Rows
- Revenue Generated → Columns
- Bar Marks
- Revenue values displayed through bar length

## Revenue Trend

### Chart Type
Line Chart

### Why This Choice

Revenue Trend was implemented as a line chart because time-series analysis is most effectively communicated through continuous lines.

The chart provides context behind headline KPIs and allows executives to identify patterns, growth periods, and declines over time.

Data labels were added to remove the need for hover interactions and make the chart easier to interpret during quick reviews.

### Marks Card Usage

- Month → Columns
- Revenue → Rows
- Line Marks
- Revenue labels displayed directly on the trend line

## KPI Card Design

### Chart Type
Text Marks

Text marks were used for KPI cards because the dashboard objective is immediate recognition rather than visual exploration.

Each KPI presents one important business metric:

- Revenue indicates overall business scale.
- Orders indicate transaction volume.
- Average Order Value reflects customer spending behavior.
- Refund Rate acts as an operational health metric.
- Revenue Growth Rate indicates short-term business momentum.

## Filters and Interactivity

Two filters were included:

### Country Filter

Allows users to focus on specific geographic markets and compare country-level performance.

### Order Month Filter

Provides flexibility to analyze different reporting periods without changing the dashboard structure.

Both filters were positioned on the right side to avoid interrupting the primary visual flow while remaining accessible.

## Color Choices

The dashboard uses a restrained color palette to support executive readability.

### KPI Cards
Light green backgrounds were selected to distinguish summary metrics from analytical charts.

### Revenue Trend
A green line was used to emphasize performance over time and make the trend visually distinct from the bar charts.

### Revenue by Country
Different colors improve category recognition while maintaining focus on revenue magnitude.

### Top 5 Products
Consistent color segmentation improves readability and helps differentiate product categories.

The dashboard avoids excessive color usage to keep attention on the metrics rather than visual decoration.

## Container and Layout Decisions

Tableau tiled containers were used throughout the dashboard.

This approach provides:

- Consistent alignment
- Predictable spacing
- Easier maintenance
- Single-screen responsiveness

The layout groups related information together:

- KPIs at the top
- Revenue drivers in the middle
- Historical trend analysis at the bottom

This arrangement supports a natural executive reading flow from summary metrics to supporting analysis.

## Final Design Justification

The final design emphasizes clarity, simplicity, and speed of interpretation. Every visual element directly supports one of the executive objectives:

- Are we growing? → KPI cards and Revenue Trend
- Where are we growing? → Revenue by Country and Top 5 Products
- Is anything broken? → Refund Rate and Revenue Growth Rate

The result is a single-screen executive dashboard that communicates business performance without requiring additional navigation or detailed operational analysis.


This version matches the dashboard in your screenshot, including the KPI cards, green KPI background, country filter, month filter, line chart, and top-5 products visualization.