<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SushiMartini - Shopping Cart</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel='stylesheet' href='css/ShoppingCart.css'>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm navbar-light bg-light navbar1">
		<div class="container-fluid">
			<h1 id="top">SushiMartini</h1>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto auto-align-center" id="navcontent">
					<li class="nav-item"><a class="nav-link"
						href="DisplayHomepage">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="Menu">Menu</a></li>
					<li class="nav-item"><a class="nav-link" href="AboutPage">About</a></li>
					<li class="nav-item"><a class="nav-link" href="DisplayContact">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="Reviews">Reviews</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Shopping cart list -->
	<div class='wrapper'>
		<!--display selected items in this div-->
		<div class='list'>
			<c:forEach items='${ selectedList }' var='selectedItem'>
				<div class="my-3">
					<div class="d-flex w-100">
						<img class="itemImg mr-3"
							src="${ selectedItem.item.getImagePath() }">
						<div>
							<h5 class="mb-1">${ selectedItem.item.getName() }</h5>
							<small>Unit price: $${ selectedItem.item.getPrice() }</small> <br>
							<small style="text-align: right">Qty: ${ selectedItem.getQty() }</small>
							<form action="DeleteItem" method='post'>
								<button type='submit' style='border-radius: 5px;'
									class='btn-info'>Delete</button>
								<input type='hidden' name='id'
									value='${ selectedItem.item.getId() }'>
							</form>
						</div>
					</div>
					<c:if
						test="${ SelectedList.indexOf(selectedItem) < (SelectedList.size()-1) }">
						<div style="border-bottom: 1px solid black; margin: 5% 5% 0 5%"></div>
					</c:if>
				</div>
			</c:forEach>
		</div>
		<!-- Total amount -->
		<form id="order-form" action="Checkout" method="get">
			<div class="summary">
				<h4>Order Summary</h4>
				<div style="text-align: right;">
					<p>Subtotal: $${order.CalculateTotal()}</p>
					<p>Tax: $${order.CalculateTax()}</p>
					<p>Total: $${order.CalculateGrandTotal()}</p>
				</div>
				<div style="text-align: center;">
					<button type="submit" class="btn btn-primary">
						<b>Checkout</b>
					</button>
				</div>
			</div>
			<input type="hidden" name="subtotal" value="${order.getTotal()}" /> <input
				type="hidden" name="tax" value="${order.getTax()}" /> <input
				type="hidden" name="grandtotal" value="${order.getGrandTotal()}" />
			<input type="hidden" name="userId" value="${param.userId}" />
		</form>
	</div>
</body>
</html>
