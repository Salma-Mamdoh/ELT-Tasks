# ETL Pipeline with Microsoft SSIS

This project demonstrates how to create an ETL (Extract, Transform, Load) pipeline using Microsoft SQL Server Integration Services (SSIS). The pipeline addresses four different data integration problems using SSIS.

## Table of Contents

1. [Introduction](#introduction)
2. [Problem 1: Consuming a REST API](#problem-1-consuming-a-rest-api)
    - [Problem Statement](#problem-statement)
    - [Solution](#solution)
    - [Step-by-Step Implementation](#step-by-step-implementation)
        - [Set Up SSIS Package](#set-up-ssis-package)
        - [C# Code Explanation](#c-code-explanation)
    - [Prerequisites](#prerequisites)
3. [Problem 2: Title of Problem 2](#problem-2-title-of-problem-2)
4. [Problem 3: Title of Problem 3](#problem-3-title-of-problem-3)
5. [Problem 4: Title of Problem 4](#problem-4-title-of-problem-4)
6. [Conclusion](#conclusion)

---

## Introduction

This project demonstrates various ETL tasks using Microsoft SSIS. Each problem focuses on a different aspect of data integration, utilizing SSIS to solve these tasks efficiently.

---

## Problem 1: Consuming a REST API

### Problem Statement

Consume any REST API and load the response to the database. You don’t have to load all the response fields; 3 or 4 is sufficient. For this example, we use a REST API that searches for universities. We create a database table named `University` with three columns: `name`, `country`, and `alpha_two_code`, and load those fields only.

### Solution

To solve this problem, we use a Script Task in SSIS and write a C# script to consume the REST API, extract the necessary fields, and load the data into the SQL Server database.

### Step-by-Step Implementation

#### Set Up SSIS Package

1. **Create a new SSIS package:**
   - Open SQL Server Data Tools (SSDT) or SQL Server Management Studio (SSMS).
   - Create a new Integration Services Project.
   - Right-click on the "SSIS Packages" folder and select "New SSIS Package".

2. **Add a Script Task to the Control Flow:**
   - Drag and drop a "Script Task" from the SSIS Toolbox onto the Control Flow design surface.

3. **Configure the Script Task:**
   - Double-click on the Script Task to open the Script Task Editor.
   - In the Script Task Editor, click on "Edit Script".

#### C# Code Explanation

The script starts by setting up namespaces and defining the `College` class, which maps to the structure of the JSON response from the API. It then configures security protocols for web requests and makes a request to the API URL `http://universities.hipolabs.com/search`. The JSON response is deserialized into a list of `College` objects. For each `College` object, the script connects to the SQL Server database and inserts the data into the `University` table. If an error occurs, it logs the error to a file.

### Prerequisites

Before running the SSIS package, ensure you have the following:

- SQL Server installed and configured.
- SQL Server Integration Services (SSIS) installed.
- Access to a REST API (for the example, we use `http://universities.hipolabs.com/search`).

---

## Problem 2: Title of Problem 2

### Problem Statement

...

### Solution

...

### Step-by-Step Implementation

...

### Prerequisites

...

---

## Problem 3: Title of Problem 3

### Problem Statement

...

### Solution

...

### Step-by-Step Implementation

...

### Prerequisites

...

---

## Problem 4: Title of Problem 4

### Problem Statement

...

### Solution

...

### Step-by-Step Implementation

...

### Prerequisites

...

---

## Conclusion

In conclusion, this project demonstrates the versatility of SSIS in handling various data integration challenges. Each problem showcases a different aspect of SSIS functionality, from consuming APIs to transforming data and loading it into a database.

---

Feel free to adapt and expand each section according to your specific project details and requirements.
