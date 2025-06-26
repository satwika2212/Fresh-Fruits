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
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
  
                    <li class="nav-item">
                        <a class="nav-link active" href="contact.jsp">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    

    <section id="contact" class="bg-light py-5">
    <div class="container">
        <h2 class="section-title text-center fw-bold text-success">Contact Us</h2>
        <div class="row justify-content-center">
        
         <!-- Image Column -->
            <div class="col-lg-6 d-flex justify-content-center align-items-center">
                <img src="./images/addfruit.jpeg" alt="Contact Us" class="img-fluid rounded" style="max-width: 80%;">
            </div>
            
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <form action="contactus">
                            <div class="mb-3">
                                <label for="name" class="form-label">Your Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter your name">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Your Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email">
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Your Message</label>
                                <textarea class="form-control" id="message" rows="4" placeholder="Enter your message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>

           
        </div>
    </div>
</section>
    

    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Fresh Fruits Store. All rights reserved.</p>
        </div>
    </footer>

    <div id="fruit-details">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <h2 id="fruit-name"></h2>
            <img id="fruit-image" src="" alt="">
            <p id="fruit-description"></p>
            <p>Price: $<span id="fruit-price"></span></p>
            <button id="add-to-cart" class="btn btn-success">Add to Cart</button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const fruits = [
            { id: 1, name: 'Apple', price: 1.00, description: 'A crisp and sweet fruit, perfect for snacking.', image: 'images/apple.jpg' },
            { id: 2, name: 'Banana', price: 0.75, description: 'A creamy and delicious fruit, rich in potassium.', image: 'images/banana.jpg' },
            { id: 3, name: 'Orange', price: 1.20, description: 'A juicy and refreshing fruit, packed with vitamin C.', image: 'images/orange.jpg' },
            { id: 4, name: 'Grapes', price: 2.50, description: 'A cluster of small, sweet, and juicy fruits.', image: 'images/grapes.jpg' },
            { id: 5, name: 'Watermelon', price: 3.00, description: 'A large, sweet, and hydrating fruit, perfect for summer.', image: 'images/watermelon.jpg' },
            { id: 6, name: 'Strawberry', price: 2.00, description: 'A small, red, and juicy fruit with a sweet flavor.', image: 'images/strawberry.jpg' },
            { id: 7, name: 'Mango', price: 2.75, description: 'A tropical fruit with a rich, sweet, and tangy flavor.', image: 'images/mango.jpg' },
            { id: 8, name: 'Pineapple', price: 3.25, description: 'A tropical fruit with a sweet and tangy flavor and a tough, spiky exterior.', image: 'images/pineapple.jpg' }
        ];

        const fruitsGrid = document.getElementById('fruits-grid');
        const fruitDetailsModal = document.getElementById('fruit-details');
        const fruitNameElement = document.getElementById('fruit-name');
        const fruitImageElement = document.getElementById('fruit-image');
        const fruitDescriptionElement = document.getElementById('fruit-description');
        const fruitPriceElement = document.getElementById('fruit-price');
        const addToCartButton = document.getElementById('add-to-cart');
        const closeModalButton = document.querySelector('.close-button');

        function displayFruits() {
            fruitsGrid.innerHTML = '';
            fruits.forEach(fruit => {
                const card = document.createElement('div');
                card.className = 'col-lg-4 col-md-6';
                card.innerHTML = `
                    <div class="card h-100">
                        <img src="${fruit.image}" class="card-img-top" alt="${fruit.name}">
                        <div class="card-body">
                            <h5 class="card-title">${fruit.name}</h5>
                            <p class="card-text">${fruit.description}</p>
                            <p class="card-text fw-bold">Price: $${fruit.price}</p>
                            <button class="btn btn-primary w-100 view-details-button" data-fruit-id="${fruit.id}">View Details</button>
                        </div>
                    </div>
                `;
                fruitsGrid.appendChild(card);
            });
        }

        function showFruitDetails(fruitId) {
            const fruit = fruits.find(f => f.id === fruitId);
            if (fruit) {
                fruitNameElement.textContent = fruit.name;
                fruitImageElement.src = fruit.image;
                fruitDescriptionElement.textContent = fruit.description;
                fruitPriceElement.textContent = fruit.price;
                fruitDetailsModal.style.display = 'block';
                addToCartButton.onclick = function() {
                    alert(`Added ${fruit.name} to cart!`);
                    fruitDetailsModal.style.display = 'none';
                };
            }
        }

        fruitsGrid.addEventListener('click', (event) => {
            if (event.target.classList.contains('view-details-button')) {
                const fruitId = parseInt(event.target.dataset.fruitId);
                showFruitDetails(fruitId);
            }
        });

        closeModalButton.addEventListener('click', () => {
            fruitDetailsModal.style.display = 'none';
        });

        window.addEventListener('click', (event) => {
            if (event.target === fruitDetailsModal) {
                fruitDetailsModal.style.display = 'none';
            }
        });

        displayFruits();
    </script>
</body>
</html>
    