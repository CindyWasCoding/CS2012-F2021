<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Footer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: #d6eaf8;
            color: #333;
            font-family: 'Montserrat', sans-serif;
        }
        
        .simple-footer {
            background: #85c1e9;
            color: #fff;
            padding: 30px 0;
            text-align: center;
        }

        .footer-title {
            font-weight: bold;
            border-bottom: 2px solid white;
            padding-bottom: 10px;
        }

        .footer-links a,
        .footer-address,
        .footer-socials a {
            color: white;
            transition: color 0.3s ease-in-out;
            text-decoration: none;
        }

        .footer-links a:hover,
        .footer-socials a:hover {
            color: #ccc;
        }

        .footer-divider {
            border-top-color: #ddd;
            margin: 30px 0;
        }

        .footer-address {
            font-size: 14px;
            line-height: 1.5;
            margin-top: 20px;
        }

        .footer-address strong {
            font-weight: bold;
        }

        .footer-copyright {
            color: #ddd;
            font-size: 14px;
            margin-top: 30px;
            letter-spacing: 1px;
        }

    </style>
</head>
<body>
    <footer class="simple-footer">
        <div class="container">
            <h4 class="footer-title">Sushi Martini</h4>
            <ul class="list-unstyled mt-4 footer-links">
                <li><a href="#">Home</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">Menu</a></li>
                <li><a href="#">Reviews</a></li>
            </ul>
            <hr class="footer-divider">
            <address class="mt-4 footer-address">
                Address: 8153 Aspen Ave,Rancho Cucamonga, CA 91730<br>
                Phone: 909-948-7555<br>
                Email: sushimartini@gmail.com
            </address>
            <hr class="footer-divider">
            <p>&copy; 2023 SushiMartini. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
