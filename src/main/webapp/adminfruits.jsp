<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Fruits</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }
        .section-title {
            margin-top: 30px;
            margin-bottom: 30px;
            text-align: center;
            font-weight: bold;
            color: #4CAF50;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }
        .btn-danger:hover {
            background-color: #c82333;
            border-color: #bd2130;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-light shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">
        <i class="fas fa-store text-success"></i><span class="fw-bold text-success">Fresh Fruits</span> Store</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="admin.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="viewfruits">Fruits</a></li>
                <li class="nav-item"><a class="nav-link" href="fruitregister.jsp">Add Fruit</a></li>
                <li class="nav-item"><a class="nav-link" href="viewcustomers">Customers</a></li>
                <li class="nav-item"><a class="nav-link" href="searchCustomer.jsp">Search🔍</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="section-title">View Fruits 🍊</h2>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <table border='1' class="table table-bordered">
                        <tr>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Description</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        <c:forEach items="${fruitList}" var="fruit">
                            <tr>
                                <td>${fruit.name}</td>
                                <td>${fruit.price}</td>
                                <td>${fruit.desc}</td>
                                <td>
                                    <a class="btn btn-sm btn-warning" href='editfruit.jsp?name=${fruit.name}&price=${fruit.price}&desc=${fruit.desc}'>Edit</a>
                                </td>
                                <td>
                                    <a class="btn btn-sm btn-danger" href='deletefruit?name=${fruit.name}'>Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
