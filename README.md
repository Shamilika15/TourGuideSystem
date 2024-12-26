# Tourist Guide System

This is a **Java-based Tourist Management Application** developed using **Java**, **JSP**, **Servlets**, and **MySQL**. The system facilitates managing tourist information, guides, and locations through an admin panel while providing tourists with an intuitive interface to explore locations and guides.

## Features
- Admin Panel:
  - Manage guides, locations, and tourist information.
  - Update and modify system settings through a user-friendly interface.
- Tourist Panel:
  - Browse and search available tourist guides and locations.
  - View detailed descriptions of tourist spots.
- Database Integration:
  - Efficient data management using **MySQL** with prebuilt SQL scripts.
- Secure Login System:
  - Separate login pages for administrators and tourists.
- User-Friendly Design:
  - Intuitive interface for enhanced user experience.

## Technologies Used
- Frontend: HTML, CSS, JavaScript
- Backend: Java (JSP, Servlets)
- Database: MySQL
- Development Environment: Eclipse IDE
- Deployment: Apache Tomcat Server

## How to Run Locally
1. Clone the Repository:
   ```bash
   git clone https://github.com/your-username/tour-guide-system.git

2. Import the Project:
   - Open **Eclipse IDE**.
   - Go to **File** > **Import** > **Existing Projects into Workspace**.
   - Browse to the project directory and import it.

3. Set Up the Database:
   - Install and configure **MySQL** on your system.
   - Create a database by executing the provided SQL script (`tourist_guide_system.sql` or `tbladmin.sql`) in your MySQL client.

4. Configure Database Connection:
   - Open the project in Eclipse.
   - Navigate to the configuration file where database connection settings are specified (e.g., `dbconfig.java` or a `.properties` file).
   - Update the database URL, username, and password to match your MySQL setup.

5. Deploy the Application:
   - Ensure **Apache Tomcat** is installed and configured in Eclipse.
   - Right-click on the project in Eclipse, choose **Run As** > **Run on Server**, and select the Apache Tomcat server.
   - The application will be deployed and accessible at `http://localhost:<port>/TouristGuideSystem`.

6. Access the System:
   - **Admin Panel:** `http://localhost:<port>/TouristGuideSystem/admin`
   - **Tourist Panel:** `http://localhost:<port>/TouristGuideSystem`

## Key Skills Gained
- **Java Development:** Designing and implementing Java-based web applications.
- **Database Management:** Structuring and managing data with MySQL.
- **Web Development:** Building dynamic pages with JSP and Servlets.
- **Server Configuration:** Deploying and testing on Apache Tomcat.
- **User Interface Design:** Creating intuitive and user-friendly designs.

## Conclusion
This project is a comprehensive demonstration of skills in Java-based web development, database integration, and system design. The **Tourist Guide System** aims to simplify the process of exploring tourist spots and managing guide information, making it a valuable tool for both administrators and users.


