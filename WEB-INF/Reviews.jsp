<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
	type="text/javascript"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>SushiMartini - Reviews</title>
<link rel="stylesheet" href="css/Reviews.css" />
<link rel="shortcut icon" href="images/fav-icon.png" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous" type="text/javascript"></script>
</head>
<body>
	<!--Testimonials------------------->
	<section id="testimonials">
		<!--heading--->
		<div class="testimonial-heading">
			<span>Comments</span>
			<h1>Customers Say</h1>
		</div>
		<!--testimonials-box-container------>
		<div class="testimonial-box-container">
			<!--BOX-1-------------->
			<div class="testimonial-box">
				<!--top------------------------->
				<div class="box-top">
					<!--profile----->
					<div class="profile">
						<!--name-and-username-->
						<div class="name-user">
							<strong>Harry Potter</strong>
						</div>
					</div>
					<!--reviews------>
					<div class="reviews">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
						<!--Empty star-->
					</div>
				</div>
				<!--Comments---------------------------------------->
				<div class="client-comment">
					<p>This sushi is so good!! I love the atmosphere of the place,
						the waiters and waitresses are very nice and sweet. I always get
						this sushi when going to the mall. They are truly the best when it
						comes to places to eat at the mall. If I eat somewhere here like
						Lucille's barbecue I aways take a sushi roll to go after this
						place is awesome to dine in though too !!</p>
				</div>
			</div>
			<!--BOX-2-end of boxes-------------->
			<c:forEach items="${reviews}" var="review">
				<c:if test="${review.rating == '1/5'}">
					<div class="testimonial-box">
						<!--top------------------------->
						<div class="box-top">
							<!--profile----->
							<div class="profile">
								<div class="name-user">
									<strong>${review.name}</strong>
								</div>
							</div>
							<!--reviews------>
							<div class="reviews">
								<i class="fas fa-star"></i> <i class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
							</div>
						</div>
						<!--Comments---------------------------------------->
						<div class="client-comment">
							<p>${review.description}</p>
						</div>
					</div>
				</c:if>
				<c:if test="${review.rating == '2/5'}">
					<div class="testimonial-box">
						<!--top------------------------->
						<div class="box-top">
							<!--profile----->
							<div class="profile">
								<!--name-and-username-->
								<div class="name-user">
									<strong>${review.name}</strong>
								</div>
							</div>
							<!--reviews------>
							<div class="reviews">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
							</div>
						</div>
						<!--Comments---------------------------------------->
						<div class="client-comment">
							<p>${review.description}</p>
						</div>
					</div>
				</c:if>
				<c:if test="${review.rating == '3/5'}">
					<div class="testimonial-box">
						<!--top------------------------->
						<div class="box-top">
							<!--profile----->
							<div class="profile">
								<!--name-and-username-->
								<div class="name-user">
									<strong>${review.name}</strong>
								</div>
							</div>
							<!--reviews------>
							<div class="reviews">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="far fa-star"></i>
								<!--Empty star-->
								<i class="far fa-star"></i>
								<!--Empty star-->
							</div>
						</div>
						<!--Comments---------------------------------------->
						<div class="client-comment">
							<p>${review.description}</p>
						</div>
					</div>
				</c:if>
				<c:if test="${review.rating == '4/5'}">
					<div class="testimonial-box">
						<!--top------------------------->
						<div class="box-top">
							<!--profile----->
							<div class="profile">
								<div class="name-user">
									<strong>${review.name}</strong>
								</div>
							</div>
							<!--reviews------>
							<div class="reviews">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="far fa-star"></i>
								<!--Empty star-->
							</div>
						</div>
						<!--Comments---------------------------------------->
						<div class="client-comment">
							<p>${review.description}</p>
						</div>
					</div>
				</c:if>
				<c:if test="${review.rating == '5/5'}">
					<div class="testimonial-box">
						<!--top------------------------->
						<div class="box-top">
							<!--profile----->
							<div class="profile">
								<div class="name-user">
									<strong>${review.name}</strong>
								</div>
							</div>
							<!--reviews------>
							<div class="reviews">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i>
							</div>
						</div>
						<!--Comments---------------------------------------->
						<div class="client-comment">
							<p>${review.description}</p>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
		<a href="AddReview" class="btn btn-primary">Leave a Review</a>
		<div class="testimonial-heading">
			<a href="DisplayHomepage" class="btn btn-primary">Back to
				Homepage</a>
		</div>
	</section>
</body>
</html>
