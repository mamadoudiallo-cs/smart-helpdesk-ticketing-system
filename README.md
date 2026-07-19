
# Smart HelpDesk Ticketing System

## Project Overview

This project is a SQL-based Smart Helpdesk Ticketing System inspired by enterprise service management platforms like ServiceNow. It is designed to demonstrate software engineering concepts, including relational database design, SQL development, data integrity, and structured ticket management workflows.

The goal of this project is to learn:

- Relational database design
- SQL schema creation
- Primary and foreign key relationships
- Database normalization
- Lookup tables vs. transactional tables
- Backend system architecture

## Technologies Used
- SQL
- MySQL
- Visual Studio Code
- Git
- GitHub

## System Context
This project is designed as a Smart Helpdesk Ticketing System that can be adapted for organizations such as businesses, universities, healthcare providers, or government agencies. It allows users to create, assign, prioritize, track, and resolve support tickets through a structured workflow.
The current implementation uses a college helpdesk environment as the initial case study, demonstrating software engineering and database design principles applicable across many industries.

## User Roles
- Student: can log in to create tickets and to view their own ticket status.
- Faculty/Staff: can create tickets and view their own ticket status just like the students.
- IT Technician: can log in to view assigned tickets, update ticket status, and add comments.
- IT Admin: Can manage users, categories, assignments, and reporting.

## User Actions
- User logs in to securely access the system based on their role. 
- User creates and submits tickets for a specific issue.
- User selects a category and subcategory.
- User describes the issue by giving a specific description of the problem they are facing.
- The IT technician views the ticket submitted by the users.
- IT technician comments on the ticket by creating a history of why they closed the ticket, while troubleshooting, waiting for a user response, when escalating, and resolving.
- IT technician changes the status of the ticket from open, in progress, pending, resolved, and closed.
- The IT Technician assigns or reassigns the ticket based on the level or the type of issue they are facing.
- User check on the current status of the ticket, like technician comments, assignment information, and resolution details.

## Current Database Tables
- users
- categories
- subcategories
- tickets

## Database Concepts Learned
- Primary keys
- Foreign keys
- AUTO-INCREMENT
- NOT NULL constraints
- UNIQUE constraints
- Parent-child relationships
- Lookup tables
- Transaction tables
- Relational database design
- Database normalization (reducing data redundancy)

## Future Features
- Ticket comments
- Priorities
- Assignment groups
- SLA Tracking
- Status history
- Attachments
- Reporting dashboard

