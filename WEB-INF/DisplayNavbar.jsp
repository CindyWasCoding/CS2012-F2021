<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SushiMartini</title>
    
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #e6f7ff; /* Light blue */
        }

        .navbar-brand {
            color: #0066cc; /* Medium blue */
            font-size: 2em;
            font-weight: bold;
            font-family: 'Playfair Display', serif;
            transition: color 0.3s ease-in-out;
        }

        .navbar-brand:hover {
            color: #0047b3; /* Dark blue */
        }

        .navbar-nav .nav-link {
            color: #0066cc; /* Medium blue */
            transition: color 0.3s ease-in-out;
        }

        .navbar-nav .nav-link:hover {
            color: #0047b3; /* Dark blue */
        }

        .container h5 {
            border-bottom: 2px solid #0066cc; /* Medium blue */
            padding-bottom: 10px;
            font-family: 'Playfair Display', serif;
        }

        footer {
            background: linear-gradient(90deg, #0066cc 0%, #0047b3 100%); /* Medium to Dark blue gradient */
            color: white;
            box-shadow: 0px -5px 15px rgba(0,0,0,0.1);
        }

        footer a {
            color: white;
            transition: color 0.3s ease-in-out;
        }

        footer a:hover {
            color: #ddd;
        }

        footer p {
            font-size: 0.8em;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-light bg-light shadow-sm">
        <a class="navbar-brand" href="#">SushiMartini</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Order Online</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Content -->
    <div class="container mt-5">
        <!-- Add your content here -->
    </div>


