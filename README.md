# ITI Data Analysis Bootcamp

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat&logo=microsoftsqlserver&logoColor=white)
![SSIS](https://img.shields.io/badge/SSIS-ETL-blue)
![SSAS](https://img.shields.io/badge/SSAS-OLAP%20Cubes-blue)
![SSRS](https://img.shields.io/badge/SSRS-Reporting-blue)
![Python](https://img.shields.io/badge/Python-Statistics-yellow?logo=python&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

Materials and lab work from the **ITI (Information Technology Institute) Data Analysis** bootcamp — lectures, SQL scripts, ER-diagram design exercises, and hands-on BI projects covering the full Microsoft BI stack (SSIS, SSAS, SSRS).

## Table of Contents

- [Skills Demonstrated](#skills-demonstrated)
- [Repository Structure](#repository-structure)
- [Highlighted Projects](#highlighted-projects)
- [ER Diagram Design Exercises](#er-diagram-design-exercises)
- [Not Included](#not-included)

## Skills Demonstrated

- **Database design**: ER modeling (Chen notation) and relational mapping for multiple real-world domains (music catalog, real estate, hospital management, airline operations)
- **T-SQL**: querying, filtering, joins, and data manipulation against SQL Server databases
- **ETL (SSIS)**: building Integration Services packages for extract-transform-load workflows
- **OLAP (SSAS)**: designing dimensions, data source views, and multidimensional cubes for analytical querying (MDX)
- **Reporting (SSRS)**: building paginated reports (`.rdl`) with parameters, charts, and matrices
- **Statistics & data analysis**: descriptive statistics and exploratory analysis in Python/Jupyter

## Repository Structure

| Folder | Contents |
|---|---|
| [`01-Slides-Decks/`](./01-Slides-Decks) | Lecture slides (ERD, MDX intro, dimensional mapping) and a statistics intro deck — PDF versions included for quick preview |
| [`02-SQL-Scripts/`](./02-SQL-Scripts) | T-SQL scripts from the course days, plus archived day exercises |
| [`03-Lab-Documents/`](./03-Lab-Documents) | Lab instructions and the Company Requirements Document used across labs |
| [`04-Statistics-Notebook/`](./04-Statistics-Notebook) | Jupyter notebook + report for the statistics assignment (tips dataset) |
| [`05-Sample-Datasets/`](./05-Sample-Datasets) | Small sample data files used in the SQL/BI exercises |
| [`06-Lab1-SSIS-ETL-Project/`](./06-Lab1-SSIS-ETL-Project) | SSIS (Integration Services) ETL packages — Visual Studio project |
| [`07-Lab2-SSAS-Cube-Project/`](./07-Lab2-SSAS-Cube-Project) | SSAS (Analysis Services) OLAP cube project — dimensions, cubes, data source view |
| [`08-Lab3-SSRS-Reports-Project/`](./08-Lab3-SSRS-Reports-Project) | SSRS (Reporting Services) report project — `.rdl` reports |
| [`09-GenAI-Prompting-Demo/`](./09-GenAI-Prompting-Demo) | A GenAI prompting exercise (Barcelona 5-day itinerary) — deck + generated HTML page |
| [`10-Screenshots/`](./10-Screenshots) | Progress/setup screenshots from the labs |
| [`11-ERD-Diagrams/`](./11-ERD-Diagrams) | ER modeling exercises — Chen-notation ER diagrams and their relational mapping, for four different domains |

## Highlighted Projects

Each BI project below has its own README with technology details and how to open it:

- **[SSIS ETL Pipeline](./06-Lab1-SSIS-ETL-Project)** — extract/transform/load packages moving data between flat files and SQL Server
- **[SSAS OLAP Cube](./07-Lab2-SSAS-Cube-Project)** — multidimensional sales cube with product, customer, salesman, and time dimensions
- **[SSRS Reports](./08-Lab3-SSRS-Reports-Project)** — paginated reports for student, course, and sales analysis

## ER Diagram Design Exercises

Four database design exercises, each showing both the conceptual ER diagram (Chen notation) and its relational mapping:

| Domain | ER Diagram | Relational Mapping |
|---|---|---|
| Music catalog (Musician / Album / Song) | [View](./11-ERD-Diagrams/Musician-Album/er-diagram.png) | [View](./11-ERD-Diagrams/Musician-Album/relational-mapping.png) |
| Real estate (Sales Office / Property / Owner) | [View](./11-ERD-Diagrams/Sales-Office-Property/er-diagram.png) | [View](./11-ERD-Diagrams/Sales-Office-Property/relational-mapping.png) |
| Hospital (Ward / Patient / Nurse / Consultant) | [View](./11-ERD-Diagrams/Hospital-Ward/er-diagram.png) | [View](./11-ERD-Diagrams/Hospital-Ward/relational-mapping.png) |
| Airline operations (Airline / Crew / Route) | — | [View](./11-ERD-Diagrams/Airline/relational-mapping.png) |

## Not Included

The SQL Server `.bak` database backup files (AdventureWorks2012, Company_SD_Full, ITI, sales, etc.) are **excluded** from this repo — they're large (up to ~200MB) binary database dumps, not source material, and unsuitable for Git. If you need to reproduce the labs locally:

1. Restore the relevant `.bak` file in SQL Server Management Studio.
2. Run the scripts in `02-SQL-Scripts/` against that restored database.

IDE-generated files (`.vs/`, `bin/`, `obj/`) were also stripped from the Visual Studio projects — they're local build/cache artifacts, not source.

## About

Built during the ITI Data Analysis bootcamp — covering SQL Server, ETL (SSIS), OLAP cubes (SSAS), reporting (SSRS), and applied statistics.

**Author:** Youssef Mahrous — Business Information Systems student, Benha University, Faculty of Commerce
