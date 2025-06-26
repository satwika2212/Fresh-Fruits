<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fresh Fruits Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .navbar-brand i {
            margin-right: 10px;
        }

        
        .section-title {
            margin-bottom: 50px;
        }
        .card {
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: #4CAF50;
            border-color: #4CAF50;
        }
        .btn-primary:hover {
            background-color: #45a049;
            border-color: #45a049;
        }
        .btn-secondary {
            background-color: #f0ad4e;
            border-color: #f0ad4e;
        }
        .btn-secondary:hover {
            background-color: #eb9316;
            border-color: #eb9316;
        }
        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-success:hover {
            background-color: #218838;
            border-color: #218838;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }

        #fruit-details {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            z-index: 1000;
            overflow-y: auto;
        }

        #fruit-details .modal-content {
            background-color: #fff;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            max-width: 600px;
            position: relative;
        }

        #fruit-details .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            cursor: pointer;
            color: #888;
        }

        #fruit-details img {
            width: 100%;
            max-height: 300px;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .home-text {
            margin-top: 10%;
            text-align: center;
        }

        .home-image {
            width: 80%;
            height: auto;
            border-radius: 30px;
            margin-left: 10%;
            margin-top: 10%;
        }
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

<li class="nav-item"><a class="nav-link active" href="admin.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewfruits">Fruits</a></li>
                <li class="nav-item"><a class="nav-link" href="fruitregister.jsp">Add Fruit</a></li>
                <li class="nav-item"><a class="nav-link" href="viewcustomers">Customers</a></li>
                <li class="nav-item"><a class="nav-link" href="searchCustomer.jsp">Search🔍</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                    
                    
                </ul>
            </div>
        </div>
    </nav>

    <header id="home" class="bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-center text-lg-start home-text">
                    <h3 class="display-4 fw-bold">Admin Portal</h3>
                        <h1 class="display-4 fw-bold text-success">Welcome to Our Fresh Fruits Store</h1>
                        <p class="lead text-muted">Your one-stop shop for the freshest and highest quality fruits.</p>
                        <a href="viewfruits" class="btn btn-primary btn-lg">Explore Fruits List</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img src="./images/admin.jpg" alt="Fresh Fruits" class="img-fluid  home-image">
                </div>
            </div>
        </div>
    </header>

    
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Fresh Fruits Store. All rights reserved.</p>
        </div>
    </footer>

   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
    