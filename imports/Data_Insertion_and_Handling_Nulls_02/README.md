# Data_Insertion_and_Handling_Nulls_02
SQL schema and DML for a sample library database

# Library Database Project (MySQL)
## Objective
This project demonstrates the creation of a simple relational database schema for a **Library Management System**, using **MySQL**. It includes:

- Defining tables with relationships
- Data insertion
- Data manipulation (UPDATE, DELETE)
- Use of `PRIMARY KEY`, `FOREIGN KEY`, and constraints
- Demonstrates clean and consistent data management

---

##  Tools Used
- MySQL Workbench
- DB Fiddle (for quick testing)
- GitHub for version control

---

##  Contents

| File Name                  | Description                                 |
|----------------------------|---------------------------------------------|
| `library_schema.sql`       | SQL file to create tables & insert data     |
| `README.md`                | This file                                   |
| `diagram.png`              | ER Diagram for visualization                |

---

##  Database Tables

### 1. `Members`
Stores information about library members.

| Column      | Type         | Description                    |
|-------------|--------------|--------------------------------|
| member_id   | INT (PK)     | Unique ID for each member      |
| name        | VARCHAR(100) | Member's name                  |
| email       | VARCHAR(100) | Member's email (can be NULL)   |
| join_date   | DATE         | Date the member joined         |

### 2. `BooksIssued`
Tracks which books are issued to which members.

| Column      | Type         | Description                    |
|-------------|--------------|--------------------------------|
| issue_id    | INT (PK)     | Unique ID for each issue       |
| member_id   | INT (FK)     | References `Members.member_id` |
| book_title  | VARCHAR(100) | Title of the issued book       |
| issue_date  | DATE         | When the book was issued       |
| return_date | DATE         | When the book was returned     |

---
### ER Diagram
![ER Diagram]

## SQL Operations

### Table Creation
- Uses `CREATE TABLE` with appropriate constraints

### Insert Data
- 10 entries for each table
- Demonstrates use of `NULL`

### Update Operations
sql
`UPDATE Members SET email = 'updated@example.com' WHERE member_id = 5;`
`UPDATE BooksIssued SET return_date = '2024-06-28' WHERE issue_id = 105;`
### Delete operations 
sql 
`DELETE FROM Members WHERE member_id = 10;`
`DELETE FROM BooksIssued WHERE issue_id = 110;`
