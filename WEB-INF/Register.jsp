<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sushimartini - Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel='stylesheet' href='css/Login.css'>
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
	<!-- Login Form -->
	<!-- the white background that contains the whole form  -->
	<div class="container">
		<!-- wraps the app name, form, and hyperlink -->
		<div class="wrapper">
			<span class="appName">SushiMartini</span> <span class="mt-n3"
				style="font-size: 12px;">Register</span>
			<!-- login form with 'post' method that sends data to doPost in Register.java file. -->
			<form class="loginForm" action='Register' method='post'>
				<input id="name" name='name' type="text" placeholder="Name">
				<input id="email" name='email' type="email"
					placeholder="Example@gmail.com" value="${param.email}"> <input
					id="password" name='password' type="password"
					placeholder="Password">
				<button class="signin bg-info" type="submit">Sign up</button>
			</form>
			<!-- a hyper link to Login page -->
			<span style="font-size: 10px;">Already have an acccount? <a
				href="Login">Login</a></span>
		</div>
	</div>
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
