# University Help Desk Management System

## Overview

The University Help Desk Management System is a dynamic Java web application to streamline and enhance the efficiency of the university's help desk operations. This system provides a centralized platform for students to raise tickets, seek assistance, and receive timely responses from lecturers.

## Features

### Ticket Management
- **Add Ticket:** Students can create new tickets to request help or report issues.
- **Update Ticket:** Users have the ability to modify and update their existing tickets.
- **Delete Ticket:** Students can remove tickets that are no longer relevant.

### User Management
- **User Registration:** New users can register by providing necessary information.
- **User Login:** Registered users can securely log in to access the system.
- **Password Reset:** Users can reset their passwords in case they forget them.
- **Profile Management:** Users can view and update their profiles as needed.
- **Account Deletion:** Users have the option to delete their accounts if desired.

### Feedback System
- **Feedback Submission:** Students can provide feedback on the service they received through the help desk.
- **Feedback Viewing:** Administrators can access and review feedback for continuous improvement.

## Technologies Used

The University Help Desk Management System leverages the following technologies:

- **Java:** The core programming language used for server-side development.
- **Servlets:** Java Servlets are employed to handle HTTP requests and responses.
- **JSP (JavaServer Pages):** Used for dynamic web page creation and rendering.
- **HTML/CSS:** Front-end development is crafted using HTML for structure and CSS for styling.
- **MySQL:** The system utilizes a MySQL database for efficient data storage and retrieval.
- **JDBC (Java Database Connectivity):** JDBC is employed to connect Java applications with the database.
- **Apache Tomcat:** The web application is deployed and run on the Apache Tomcat server.
- **Bootstrap:** The front-end design is enhanced using Bootstrap for a responsive and visually appealing interface.

## How to Run the Application

1. **Prerequisites:**
   - Install Java Development Kit (JDK).
   - Set up Apache Tomcat server.
   - Configure MySQL database.

2. **Database Setup:**
   - Execute the SQL scripts provided in the 'database' folder to create the necessary tables.

3. **Configuration:**
   - Update the database connection details in the `db.properties` file.

4. **Deploy Application:**
   - Deploy the WAR file on the Apache Tomcat server.

5. **Access the Application:**
   - Open a web browser and navigate to `http://localhost:8080/UniversityHelpDesk`.

6. **Login Credentials:**
   - Use the provided sample login credentials or register a new account.

