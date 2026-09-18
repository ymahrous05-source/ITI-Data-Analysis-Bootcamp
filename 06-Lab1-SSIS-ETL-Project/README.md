# Lab 1 — SSIS ETL Project

A SQL Server Integration Services (SSIS) project (`Lab_SSIS/`) containing ETL packages that read from flat files and text sources, transform the data, and load it into SQL Server tables — plus a set of standalone packages exploring specific ETL patterns.

## What's inside

- **`Lab_SSIS/`** — the main Visual Studio SSIS project (`.dtproj`)
- **`Package2_StudentToText.dtsx`**, **`Package4_StudentToTest.dtsx`** — extracting student data to text output
- **`Package5_Protected.dtsx`** — a package demonstrating SSIS package protection/encryption levels
- **`New Package.dtsx`**, **`Package3.dtsx`** — additional transformation exercises
- **`File1.txt` / `File2.txt` / `File3.txt`**, **`Merged_Merge.txt`**, **`Merged_Union.txt`** — sample inputs/outputs for Merge and Union All transformations
- **`Course_Less20.txt`** — output of a conditional split/filter task
- **`ETL_Integration_Services_Project.rar`** — the original archived submission

## How to open

Requires **SQL Server Data Tools (SSDT)** for Visual Studio. Open `Lab_SSIS/Lab_SSIS.slnx` (or the `.dtproj` inside it), then run the individual packages from the SSIS designer.
