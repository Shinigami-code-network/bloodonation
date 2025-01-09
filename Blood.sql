-- Create the database
CREATE DATABASE blood_donation_system;

-- Use the created database
USE blood_donation_system;

-- Table to store blood bank information
CREATE TABLE blood_banks (
    bank_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    contact_number VARCHAR(15) NOT NULL
);

-- Table to store blood type requests
CREATE TABLE blood_requests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    requester_name VARCHAR(100) NOT NULL,
    blood_type ENUM('A', 'B', 'AB', 'O') NOT NULL,
    city VARCHAR(50) NOT NULL,
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store donation drives
CREATE TABLE donation_drives (
    drive_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store donors' information (optional)
CREATE TABLE donors (
    donor_id INT AUTO_INCREMENT PRIMARY KEY,
    donor_name VARCHAR(100) NOT NULL,
    blood_type ENUM('A', 'B', 'AB', 'O') NOT NULL,
    city VARCHAR(50) NOT NULL,
    donation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
