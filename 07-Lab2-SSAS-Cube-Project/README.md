# Lab 2 — SSAS OLAP Cube Project

A SQL Server Analysis Services (SSAS) multidimensional project (`Sales_SSAS_Lab/`) built for MDX querying practice — dimensions, a data source view, and multiple cubes over sales data.

## What's inside

- **Dimensions**: `Product Dim`, `Customer Dim`, `Channel Dim`, `Salesman Dim`, `Time Dim`
- **Cubes**: `Sales Cube`, `Product Cube`, `Prod_Cust Cube` — each with its own `.partitions` file
- **`Sales.dsv`** — the Data Source View joining the underlying SQL Server tables
- **`Sales.ds`** — the data source connection definition
- **`localhost_MULTIDIM Sales_SSAS_Lab Sales Cube.odc`** — an Office Data Connection file for querying the cube from Excel

## How to open

Requires **SQL Server Data Tools (SSDT)** with the Analysis Services extension. Open `Sales_SSAS_Lab.slnx`, deploy the project to an SSAS instance, then browse the cubes or query them with MDX.
