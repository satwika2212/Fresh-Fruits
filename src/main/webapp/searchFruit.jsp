<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fresh Fruits Store</title>

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar-brand i {
            margin-right: 10px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            font-weight: 600;
        }

        .btn-primary {
            background-color: #4CAF50;
            border-color: #4CAF50;
        }

        .btn-primary:hover {
            background-color: #45a049;
            border-color: #45a049;
        }

        .table thead th {
            background-color: #eafaf1;
            color: #2e7d32;
        }

        .footer {
            background-color: #ffffff;
            padding: 20px 0;
            text-align: center;
            border-top: 1px solid #e0e0e0;
            margin-top: 60px;
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
            
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="customer.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="customerfruits">Menu</a></li>
                <li class="nav-item"><a class="nav-link active" href="searchFruit.jsp">Search</a></li>
                <li class="nav-item"><a class="nav-link" href="findByEmail">View Profile</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Search Form -->
<div class="container mt-5">
    <div class="row justify-content-center mb-4">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header bg-success text-white">
                    <h4 class="mb-0"><i class="fas fa-search me-2"></i>Search for a Fruit</h4>
                </div>
                <div class="card-body">
                    <form action="searchFruit" method="get">
                        <% if (request.getAttribute("status") != null) { %>
                            <div class="alert alert-info text-center">
                                <%= request.getAttribute("status") %>
                            </div>
                        <% } %>
                        <div class="mb-3">
                            <label for="name" class="form-label">Fruit Name</label>
                            <input type="text" name="name" id="name" class="form-control" required placeholder="Enter fruit name...">
                        </div>
                        <div class="text-end">
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-search"></i> Search
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Search Result -->
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Fruit Details</h5>
                </div>
                <div class="card-body p-4">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped text-center">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Description</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${fruit.name}</td>
                                    <td>${fruit.price}</td>
                                    <td>${fruit.desc}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <p class="mb-0">&copy; 2025 Fresh Fruits Store. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
