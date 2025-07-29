-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS soldier_management;
USE soldier_management;

-- Step 2: Drop Existing Tables (to avoid errors)
DROP TABLE IF EXISTS LeaveRecord;
DROP TABLE IF EXISTS PostingHistory;
DROP TABLE IF EXISTS Soldier;
DROP TABLE IF EXISTS Unit;

-- Step 3: Create Unit Table
CREATE TABLE Unit (
    unit_id INT AUTO_INCREMENT PRIMARY KEY,
    unit_name VARCHAR(100),
    location VARCHAR(100)
);

-- Step 4: Create Soldier Table (without rank)
CREATE TABLE Soldier (
    soldier_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(15),
    address TEXT,
    unit_id INT,
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) ON DELETE SET NULL
);

-- Step 5: Create Leave Table
CREATE TABLE LeaveRecord (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    soldier_id INT,
    start_date DATE,
    end_date DATE,
    reason TEXT,
    status VARCHAR(20),
    FOREIGN KEY (soldier_id) REFERENCES Soldier(soldier_id) ON DELETE CASCADE
);

-- Step 6: Create PostingHistory Table
CREATE TABLE PostingHistory (
    posting_id INT AUTO_INCREMENT PRIMARY KEY,
    soldier_id INT,
    unit_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (soldier_id) REFERENCES Soldier(soldier_id) ON DELETE CASCADE,
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id) ON DELETE SET NULL
);

-- Step 7: Insert Sample Data into Unit
INSERT INTO Unit (unit_name, location) VALUES
('26 Cavalry', 'Gujranwala'),
('Artillery Regiment', 'Lahore'),
('Medical Corps', 'Rawalpindi');

-- Step 8: Insert Sample Data into Soldier
INSERT INTO Soldier (first_name, last_name, date_of_birth, gender, contact_number, address, unit_id) VALUES
('Ali', 'Khan', '1995-06-15', 'Male', '03001234567', 'Lahore Cantt', 1),
('Zara', 'Ahmed', '1993-08-22', 'Female', '03112345678', 'Peshawar', 2),
('Usman', 'Iqbal', '1990-01-10', 'Male', '03223456789', 'Quetta', 3);

-- Step 9: Insert Sample Data into LeaveRecord
INSERT INTO LeaveRecord (soldier_id, start_date, end_date, reason, status) VALUES
(1, '2025-05-01', '2025-05-10', 'Family Emergency', 'Approved'),
(2, '2025-06-01', '2025-06-15', 'Medical', 'Pending');

-- Step 10: Insert Sample Data into PostingHistory
INSERT INTO PostingHistory (soldier_id, unit_id, start_date, end_date) VALUES
(1, 1, '2023-01-01', '2024-01-01'),
(1, 2, '2024-01-02', NULL),
(2, 2, '2022-05-01', NULL);
