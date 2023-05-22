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
<link rel="stylesheet" href="css/Menu.css">
<title>SushiMartini - Menu</title>
</head>
<body>
	<!-- Navbar -->
	<nav>
		<h1 class="name">SushiMartini Menu</h1>
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
	<!-- featured section. horizontal scrolling. currently outputs every single item in menuList. Needs to be changed so that only special items appear -->
	<div class="container-fluid py-2">
		<br><br><br><br><br>
		<div class="col-lg mx-auto bg-light py-4">
			<div class="d-flex flex-row flex-nowrap overflow-auto bg-light">
				<c:forEach items="${menuList}" var="menuItem">
					<div class="card cardbody m-2">
						<img src="${menuItem.getImagePath()}"
							class="card-img-top card-img" alt="food">
						<div class="card-body">
							<h5 class="card-title">${menuItem.getName()}</h5>
							<form action="AddItem" method="get">
								<input type="hidden" value="${ param.userId }" name="userId">
								<button class="btn btn-primary" name="item_id"
									value="${menuItem.getId()}">Learn More</button>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
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
