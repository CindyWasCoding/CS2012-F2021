<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SushiMartini - Contact us</title>
<link rel="stylesheet" href="css/Contact.css">
</head>
<div style="text-align: center">
	<h2>Contact Us</h2>
	<p>Swing by for sashimi, or leave us a message:</p>
</div>
<div class="row">
	<div class="column">
		<img src="images/sushilogo.jpg" style="width: 70%">
	</div>
	<div class="column">
		<!--You can replace my email with your own you just need to confirm the first time--------------------------->
		<form id="contactform"
			action="https://formsubmit.io/send/mcnaughtoneb@gmail.com"
			method="POST">
			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.." required> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."> <label
				for="email">Email</label> <input type="text" name="email"
				type="email" id="email" placeholder="Email address" required>
			<p>After submitting this form please tap the back button in your
				browser and then the Back to Homepage button below.</p>
			<textarea name="comment" id="comment" placeholder="Your message.."
				style="height: 170px"></textarea>
			<input name="_formsubmit_id" type="text" style="display: none">
			<input value="Submit" type="submit">
		</form>
		<a href="DisplayHomepage" class="btn btn-primary">Back to Homepage</a>
	</div>
</div>
</body>
</html>
