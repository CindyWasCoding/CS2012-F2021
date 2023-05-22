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
<link rel="stylesheet" href="css/Homepage.css">
<title>SushiMartini - Sashimi Menu</title>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm navbar-light bg-light navbar1">
		<div class="container-fluid">
			<img src="images/sushilogo.jpg" alt="Sushi Martini Logo">
			<h1 id="top">SushiMartini</h1>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav auto-align-left" id="navcontent">
					<li class="nav-item"><a class="nav-link" href="SushiMenu">Sushi</a></li>
					<li class="nav-item"><a class="nav-link" href="SashimiMenu">Sashimi</a></li>
				</ul>
			</div>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto auto-align-center" id="navcontent">
					<li class="nav-item"><a class="nav-link"
						href="DisplayHomepage">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="AboutPage">About</a></li>
					<li class="nav-item"><a class="nav-link" href="Contact">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="Reviews">Reviews</a></li>
					<li class="nav-item"><a class="nav-link btn" href="Login">Order
							Now</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- List of sashimi -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md">
				<h1>
					<center>Sashimi</center>
				</h1>
				<div class="row">
					<c:forEach items="${menuList}" var="menuItem">
						<c:if test="${menuItem.getFoodType() == 'sashimi'}">
							<div class="col-lg-3">
								<div class="card mb-4 shadow-sm">

									<div class="card">
										<img src="${menuItem.getImagePath()}"
											class="card-img-top card-img" alt="food">
										<div class="card-body">
											<h5 class="card-title">${menuItem.getName()}</h5>
											<p class="card-text">${menuItem.getDescription()}</p>
											<p class="card-text">${menuItem.getPrice()}</p>
											<form action="DisplayItem" method="get">
												<button class="btn btn-primary" name="item_id"
													value="${menuItem.getId()}">Learn More</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
