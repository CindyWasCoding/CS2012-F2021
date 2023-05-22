<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sushimartini - Confirmation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel='stylesheet' href='css/Confirm.css'>
</head>
<body>
	<!-- Confirmation Form -->
	<div class="container">
	<br/><br/><br/>
		<h2>Your order has been received</h2>
		<p><i>Order number: ${ order.getId() }</i></p>
		<h5>See you at <a href="https://www.google.com/maps/place/8153+Aspen+Ave,+Rancho+Cucamonga,+CA+91730/@34.1054285
		,-117.5735458,17z/data=!3m1!4b1!4m6!3m5!1s0x80c335e0ce17bae1:0x154e032409daa4e3!8m2!3d34.1054285!4d-117.5709709!
		16s%2Fg%2F11b8yjrkrv">8153 Aspen Ave, Rancho Cucamonga, CA 91730</a></h5>
		<div class="map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3303.68471727062!2d-117.57412518138938!3d34.
				10321643952689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c335e0ce17bae1%3A0x154e032409daa4e3!2s8153
				%20Aspen%20Ave%2C%20Rancho%20Cucamonga%2C%20CA%2091730!5e0!3m2!1sen!2sus!4v1681615125646!5m2!1sen!2sus"
	 			width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
	 		</iframe>
	 	</div>
	 </div>
</body>
</html>
