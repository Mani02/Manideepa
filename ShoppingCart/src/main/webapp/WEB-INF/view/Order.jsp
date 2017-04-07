<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link href="${ctx}/resources/css/style1.css" rel="stylesheet">
<link href="${ctx}/resources/css/style.css" rel="stylesheet">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order page</title>
</head>
<body
	style="background: url('resources/images/floral_pattern.jpg'); background-size: cover;">

	<div id="header">
		<%@include file="header.jsp"%>
	</div>
	<c:if test="${empty p}">
		<center>
			<h3>Product Details</h3>
		</center>


		<center>
			<table>
				<thead>
					<tr>
						<th>Cart Id</th>
						<th>Product Id</th>
						<th>Cart Email</th>
						<th>Product Image</th>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Total Price</th>
						<th>Grand Total</th>
						<th></th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${allcart}" var="cart">
						<tr>
							<td>${cart.cartid}</td>
							<td>${cart.productid}</td>
							<td>${cart.cartemail}</td>
							<td><img alt=""
								src="${ctx}/resources/images/Product/${cart.productid}.jpg"
								height="100px" width="100px" /></td>
							<td>${cart.productName}</td>
							<td>${cart.price}</td>
							<td>${cart.quantity}</td>
							<td>${cart.totalprice}</td>
							<td>${cart.grandtotal}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</c:if>
	</center>
	
	<c:if test="${not empty p}">
		<center>
			<h3>Product Details</h3>
		</center>


		<center>
			<table>
				<thead>
					<tr>
						<th>Order Id</th>
						<th>Product Id</th>
						<th>Order Email</th>
						<th>Product Image</th>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Total Price</th>
						<th>Grand Total</th>
						<th></th>
					</tr>
				</thead>

				<tbody>
					
						<tr>
							<td>${o.orderid}</td>
							<td>${o.productid}</td>
							<td>${o.emailId}</td>
							<td><img alt=""
								src="${ctx}/resources/images/Product/${o.productid}.jpg"
								height="100px" width="100px" /></td>
							<td>${o.productname}</td>
							<td>${o.productprice}</td>
							<td>${o.quantity}</td>
							<td>${o.totalprice}</td>
							<td>${o.category}</td>
						</tr>
				
				</tbody>
			</table>
	</c:if>
	</center>
	

	<center>
		<h3>Billing Details</h3>
	</center>

	<center>
		<form:form method="post" modelAttribute="u">
			<table>
				<tr>
					<td><font size="4">First Name</font></td>
					<td><input type="text" name="firstname" size="35"
						value="${u.firstname}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Last Name</font></td>
					<td><input type="text" name="lastname" size="35"
						value="${u.lastname}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Contact No.</font></td>
					<td><input type="text" name="contactNo" size="35"
						value="${u.contactNo}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Address</font></td>
					<td><input type="text" name="address" size="35"
						value="${u.address}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">City</font></td>
					<td><input type="text" name="city" size="35" value="${u.city}"
						disabled></td>
				</tr>
				<tr>
					<td><font size="4">Pin Code</font></td>
					<td><input type="text" name="pincode" size="35"
						value="${u.pincode}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Landmark</font></td>
					<td><input type="text" name="landmark" size="35"
						value="${u.landmark}" disabled></td>
				</tr>
			</table>
		</form:form>
	</center>

	<center>
		<h3>Shipping Details</h3>
	</center>

	<center>
		<form:form method="post" modelAttribute="uu">
			<table>
				<tr>
					<td><font size="4">First Name</font></td>
					<td><input type="text" name="firstName" size="35"
						value="${uu.firstName}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Last Name</font></td>
					<td><input type="text" name="lastName" size="35"
						value="${uu.lastName}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Email Id</font></td>
					<td><input type="text" name="email" size="35"
						value="${uu.email}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Contact No.</font></td>
					<td><input type="text" name="contactno" size="35"
						value="${uu.contactno}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Address</font></td>
					<td><input type="text" name="address" size="35"
						value="${uu.address}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">City</font></td>
					<td><input type="text" name="city" size="35" value="${uu.city}"
						disabled></td>
				</tr>
				<tr>
					<td><font size="4">Pin Code</font></td>
					<td><input type="text" name="pincode" size="35"
						value="${uu.pincode}" disabled></td>
				</tr>
				<tr>
					<td><font size="4">Landmark</font></td>
					<td><input type="text" name="landmark" size="35"
						value="${uu.landmark}" disabled></td>
				</tr>

			</table>

		</form:form>
	</center>

	<a href="${ctx}/thankyou"><button class="button1">Order
			Confirm</button></a>

	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>