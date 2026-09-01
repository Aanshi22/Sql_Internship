-- DATABASE ON LIBRARY MANAGEMENT SYSTEM
CREATE DATABASE LIBRARY;
-- Step 1: Select the database
USE LIBRARY;
-- Step 2: Create Members Table
CREATE TABLE Members(
	member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    join_date DATE
);
-- Step 3: Create BooksIssued Table
CREATE TABLE BooksIssued (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_title VARCHAR(100),
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
-- Step 4. Insert 10 Members
INSERT INTO Members (member_id, name, email, join_date) VALUES
(1, 'Ravi Kumar', 'ravi.k@example.com', '2024-01-15'),
(2, 'Anjali Sharma', 'anjali.s@example.com', '2024-02-10'),
(3, 'Manish Gupta', 'manish.g@example.com', '2024-03-05'),
(4, 'Sanya Jain', 'sanya.j@example.com', '2024-04-12'),
(5, 'Dev Mehra', NULL, '2024-05-01'), -- Missing email
(6, 'Isha Roy', 'isha.r@example.com', '2024-06-01'),
(7, 'Nikhil Joshi', 'nikhil.j@example.com', '2024-06-03'),
(8, 'Pooja Patel', 'pooja.p@example.com', '2024-06-06'),
(9, 'Arjun Reddy', 'arjun.r@example.com', '2024-06-09'),
(10, 'Meena Iyer', 'meena.i@example.com', '2024-06-12');

-- Step 5. Insert 10 Book Issues
INSERT INTO BooksIssued (issue_id, member_id, book_title, issue_date, return_date) VALUES
(101, 1, 'The Alchemist', '2024-06-10', '2024-06-20'),
(102, 2, 'Atomic Habits', '2024-06-12', '2024-06-22'),
(103, 3, 'Sapiens', '2024-06-15', NULL), -- Not yet returned
(104, 4, 'Ikigai', '2024-06-17', NULL),
(105, 5, 'Rich Dad Poor Dad', '2024-06-18', NULL),
(106, 6, 'The Power of Now', '2024-06-19', '2024-06-25'),
(107, 7, 'Think and Grow Rich', '2024-06-20', NULL),
(108, 8, 'Zero to One', '2024-06-21', NULL),
(109, 9, 'Deep Work', '2024-06-22', NULL),
(110, 10, 'Start With Why', '2024-06-23', NULL);

-- Step 6. UPDATE statements
-- Add missing email
UPDATE Members
SET email = 'dev.mehra@example.com'
WHERE member_id = 5;

-- Update return date
UPDATE BooksIssued
SET return_date = '2024-06-26'
WHERE issue_id = 103;

-- Step 7. DELETE statements
-- Remove a book issue entry
DELETE FROM BooksIssued
WHERE issue_id = 110;

-- Remove a member and their issue record
DELETE FROM BooksIssued WHERE member_id = 1;
DELETE FROM Members WHERE member_id = 1;
