<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Fruit - Fresh Fruits Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #4CAF50;
            border-color: #4CAF50;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: #45a049;
            border-color: #45a049;
        }

        .navbar-brand i {
            margin-right: 10px;
        }

        .section-title {
            margin-bottom: 50px;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }
        .home-image {
            width: 120%;
            height: 80%;
            border-radius: 30px;
            margin-left: -6%;
            margin-right:30%;
            padding-right:0%;
            margin-top: 7%;
    </style>
</head>
<body>

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
                    <li class="nav-item"><a class="nav-link" href="admin.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewfruits">Fruits</a></li>
                <li class="nav-item"><a class="nav-link active" href="fruitregister.jsp">Add Fruit</a></li>
                <li class="nav-item"><a class="nav-link" href="viewcustomers">Customers</a></li>
                <li class="nav-item"><a class="nav-link" href="searchCustomer.jsp">Search🔍</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="section-title text-center fw-bold text-success">Add New Fruit 🍓</h2>
        <div class="row justify-content-center">
        <div class="col-lg-4">
         <img src="./images/addfruit.jpeg" alt="Fresh Fruits" class="img-fluid  home-image"></div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <% if (request.getAttribute("status") != null) { %>
                            <div class="alert alert-info text-center">
                                <%= request.getAttribute("status") %>
                            </div>
                        <% } %>
                        <form action="savefruit" method="get">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Price</label>
                                <input type="number" class="form-control" name="price" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <input type="text" class="form-control" name="description" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Image URL</label>
                                <input type="text" class="form-control" name="imgurl" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Fresh Fruits Store. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
