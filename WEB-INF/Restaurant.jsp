<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SushiMartini - Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel='stylesheet' href='css/Restaurant.css'>
<link rel='stylesheet' href='css/Homepage.css'>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm navbar-light bg-light navbar1">
		<div class="container-fluid">
			<img src="images/sushilogo.jpg" alt="Sushi Martini Logo">
			<h1 id="top">SushiMartini</h1>
			<div class="collapse navbar-collapse" id="navbarNav"></div>
		</div>
	</nav>
	<!-- Current Orders -->
	<div class="container">
		<div class="orders">
			<c:forEach items='${orderList }' var='order'>
				<p style="font-size: 1.5em;">
					Customer Name: <b>${ order.getUserName() }</b>
				</p>
				<p style="font-size: 1.5em;">
					Customer ID: <b>${ order.getUserId() }</b>
				</p>
				<c:forEach items='${order.getItems() }' var='item'>
					<div class="item d-flex w-100">
						<img class="itemImage" src="${ item.item.getImagePath() }">
						<div>
							<span style="font-size: 1.5em; font-weight: bold;">${ item.item.getName() }</span>
							<p>Quantity: ${ item.getQty() }</p>
						</div>
					</div>
				</c:forEach>
				<form action="Restaurant" method="post">
					<input type="hidden" name="orderId" value="${ order.getOrderId() }">
					<button class="btn btn-success" type="submit">Done</button>
				</form>
			</c:forEach>
		</div>
	</div>
</body>
</html>
