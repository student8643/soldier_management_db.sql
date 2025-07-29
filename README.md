# soldier_management_db.sql
A simple SQL-based Soldier Management Database project using MySQL. It includes tables for Units, Soldiers, Leave Records, and Posting History, along with sample data for testing.
# Soldier Management System – SQL Project

This is a structured database project built using **MySQL**. It is designed to manage data related to soldiers, their assigned units, leave records, and posting history. The project demonstrates the use of core DBMS concepts such as relationships, foreign keys, normalization, and data integrity.

---

## 🧠 Project Overview

The database consists of four interlinked tables:

- **Unit** – Stores information about military units  
- **Soldier** – Stores details of soldiers (name, DOB, gender, contact, etc.)  
- **LeaveRecord** – Keeps track of leave requests, reasons, and status  
- **PostingHistory** – Records historical postings of soldiers in different units

This schema is ideal for learning and practicing SQL concepts for students and beginners.

---

## ⚙️ Technologies Used

- MySQL 8.x or higher  
- SQL script (.sql file)  
- Compatible with XAMPP, MySQL Workbench, or phpMyAdmin

---

## 🗃️ Database Schema

### 📁 Unit
| Column       | Type         | Description                  |
|--------------|--------------|------------------------------|
| unit_id      | INT (PK)     | Auto-incremented ID          |
| unit_name    | VARCHAR(100) | Name of the military unit    |
| location     | VARCHAR(100) | Unit’s physical location     |

### 👤 Soldier
| Column         | Type         | Description                           |
|----------------|--------------|---------------------------------------|
| soldier_id     | INT (PK)     | Auto-incremented ID                   |
| first_name     | VARCHAR(50)  | Soldier's first name                  |
| last_name      | VARCHAR(50)  | Soldier's last name                   |
| date_of_birth  | DATE         | DOB                                   |
| gender         | VARCHAR(10)  | Gender                                |
| contact_number | VARCHAR(15)  | Contact phone                         |
| address        | TEXT         | Full address                          |
| unit_id        | INT (FK)     | Reference to Unit                     |

### 📝 LeaveRecord
| Column      | Type         | Description                        |
|-------------|--------------|------------------------------------|
| leave_id    | INT (PK)     | Unique ID for leave record         |
| soldier_id  | INT (FK)     | Linked soldier                     |
| start_date  | DATE         | Start of leave                     |
| end_date    | DATE         | End of leave                       |
| reason      | TEXT         | Reason for leave                   |
| status      | VARCHAR(20)  | Status: Approved, Pending, etc.    |

### 📜 PostingHistory
| Column      | Type         | Description                        |
|-------------|--------------|------------------------------------|
| posting_id  | INT (PK)     | Auto-incremented ID                |
| soldier_id  | INT (FK)     | Linked soldier                     |
| unit_id     | INT (FK)     | Unit assigned                      |
| start_date  | DATE         | Posting start                      |
| end_date    | DATE / NULL  | Posting end or ongoing             |

---

## 📊 ER Diagram

Below is the Entity-Relationship Diagram representing the database schema. It visualizes how tables are related using primary and foreign keys.

📎 **[Click here to view ER Diagram](./er_diagram.png)**  
> _Make sure to upload your ER diagram image with the name `er_diagram.png` in the same repository._

---

## 🧪 Sample Data

The script includes sample entries like:

- 3 Units (e.g., 26 Cavalry, Artillery Regiment, Medical Corps)  
- 3 Soldiers with basic details  
- Leave and posting records for testing

---

## 🚀 How to Run

1. Open MySQL Workbench / phpMyAdmin / CLI  
2. Paste the contents of `soldier_management_db.sql`  
3. Execute the script to create tables and insert sample data  
4. Run queries to view, insert, update or delete data as needed

---

## 🧑‍🎓 Created By

**Kashif**  
BSCS – 3rd Semester  
Government College University, Faisalabad  
GitHub: [# Soldier Management System – SQL Project

This is a structured database project built using **MySQL**. It is designed to manage data related to soldiers, their assigned units, leave records, and posting history. The project demonstrates the use of core DBMS concepts such as relationships, foreign keys, normalization, and data integrity.

---

## 🧠 Project Overview

The database consists of four interlinked tables:

- **Unit** – Stores information about military units  
- **Soldier** – Stores details of soldiers (name, DOB, gender, contact, etc.)  
- **LeaveRecord** – Keeps track of leave requests, reasons, and status  
- **PostingHistory** – Records historical postings of soldiers in different units

This schema is ideal for learning and practicing SQL concepts for students and beginners.

---

## ⚙️ Technologies Used

- MySQL 8.x or higher  
- SQL script (.sql file)  
- Compatible with XAMPP, MySQL Workbench, or phpMyAdmin

---

## 🗃️ Database Schema

### 📁 Unit
| Column       | Type         | Description                  |
|--------------|--------------|------------------------------|
| unit_id      | INT (PK)     | Auto-incremented ID          |
| unit_name    | VARCHAR(100) | Name of the military unit    |
| location     | VARCHAR(100) | Unit’s physical location     |

### 👤 Soldier
| Column         | Type         | Description                           |
|----------------|--------------|---------------------------------------|
| soldier_id     | INT (PK)     | Auto-incremented ID                   |
| first_name     | VARCHAR(50)  | Soldier's first name                  |
| last_name      | VARCHAR(50)  | Soldier's last name                   |
| date_of_birth  | DATE         | DOB                                   |
| gender         | VARCHAR(10)  | Gender                                |
| contact_number | VARCHAR(15)  | Contact phone                         |
| address        | TEXT         | Full address                          |
| unit_id        | INT (FK)     | Reference to Unit                     |

### 📝 LeaveRecord
| Column      | Type         | Description                        |
|-------------|--------------|------------------------------------|
| leave_id    | INT (PK)     | Unique ID for leave record         |
| soldier_id  | INT (FK)     | Linked soldier                     |
| start_date  | DATE         | Start of leave                     |
| end_date    | DATE         | End of leave                       |
| reason      | TEXT         | Reason for leave                   |
| status      | VARCHAR(20)  | Status: Approved, Pending, etc.    |

### 📜 PostingHistory
| Column      | Type         | Description                        |
|-------------|--------------|------------------------------------|
| posting_id  | INT (PK)     | Auto-incremented ID                |
| soldier_id  | INT (FK)     | Linked soldier                     |
| unit_id     | INT (FK)     | Unit assigned                      |
| start_date  | DATE         | Posting start                      |
| end_date    | DATE / NULL  | Posting end or ongoing             |

---

## 📊 ER Diagram

Below is the Entity-Relationship Diagram representing the database schema. It visualizes how tables are related using primary and foreign keys.

📎 **[Click here to view ER Diagram](./er_diagram.png)**  
> _Make sure to upload your ER diagram image with the name `er_diagram.png` in the same repository._

---

## 🧪 Sample Data

The script includes sample entries like:

- 3 Units (e.g., 26 Cavalry, Artillery Regiment, Medical Corps)  
- 3 Soldiers with basic details  
- Leave and posting records for testing

---

## 🚀 How to Run

1. Open MySQL Workbench / phpMyAdmin / CLI  
2. Paste the contents of `soldier_management_db.sql`  
3. Execute the script to create tables and insert sample data  
4. Run queries to view, insert, update or delete data as needed

---

## 🧑‍🎓 Created By

**Kashif**  
BSCS – 3rd Semester  
Government College University, Faisalabad  
GitHub: [https://github.com/student8643]

---

## 📌 License

This project is for academic and learning purposes only.
]

---

## 📌 License

This project is for academic and learning purposes only.
