<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
</head>
<body
	style="background: url('C:/Users/Moni/Pictures/images/floral_pattern.jpg'); background-size: cover;">
	<center>
		<div id="header">
			<%@include file="header.jsp"%>
		</div>
		<table border="3">

			<thead>
				<tr>
					<th>Cart Id</th>
					<th>Product Id</th>
					<th>Cart Email</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Grand Total</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${allcart}" var="cart">
					<tr>
						<td>${cart.cartid}</td>
						<td>${cart.productid}</td>
						<td>${cart.cartemail}</td>
						<td>${cart.productName}</td>
						<td>${cart.price}</td>
						<td>${cart.quantity}</td>
						<td>${cart.totalprice}</td>
						<td>${cart.grandtotal}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</center>
	
		<div id="footer">
			<%@include file="footer.jsp"%>

		</div>
</body>
</html>