<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script src="http://kit.fontawesome.com/c4254e24a8.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/AboutPage.css">
<title>SushiMartini - About Us</title>
</head>
<body>
	<!-- Navbar -->
	<nav>
		<h1 class="name">SushiMartini</h1>
		<ul class="nav-links">
			<li><a href="DisplayHomepage">Home</a></li>
			<li><a href="AboutPage">About</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="Reviews">Reviews</a></li>
			<li class="register-btn"><a href="Login">Register</a></li>
		</ul>
		<img src="images/menubutton.png" alt="" class="menu-btn">
	</nav>
	<!-- Background image did not show in css but shows in here -->
	<header>
		<style type="text/css">
header {
	width: 100%;
	height: 100vw;
	background-image: url(images/sushimade.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size: 150% 100%;
	display: flex;
	align-items: flex-end;
	justify-content: center;
}
</style>
		<!-- Middle text -->
		<div class="header-content">
			<h2>About Us</h2>
			<div class="nav-line"></div>
			<p>
				Welcome to SushiMartini, your go-to online food ordering platform
				for delicious sushi and martinis!<br>Our mission is to provide
				you with the best dining experience from the comfort of your own
				home. We offer a wide variety of fresh and high-quality sushi, made
				with the finest ingredients and crafted to perfection by our expert
				chefs. At SushiMartini, we are committed to delivering exceptional
				customer service and ensuring that your orders are delivered
				promptly and accurately. We strive to exceed your expectations with
				every order and make your dining experience enjoyable and
				convenient. Thank you for choosing SushiMartini for your sushi and
				martini cravings. We look forward to serving you with the best sushi
				and martinis in town!
			</p>
		</div>
	</header>
	<!-- Footer -->
	<footer>
		<div class="footer-row">
			<div class="footer-col">
				<h4>Get to Know Us</h4>
				<div class="footer-line"></div>
				<ul>
					<li><a href="AboutPage">About Us</a></li>
					<li><a href="Contact">Contact</a></li>
					<li><a href="Reviews">Reviews</a></li>
					<li><a href="#">Career</a></li>
					<li><a href="#">Investor</a></li>
				</ul>
			</div>
			<div class="footer-col">
				<h4>Our Specialities</h4>
				<div class="footer-line"></div>
				<ul>
					<li><a href="SushiMenu">Sushi</a></li>
					<li><a href="SashimiMenu">Sashimi</a></li>
				</ul>
			</div>
			<div class="footer-col">
				<h4>Let Us Help You</h4>
				<div class="footer-line"></div>
				<ul>
					<li><a href="#">Account Details</a></li>
					<li><a href="#">Order History</a></li>
					<li><a href="#">Gift Cards</a></li>
					<li><a href="#">SushiMartini+</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>
		</div>
		<hr>
		<div class="footer-row">
			<div class="footer-col">
				<p>&#169; 2023 SushiMartini All rights reserved.</p>
			</div>
			<div class="socialicons">
				<a href="#"><i class="fa-brands fa-facebook"></i></a> <a href="#"><i
					class="fa-brands fa-twitter"></i></a> <a href="#"><i
					class="fa-brands fa-instagram"></i></a> <a href="#"><i
					class="fa-brands fa-youtube"></i></a>
			</div>
		</div>
	</footer>
	<script>
        const menuBtn = document.querySelector('.menu-btn')
        const navlinks = document.querySelector('.nav-links')
        menuBtn.addEventListener('click', () => {
            navlinks.classList.toggle('mobile-menu')
        })
    </script>
</body>
</html>
