# SQL_Joins_Inner-Left-Right-Full-_05
# JOIN operations using a E-commerce dataset 

This project demonstrates the use of various SQL JOIN operations (`INNER`, `LEFT`, `RIGHT`, and `FULL OUTER`) using a simple yet realistic **Customer-Order** relationship within an E-commerce domain.

The project includes:
- SQL scripts for JOIN queries
- A relational schema (ER Diagram)
- Query outputs as CSVs
- A `.mwb` file to visualize/edit in MySQL Workbench

---

## Project Structure
| File Name                                   | Description                                                                 |
|--------------------------------------------|-----------------------------------------------------------------------------|
| `CUSTOMER_AND_ORDER.sql`                   | SQL script to create and populate `CustomerLite` and `OrderLite` tables    |
| `Customer_and_order_for_SQL_JOIN_OPERTION.mwb` | MySQL Workbench model file with relationships                            |
| `ER_Diagram_customer_and_order.png`        | ER diagram of the database structure                                        |
| `ER Diagram.png`                           | Additional exported ER diagram                                               |
| `Result_inner_join.csv`                    | Output of INNER JOIN query                                                  |
| `Result_left_join.csv`                     | Output of LEFT JOIN query                                                   |
| `Result_right_join.csv`                    | Output of RIGHT JOIN query                                                  |
| `Result_FULL_OUTER_JOIN_(Simulated).csv`   | Output of FULL OUTER JOIN (simulated using UNION)                          |
| `README.md`                                | This project documentation                                                  |
| `LICENSE`                                  | Open-source license for reuse and distribution                             |

---

---

## SQL JOINs Covered

### INNER JOIN
Returns records that have matching values in both tables.

### LEFT JOIN
Returns all records from the left table (Customer), and the matched records from the right table (Order).

### RIGHT JOIN
Returns all records from the right table (Order), and the matched records from the left table (Customer).

### FULL OUTER JOIN (Simulated)
Returns all records when there is a match in either table using `UNION` of `LEFT JOIN` and `RIGHT JOIN`.

---

## Learning Outcomes

- Understand the structure of relational data
- Write effective SQL JOIN queries
- Interpret real-world E-commerce data
- Use ER diagrams for modeling relationships
- Analyze join results in `.csv` format

---

## Tools Used

- **MySQL Workbench** – For schema design and SQL execution
- **DB Fiddle / SQLiteStudio** – For quick testing
- **GitHub** – For version control and collaboration

---
