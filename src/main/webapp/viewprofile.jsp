<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Customer" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Profile - Fresh Fruits Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap & Google Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #e8f5e9, #ffffff);
            padding-bottom: 50px;
        }

        .navbar-brand span {
            color: #43a047;
        }

        .card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-title {
            font-size: 28px;
            color: #2e7d32;
            font-weight: bold;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            color: #2e7d32;
        }

        input.form-control,
        textarea.form-control {
            border-radius: 12px;
            background-color: #f1f8e9;
            border: 1px solid #c8e6c9;
        }

        .form-check-input:disabled:checked {
            background-color: #66bb6a;
            border-color: #66bb6a;
        }

        .form-check-label {
            margin-left: 5px;
        }

        .section-title {
            margin-top: 40px;
            margin-bottom: 20px;
            font-size: 32px;
            color: #388e3c;
            font-weight: 700;
        }

        .profile-container {
            background: #ffffff;
            border-radius: 25px;
            padding: 30px;
        }
    </style>
</head>
<body>

<%
    Customer customer = (Customer) request.getAttribute("customer");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
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
                <li class="nav-item"><a class="nav-link" href="customerfruits">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="searchFruit.jsp">Search</a></li>
                <li class="nav-item"><a class="nav-link active fw-semibold" href="findByEmail">View Profile</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Profile Section -->
<div class="container mt-5">
    <h2 class="text-center section-title">Customer Profile</h2>
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card p-5">
                <div class="card-body">
                    <% if (customer != null) { %>
                    <form>
                        <div class="mb-4">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" value="<%= customer.getName() %>" readonly />
                        </div>

                        <div class="mb-4">
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" value="<%= customer.getEmail() %>" readonly />
                        </div>

                        <div class="mb-4">
                            <label for="age" class="form-label">Age</label>
                            <input type="text" class="form-control" id="age" value="<%= customer.getAge() %>" readonly />
                        </div>

                        <div class="mb-4">
                            <label class="form-label">Gender</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="male" value="male" <%= "male".equals(customer.getGender()) ? "checked" : "" %> disabled />
                                <label class="form-check-label" for="male">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="female" value="female" <%= "female".equals(customer.getGender()) ? "checked" : "" %> disabled />
                                <label class="form-check-label" for="female">Female</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="others" value="others" <%= "others".equals(customer.getGender()) ? "checked" : "" %> disabled />
                                <label class="form-check-label" for="others">Others</label>
                            </div>
                        </div>

                        <div class="mb-4">
                            <label for="mobile" class="form-label">Mobile Number</label>
                            <input type="text" class="form-control" id="mobile" value="<%= customer.getMobile() %>" readonly />
                        </div>

                        <div class="mb-4">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" rows="3" readonly><%= customer.getAddress() %></textarea>
                        </div>
                    </form>
                    <% } else { %>
                        <h5 class="text-center text-danger">Customer details not found.</h5>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS (for navbar toggle) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
