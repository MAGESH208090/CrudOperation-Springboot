# CrudOperation-Springboot

# Todo CRUD Application with JSP

This is a simple Todo CRUD (Create, Read, Update, Delete) operations project built using Spring Boot, Spring Data JPA, MySQL, and JSP for the web interface.

## Overview

This application allows users to manage their todo tasks with basic CRUD operations through a web interface. Users can create new tasks, view a list of tasks, update existing tasks, and delete tasks when they are completed.

## Requirements

- Java 21
- Maven 3.2+
- MySQL
- Servlet API (Included with Spring Boot)
- springboot 3.2
- spring 6+ 

## Getting Started
   `
Configure MySQL:

Create a MySQL database named todo_db.

Update the application.properties file with your MySQL username and password:


spring.datasource.url=jdbc:mysql://localhost:3306/todo_db
spring.datasource.username=your_username
spring.datasource.password=your_password
Run the application:

You can run the application using Maven or your preferred IDE.

Using Maven:

mvn spring-boot:run
Access the application:

Once the application is running, you can access it at http://localhost:8080.

Screenshots
[outputimage1](https://github.com/MAGESH208090/CrudOperation-Springboot/assets/88923683/96acd080-2160-4e0f-a314-420306d14645)
[outputimage2](https://github.com/MAGESH208090/CrudOperation-Springboot/assets/88923683/2b0ffc94-038e-4bbe-af0f-d2c96b75cd5c)




Features
Create a Todo:

Fill out the form to add a new task.
View Todo List:

See a list of all tasks with options to update and delete.
Update Todo:

Click the update button to modify an existing task.
Delete Todo:

Remove a task from the list when completed.
Project Structure
The project structure follows the standard Maven project structure for a Spring Boot application:


Copy code
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           └── todo
│   │   │               ├── controller      # Controller classes for handling web requests
│   │   │               ├── entity          # Entity classes (TaskEntity)
│   │   │               ├── repository      # Spring Data JPA repositories (TaskRepository)
│   │   │               ├── service         # Service classes (TaskService)
│   │   │               ├── TodoApplication # Main Spring Boot application class
│   │   └── resources
│   │       ├── static                      # Static resources (CSS, JavaScript, images)
│   │       ├── templates                   # JSP templates for views
│   │       └── application.properties      # Application configuration file
│   └── test                                # Test classes
└── pom.xml                                # Maven project configuration file
Technologies Used
Java
Spring Boot
Spring Data JPA
MySQL
JSP (JavaServer Pages)
Servlet API
Usage
Adding a new task:

Navigate to the "Add Task" page.
Fill out the form with the task name and date.
Click the "Add Task" button to create the task.
Viewing the Todo List:

Go to the homepage to see a list of all tasks.
Each task shows its name, date, and options to update or delete.
Updating a task:

Click the "Update" button next to a task.
Modify the task details in the form.
Click the "Update Task" button to save the changes.
Deleting a task:

To remove a task, click the "Delete" button next to the task.
Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.
