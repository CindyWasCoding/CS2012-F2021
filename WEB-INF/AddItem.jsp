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
<link rel="stylesheet" href="css/AddItem.css">
<title>SushiMartini - Add ${menuItem.getName()} now!</title>
</head>
<body>
	<!-- Navbar -->
	<nav>
		<h1 class="name">SushiMartini</h1>
		<ul class="nav-links">
			<li><a href="Menu">Menu</a></li>
			<li><a href="AboutPage">About</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="Reviews">Reviews</a></li>
			<li class="register-btn"><a
				onclick="document.location='ShoppingCart?userId=${param.userId}'">Shopping
					Cart</a></li>
		</ul>
		<img src="images/menubutton.png" alt="" class="menu-btn">
	</nav>
	<br><br><br><br><br><br>

	<!-- outputs all attributes from selected menu item -->
	<div class="row">
		<div class="col-md-4">
			<img src="${menuItem.getImagePath()}" class="img-fluid"
				alt="Menu Item Image">
		</div>
		<div class="col-md-8">
			<h1>${menuItem.getName()}</h1>
			<p>${menuItem.getDescription()}</p>
			<p>${menuItem.getPrice()}</p>
			<p>${menuItem.getFoodType()}</p>
			<!-- pass user input and item's id to UpdateQty -->
			<form action='UpdateQty' method='post'>
				<!-- get input from user, and ensure user can only enter positive numbers -->
				<input type='hidden' name='userId' value="${ param.userId }">
				<input type="number" name="qty" min="1" max="9" step="1"
					oninput="validity.valid||(value=''); checkInput()"> <input
					type='hidden' name='id' value="${ menuItem.getId() }">
				<div class="d-flex justify-content-between align-items-center">
					<button type='submit' class="btn btn-secondary"
						id="add-to-cart-btn" disabled>Add to cart</button>
				</div>
			</form>
		</div>
	</div>
	<br><br>
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
	function checkInput() {
		var inputField = document.getElementsByName("qty")[0];
		var addButton = document.getElementById("add-to-cart-btn");
		if (inputField.value === "") {
			addButton.disabled = true;
		} else {
			addButton.disabled = false;
		}
	}
	 const menuBtn = document.querySelector('.menu-btn')
     const navlinks = document.querySelector('.nav-links')
     menuBtn.addEventListener('click', () => {
         navlinks.classList.toggle('mobile-menu')
     })
</script>
</body>
</html>
