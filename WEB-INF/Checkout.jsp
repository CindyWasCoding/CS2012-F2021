<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sushimartini - Checkout</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel='stylesheet' href='css/Checkout.css'>
</head>
<body>
	<!-- Order Summary Form -->
	<div class="container">
		<div class="wrapper">
			<div class="summary">
				<h4>Order Summary</h4>
				<p>Subtotal: $${order.getTotal()}</p>
				<p>Tax: $${order.getTax()}</p>
				<p>
					<b>Total: $${order.getGrandTotal()}</b>
				</p>
			</div>
			<div class="paymentMethod">
				<button class="method btn btn-success" disabled>Visa/Master
					Card</button>
				<small style="margin-bottom: 10px;"><i style="color: red;">Online
						payment unavailable</i></small>
				<form class="method" action="Confirm" method="get">
					<button class="method btn btn-success">Pay at store</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
