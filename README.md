# ETL Pipeline with Microsoft SSIS

This project demonstrates how to create an ETL (Extract, Transform, Load) pipeline using Microsoft SQL Server Integration Services (SSIS). The pipeline addresses four different data integration problems using SSIS.

## Table of Contents

1. [Introduction](#introduction)
2. [Problem 1: Consuming a REST API](#problem-1-consuming-a-rest-api)
    - [Problem Statement](#problem-statement)
    - [Solution](#solution)
    - [Step-by-Step Implementation](#step-by-step-implementation)
    - [Prerequisites](#prerequisites)
3. [Problem 2: Implementing SCD Type 4 with Incremental Load](#problem-2-implementing-scd-type-4-with-incremental-load)
    - [Solution](#solution-1)
    - [Step-by-Step Implementation](#step-by-step-implementation-1)
4. [Problem 3: Title of Problem 3](#problem-3-title-of-problem-3)
    - [Solution](#solution-2)
    - [Step-by-Step Implementation](#step-by-step-implementation-2)
5. [Problem 4: Title of Problem 4](#problem-4-title-of-problem-4)
    - [Solution](#solution-3)
    - [Step-by-Step Implementation](#step-by-step-implementation-3)
6. [Conclusion](#conclusion)

---

## Introduction

This project demonstrates various ETL tasks using Microsoft SSIS. Each problem focuses on a different aspect of data integration, utilizing SSIS to solve these tasks efficiently.

---

## Problem 1: Consuming a REST API

### Problem Statement

Consume any REST API and load the response to the database. For this example, we use a REST API that searches for universities. We create a database table named `University` with three columns: `name`, `country`, and `alpha_two_code`, and load those fields only.

### Solution

Use a Script Task in SSIS with a C# script to consume the REST API, extract the necessary fields, and load the data into the SQL Server database.

### Step-by-Step Implementation

1. **Create a new SSIS package.**
2. **Add a Script Task to the Control Flow.**
3. **Configure the Script Task to consume the REST API and load data into the `University` table.**

### Prerequisites

- SQL Server installed and configured.
- SQL Server Integration Services (SSIS) installed.
- Access to a REST API (for the example, we use `http://universities.hipolabs.com/search`).

---

## Problem 2: Implementing SCD Type 4 with Incremental Load

### Solution

Implement SCD Type 4 for the `Employee_Q2` source table, handling fields City and Email, and use incremental load.

### Step-by-Step Implementation

1. **Create Target Tables:**
   - **Employee_Latest:**
     - ID
     - Name
     - City
     - Email
     - ValidFrom (datetime)
     - ValidTo (datetime, initially NULL)
   - **Employee_History:**
     - ID
     - Name
     - City
     - Email
     - ValidFrom (datetime)
     - ValidTo (datetime)

2. **SSIS Package Overview:**
   - Use OLE DB Source, Lookup Transformation, Conditional Split, Derived Column, and OLE DB Command to manage the flow and updates to the target tables.

### Prerequisites

- SQL Server with Integration Services (SSIS) installed.
- Access to the `Employee_Q2` source table.
- Access to create tables `Employee_Latest` and `Employee_History`.
- Knowledge of SQL and SSIS package development.

---

## Problem 3: Title of Problem 3

### Solution

...

### Step-by-Step Implementation

...

### Prerequisites

...

---

## Problem 4: Title of Problem 4

### Solution

...

### Step-by-Step Implementation

...

### Prerequisites

...

---

## Conclusion

This project demonstrates the versatility of SSIS in handling various data integration challenges. Each problem showcases a different aspect of SSIS functionality, from consuming APIs to transforming data and loading it into a database.

---

Feel free to adapt and expand each section according to your specific project details and requirements.
