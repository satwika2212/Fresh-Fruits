<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-left:-20%;
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
        .section-title {
            padding-bottom: 10%;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#"><span class="fw-bold text-success">Fresh Fruits</span> Store</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="admin.jsp">Home</a></li>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="viewfruits">Fruits</a>
                    </li>
                      <li class="nav-item active">
                        <a class="nav-link active" href="fruitregister.jsp">Add Fruit</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="search.jsp">Customers</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="section-title text-center fw-bold text-success">Edit Fruit  🍊</h2>
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card" style="margin-top: -80px;">
                
                    <div class="card-body">
                        <form action="editcustomer" method="get">
                     <% if (request.getAttribute("status") != null) { %>
                                <h5 class="text-center text-danger"><%= request.getAttribute("status") %></h5>
                            <% } %>   
                     
                            <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= request.getParameter("name") %>" required />
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="<%= request.getParameter("email") %>" required readonly />
                        <small class="form-text text-muted">Email cannot be changed.</small>
                    </div>

                    <div class="mb-3">
                        <label for="age" class="form-label">Enter Age</label>
                        <input type="text" class="form-control" id="age" name="age" value="<%= request.getParameter("age") %>" required />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Gender</label>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" id="male" value="male" <%= "male".equals(request.getParameter("gender")) ? "checked" : "" %> required />
                            <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" id="female" value="female" <%= "female".equals(request.getParameter("gender")) ? "checked" : "" %> required />
                            <label class="form-check-label" for="female">Female</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" id="others" value="others" <%= "others".equals(request.getParameter("gender")) ? "checked" : "" %> required />
                            <label class="form-check-label" for="others">Others</label>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="mobile" class="form-label">Mobile</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" pattern="[0-9]{10}" value="<%= request.getParameter("mobile") %>" required />
                    </div>

                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <textarea class="form-control" id="address" name="address" rows="3" required><%= request.getParameter("address") %></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Update User</button>
                
                            </form>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
