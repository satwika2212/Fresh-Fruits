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
                        <form action="editfruit" method="get">
                            <% if (request.getAttribute("status") != null) { %>
                                <h5 class="text-center text-danger"><%= request.getAttribute("status") %></h5>
                            <% } %>
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" value="<%= request.getParameter("name") %>" required readonly>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">price</label>
                                <input type="number" class="form-control" name="price"  value="<%= request.getParameter("price") %>"  required>
                            </div>
                           
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <input type="text" class="form-control" name="desc" value="<%= request.getParameter("desc") %>" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">URL</label>
                                <input type="text" class="form-control" name="url" value="<%= request.getParameter("url") %>" required>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Sumbit</button>
                        </form>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
