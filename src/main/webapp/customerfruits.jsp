<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Fruits</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #ffffff);
            color: #333;
        }

        .navbar-brand span {
            color: #4CAF50;
        }

        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            color: #388e3c;
            margin-top: 40px;
            margin-bottom: 30px;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        .table {
            border-radius: 15px;
            overflow: hidden;
        }

        .table th {
            background-color: #a5d6a7;
            color: #2e7d32;
            font-weight: 600;
        }

        .table td {
            background-color: #f9fbe7;
            vertical-align: middle;
        }

        .table-hover tbody tr:hover {
            background-color: #e8f5e9;
            transition: background-color 0.3s ease;
        }

        .emoji {
            font-size: 1.5rem;
        }

        .nav-link.active {
            font-weight: 600;
            color: #2e7d32 !important;
        }

        .nav-link:hover {
            color: #388e3c !important;
        }

        @media (max-width: 768px) {
            .section-title {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-light shadow-sm">
    <div class="container">
        
        <a class="navbar-brand" href="#">
                <i class="fas fa-store text-success"></i> <span class="fw-bold text-success">Fresh Fruits</span> Store
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="customer.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="customerfruits">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="searchFruit.jsp">Search</a></li>
                <li class="nav-item"><a class="nav-link" href="findByEmail">View Profile</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content -->
<div class="container mt-5 mb-5">
    <h2 class="text-center section-title">View Fruits <span class="emoji">🍇🍉🍍</span></h2>
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card p-4">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover align-middle">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Price (₹)</th>
                                    <th>Description</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${fruitList}" var="fruit">
                                    <tr>
                                        <td>${fruit.name}</td>
                                        <td>${fruit.price}</td>
                                        <td>${fruit.desc}</td>
                                    </tr>
                                </c:forEach>
                                <c:if test="${empty fruitList}">
                                    <tr>
                                        <td colspan="3" class="text-center text-muted">No fruits available right now 🍌</td>
                                    </tr>
                                </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
