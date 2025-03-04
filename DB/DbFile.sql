create Database scholarship;
show databases;
use scholarship;
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    category ENUM('General', 'OBC', 'SC', 'ST', 'Other') NOT NULL,
    annual_income ENUM('less than 1 lakh', '1 lakh - 3 lakh', '5 lakh - 7 lakh', '7 lakh and above') NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    date_of_birth DATE NOT NULL,
    country VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    phone_no VARCHAR(15) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);


CREATE TABLE ScholarshipData (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    provider VARCHAR(255) NOT NULL,
    category ENUM('School Level', 'College Level', 'Government', 'International', 'For Girls') NOT NULL,
    last_date varchar(50) NULL,  -- Can be NULL if not announced
    amount DECIMAL(10,2) NOT NULL,
    eligibility LONGTEXT NOT NULL,  -- Changed to store large paragraphs
    documents_required LONGTEXT NOT NULL,  -- Changed to store large paragraphs
    official_link VARCHAR(500) NOT NULL
);
