# 🍉 Fresh Fruits - Web Application

A Java-based web application to manage fruit listings and user data. Built using JSP, Servlets, and DAO patterns with Eclipse IDE and a relational database backend.

---

## 📁 Project Structure

```
Fresh-Fruits-main/
├── .settings/               # Eclipse project settings
├── build/                   # Compiled classes
├── src/                     # Source files
│   └── main/java/
│       ├── com/controller/  # Servlets (Controllers)
│       ├── com/dao/         # Data Access Objects
│       └── com/model/       # JavaBeans (Models)
│   └── main/webapp/         # JSP files and frontend resources
└── .classpath, .project     # Eclipse metadata
```


## 🚀 Features

- 👨‍🌾 Admin and Customer portals
- 🍎 CRUD operations for fruits and users
- 🔍 Search and filter fruits/users
- 👤 Profile view and authentication
- 🧹 Session management and logout


## 🛠️ Technologies Used

- Java 8+
- Servlets & JSP
- JDBC (DAO pattern)
- MySQL or compatible RDBMS
- Apache Tomcat
- Eclipse IDE (Dynamic Web Project)


## ▶️ Running the Project

### 1. Clone or Download

```bash
git clone https://github.com/your-username/Fresh-Fruits.git
cd Fresh-Fruits
```

### 2. Import into Eclipse

- Open Eclipse
- Go to **File > Import > Existing Projects into Workspace**
- Select the root directory of this project
- Finish the import

### 3. Configure Database

Create a MySQL database and update credentials in:
```
src/main/java/com/dao/ConnectionManager.java
```

```java
private static final String URL = "jdbc:mysql://localhost:3306/your_database";
private static final String USER = "your_username";
private static final String PASSWORD = "your_password";
```

### 4. Deploy to Tomcat

- Right-click on project > Run As > Run on Server
- Choose Apache Tomcat
- Access via `http://localhost:8080/Fresh-Fruits-main/`

## 🗄️ Database Queries

1. First create a databse called "FreshFruits" and Switch to it

```
CREATE DATABASE FRESHFRUITS;

USE FRESHFRUITS;
```
2. Create Tables based on the POJO classes

```
CREATE TABLE Customer (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    mobile VARCHAR(15),
    age INT,
    gender VARCHAR(10),
    address VARCHAR(255),
    password VARCHAR(100)
);

CREATE TABLE Fruit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price INT,
    desc TEXT,
    url VARCHAR(255)
);

```
## 🧪 Sample JSPs

- `admin.jsp`: Admin dashboard
- `viewfruit.jsp`: Displays available fruits
- `login.jsp`: User login portal


## 📦 Useful Endpoints

| Servlet / URL                 | Description                  |
|-------------------------------|------------------------------|
| `/LoginServlet`               | Authenticates user           |
| `/SaveFruit`                  | Adds new fruit record        |
| `/DeleteFruit`                | Removes fruit by ID          |
| `/searchFruit`                | Finds fruit by keyword       |
| `/Editcustomer`               | Updates customer details     |
| `/LogoutServlet`              | Ends user session            |




## 🤝 Contributing

Feel free to fork and submit PRs for bug fixes or enhancements. Contributions are welcome!


## 📄 Author
**Satwika. P**  
Java Full-Stack Developer | Passionate about Web Development and Clean UI Design  
📧 palavalasasatwika@gmail.com  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/satwika-palavalasa-a1b320223/)
