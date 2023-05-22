<!DOCTYPE html>
<html>
<head>
<title>Account Information</title>
</head>
<body>
	<h2>Account Information</h2>
	<p>Your email: ${param.email} and password are not registered with
		this application. Would you like to create a new account using this
		email address?</p>
	<form action="Register" method="GET">
		<input type="hidden" name="email" placeholder="${param.email}"
			value="${param.email}"> <input type="submit"
			value="Create Account">
		<button type="button" onclick="location.href='DisplayHomepage';">Back
			to Menu</button>
	</form>
</body>
</html>
