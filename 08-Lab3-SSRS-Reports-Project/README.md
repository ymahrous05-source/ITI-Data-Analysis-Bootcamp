# Lab 3 — SSRS Reports Project

A SQL Server Reporting Services (SSRS) project (`Lab3_SSRS/`) containing paginated reports built against the course database.

## Reports included

| Report | Purpose |
|---|---|
| `Report_Students.rdl` | Student listing report |
| `Report_Students_ByAge.rdl` | Students grouped/filtered by age |
| `Report_Students_ByDept.rdl` | Students grouped by department |
| `Report_Courses.rdl` / `Report_Courses_Linked.rdl` | Course listing, including a drill-through/linked variant |
| `Report_Grades.rdl` | Student grades report |
| `Report_Topics.rdl` | Topics report |
| `Report_Sales_Chart.rdl` | Sales data visualized as a chart |
| `Report_Sales_Matrix.rdl` | Sales data as a pivoted matrix report |

Each `.rdl` report has a matching `.rdl.data` file with cached preview data.

## What's inside

- **`Lab3_SSRS/`** — the main Reporting Services project
- **`DataSource1.rds`** — shared data source definition
- **`Sales_Cube/`** — a companion SSAS cube (`SalesCube`) built specifically to back the sales reports
- **`Output-Build.txt`** — build log from the last report deployment

## How to open

Requires **SQL Server Data Tools (SSDT)** with the Reporting Services extension (Report Designer). Open `Lab3_SSRS.slnx`, then preview or deploy individual reports to a report server.
