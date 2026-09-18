# ITI Data Analysis Bootcamp

Materials and lab work from the **ITI (Information Technology Institute) Data Analysis** bootcamp — lectures, SQL scripts, lab assignments, and hands-on BI projects (SSIS / SSAS / SSRS).

## Structure

| Folder | Contents |
|---|---|
| `01-Slides-Decks/` | Lecture slides (ERD, MDX intro, dimensional mapping) and a statistics intro deck |
| `02-SQL-Scripts/` | T-SQL scripts from the course days, plus archived day exercises |
| `03-Lab-Documents/` | Lab instructions and the Company Requirements Document used across labs |
| `04-Statistics-Notebook/` | Jupyter notebook + report for the statistics assignment (tips dataset) |
| `05-Sample-Datasets/` | Small sample data files used in the SQL/BI exercises |
| `06-Lab1-SSIS-ETL-Project/` | SSIS (Integration Services) ETL packages — Visual Studio project |
| `07-Lab2-SSAS-Cube-Project/` | SSAS (Analysis Services) OLAP cube project — dimensions, cubes, data source view |
| `08-Lab3-SSRS-Reports-Project/` | SSRS (Reporting Services) report project — `.rdl` reports |
| `09-GenAI-Prompting-Demo/` | A GenAI prompting exercise (Barcelona 5-day itinerary) — deck + generated HTML page |
| `10-Screenshots/` | Progress/setup screenshots from the labs |

## Not included

The SQL Server `.bak` database backup files (AdventureWorks2012, Company_SD_Full, ITI, sales, etc.) are **excluded** from this repo — they're large (up to ~200MB) binary database dumps, not source material, and unsuitable for Git. If you need to reproduce the labs locally:

1. Restore the relevant `.bak` file in SQL Server Management Studio.
2. Run the scripts in `02-SQL-Scripts/` against that restored database.

IDE-generated files (`.vs/`, `bin/`, `obj/`) were also stripped from the Visual Studio projects — they're local build/cache artifacts, not source.

## About

Built during the ITI Data Analysis bootcamp — covering SQL Server, ETL (SSIS), OLAP cubes (SSAS), reporting (SSRS), and applied statistics.
