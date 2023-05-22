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
<link rel="stylesheet" href="css/Homepage.css">
<title>SushiMartini</title>
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
	background-image: url(images/sushi.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size: 150% 100%;
	display: flex;
	align-items: flex-end;
	justify-content: center;
}
</style>
		<div class="header-content">
			<h2>Eat Healthy</h2>
			<div class="nav-line"></div>
			<h1>Eat Sushi</h1>
		</div>
	</header>
	<!-- featured section. horizontal scrolling. currently outputs every single item in menuList.  -->
	<section>
		<div class="title">
			<h1>FEATURED</h1>
			<div class="section-line"></div>
		</div>
		<div class="container-fluid py-2">
			<div class="col-lg mx-auto bg-light py-4">
				<div class="d-flex flex-row flex-nowrap overflow-auto bg-light">
					<c:forEach items="${menuList}" var="menuItem">
						<c:if test="${menuItem.getFeatured()}">
							<!-- if featured item, outputs item cards -->
							<div class="card cardbody m-2">
								<img src="${menuItem.getImagePath()}"
									class="card-img-top card-img" alt="food">
								<div class="card-body">
									<h5 class="card-title">${menuItem.getName()}</h5>
									<form action="DisplayItem" method="get">
										<button class="btn btn-primary" name="item_id"
											value="${menuItem.getId()}">Learn More</button>
									</form>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="title">
			<h1>MORE</h1>
			<div class="section-line"></div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<h1>Sushi</h1>
					<div class="row">
						<c:set var="counter" value="0" />
						<c:forEach items="${menuList}" var="menuItem">
							<!-- outputs sushi items as long as less than 8 have been outputted. -->
							<c:if test="${menuItem.getFoodType() == 'sushi'}">
								<div class="col-md-4">
									<div class="card mb-4 shadow-sm">
										<c:if test="${counter < 8}">

											<div class="card-body">
												<h5 class="card-title">${menuItem.getName()}</h5>
												<p class="card-text">${menuItem.getDescription()}</p>
												<p class="card-text">${menuItem.getPrice()}</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<form action="DisplayItem" method="get">
														<button class="btn btn-primary" name="item_id"
															value="${menuItem.getId()}">Learn More</button>
													</form>
												</div>
											</div>
										</c:if>
										<c:if test="${counter == 8}">
											<!-- If counter = 8, outputs "see more" card and no other card outputs -->
											<div class="card-body">
												<h2 class="card-title">Sushi Menu</h2>
												<p class="card-text">Check out our entire sushi/nigiri
													menu</p>
												<p class="card-text">starting at 6.99</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<a href="SushiMenu" class="btn btn-primary">Learn More</a>
													<!-- path does not exist yet -->
												</div>
											</div>
										</c:if>
									</div>
								</div>
								<c:set var="counter" value="${counter+1}" />
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-6">
					<!-- outputs sashimi items on the right side of the page. Same exact thing as the sushi items -->
					<h1>Sashimi</h1>
					<div class="row">
						<c:set var="counter" value="0" />
						<c:forEach items="${menuList}" var="menuItem">
							<c:if test="${menuItem.getFoodType() == 'sashimi'}">
								<div class="col-md-4">
									<div class="card mb-4 shadow-sm">
										<c:if test="${counter < 8}">
											<div class="card-body">
												<h5 class="card-title">${menuItem.getName()}</h5>
												<p class="card-text">${menuItem.getDescription()}</p>
												<p class="card-text">${menuItem.getPrice()}</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<form action="DisplayItem" method="get">
														<button class="btn btn-primary" name="item_id"
															value="${menuItem.getId()}">Learn More</button>
													</form>
												</div>
											</div>
										</c:if>
										<c:if test="${counter == 8}">
											<div class="card-body">
												<h2 class="card-title">Sashimi Menu</h2>
												<p class="card-text">Check out our entire sashimi menu</p>
												<p class="card-text">starting at 16.99</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<a href="SashimiMenu" class="btn btn-primary">Learn
														More</a>
												</div>
											</div>
										</c:if>
									</div>
								</div>
								<c:set var="counter" value="${counter+1}" />
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
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
