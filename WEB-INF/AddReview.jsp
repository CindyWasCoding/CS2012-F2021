<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>SushiMartini - Write a Review</title>
<link rel="stylesheet" href="css/AddReview.css" />
<link rel="shortcut icon" href="images/fav-icon.png" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<h2>SushiMartini - Write a review</h2>
	<form action="AddReview" method="post">
		<div class="testimonial-box">
			<select name='rating'>
				<option value='1/5'>1/5</option>
				<option value='2/5'>2/5</option>
				<option value='3/5'>3/5</option>
				<option value='4/5'>4/5</option>
				<option value='5/5'>5/5</option>
			</select>Select your rating<br> <br>
			<p>
				<input type="text" name="name" placeholder="Name" />
			</p>
			<br>
			<p>
				<textarea name="description" id="comment"
					placeholder="Tell us what you thought" style="height: 200px"></textarea>
			</p>
			<br>
			<button class="signin bg-info" type="submit">Post Review</button>
		</div>
	</form>
</body>
</html>
